/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="WordsAPI.swift">
 *   Copyright (c) 2019 Aspose.Words for Cloud
 * </copyright>
 * <summary>
 *   Permission is hereby granted, free of charge, to any person obtaining a copy
 *  of this software and associated documentation files (the "Software"), to deal
 *  in the Software without restriction, including without limitation the rights
 *  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 *  copies of the Software, and to permit persons to whom the Software is
 *  furnished to do so, subject to the following conditions:
 *
 *  The above copyright notice and this permission notice shall be included in all
 *  copies or substantial portions of the Software.
 *
 *  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 *  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 *  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 *  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 *  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 *  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 *  SOFTWARE.
 * </summary>
 * --------------------------------------------------------------------------------
 */

import Foundation

public class ApiInvoker {
    private var configuration : Configuration;
    private var accessToken : String?;
    
    public init(configuration : Configuration) {
        self.configuration = configuration;
    }
    
    private class InvokeResponse {
        public var data : Data?;
        public var errorCode : Int;
        public var errorMessage : String?;
        
        public init(errorCode : Int) {
            self.errorCode = errorCode;
        }
    }
    
    private struct AccessTokenResult : Decodable {
        public var access_token : String?;
    }
    
    public func invoke(
        url: URL,
        method: String,
        body: Data?,
        headers: Dictionary<String, String>?,
        formParams: Dictionary<String, Data>?,
        contentType: String = "application/json"
    ) throws -> Data {
        var request = URLRequest(url: url);
        request.httpMethod = method;

        if (headers != nil) {
            for (key, value) in headers! {
                request.setValue(value, forHTTPHeaderField: key);
            }
        }
        
        if (body != nil) {
            request.httpBody = body;
            request.setValue(contentType, forHTTPHeaderField: "Content-Type");
        }
        else if (formParams != nil && formParams!.count > 0) {
            if (formParams?.count == 1) {
                request.httpBody = formParams!.first!.value;
            }
            else {
                var needsClrf = false;
                var formBody = Data();
                let boundaryPrefix = "Somthing";
                for (key, value) in formParams! {
                    if (needsClrf) {
                        formBody.append("\r\n".data(using: .utf8)!);
                    }
                    needsClrf = true;
                
                    formBody.append("--\(boundaryPrefix)\r\nContent-Disposition: form-data; name=\"\(key)\"\r\n\r\n".data(using: .utf8)!);
                    formBody.append(value);
                }
                formBody.append("\r\n--\(boundaryPrefix)--\r\n".data(using: .utf8)!);

                request.httpBody = formBody;
                request.setValue("multipart/form-data; boundary=\(boundaryPrefix)", forHTTPHeaderField: "Content-Type");
            }
        }
        
        if (request.httpBody != nil) {
            request.setValue(String(request.httpBody!.count), forHTTPHeaderField: "Content-Length");
        }
        
        if (accessToken == nil) {
            try invokeAuthTokenSync();
        }
        
        var resp = invokeRequestSync(urlRequest: &request, internalCall: false);
        if (resp.errorCode == 400) {
            try invokeAuthTokenSync();
            resp = invokeRequestSync(urlRequest: &request, internalCall: false);
        }
        
        if (resp.errorCode == 200) {
            return resp.data!;
        }
        else {
            throw WordsApiError.requestError(errorCode: resp.errorCode, message: resp.errorMessage);
        }
    }
    
    private func invokeRequestSync(urlRequest : inout URLRequest, internalCall : Bool) -> InvokeResponse {
        if (!internalCall && accessToken != nil) {
            urlRequest.setValue(accessToken!, forHTTPHeaderField: "Authorization");
        }
        
        if (configuration.isDebugMode()) {
            print("REQUEST BEGIN");
            if (urlRequest.url?.absoluteString != nil) {
                print("\tURL: \(String(describing: urlRequest.url!.absoluteString))");
            }
            if (urlRequest.allHTTPHeaderFields != nil) {
                print("\tHEADERS: \(String(describing: urlRequest.allHTTPHeaderFields!))");
            }
            if (urlRequest.httpBody != nil) {
                let bodyStr = String(data: urlRequest.httpBody!, encoding: .utf8);
                if (bodyStr != nil) {
                    print("\tBODY: \(bodyStr!)");
                }
                else {
                    let chars = urlRequest.httpBody!.map { Character(UnicodeScalar($0)) };
                    print("\tBODY: \(String(Array(chars)))");
                }
            }
            print("REQUEST END");
        }
        let semaphore = DispatchSemaphore(value: 0);
        let invokeResponse = InvokeResponse(errorCode: 408);
        let result = URLSession.shared.dataTask(with: urlRequest, completionHandler: { d, r, e in
            let rawResponse = r as? HTTPURLResponse;
            invokeResponse.data = d;
            if (rawResponse != nil) {
                invokeResponse.errorCode = rawResponse!.statusCode;
                invokeResponse.errorMessage = rawResponse!.description;
            }
            else {
                invokeResponse.errorCode = 400;
            }
            semaphore.signal();
        });
        result.resume();
        _ = semaphore.wait();
        
        if (configuration.isDebugMode()) {
            print("RESPONSE BEGIN");
            print("\tSTATUS CODE: \(invokeResponse.errorCode)");
            if (invokeResponse.errorMessage != nil) {
                print("\tMESSAGE: \(invokeResponse.errorMessage!)");
            }
            if (invokeResponse.data != nil) {
                let bodyStr = String(data: invokeResponse.data!, encoding: .utf8);
                if (bodyStr != nil) {
                    print("\tBODY: \(bodyStr!)");
                }
                else {
                    let chars = invokeResponse.data!.map { Character(UnicodeScalar($0)) };
                    print("\tBODY: \(String(Array(chars)))");
                }
            }
            print("RESPONSE END");
        }
        return invokeResponse;
    }
    
    private func invokeAuthTokenSync() throws {
        let urlPath = URL(string: self.configuration.getBaseUrl())!.appendingPathComponent("connect/token");
        var request = URLRequest(url: urlPath);
        request.httpMethod = "POST";
        request.setValue("application/x-www-form-urlencoded", forHTTPHeaderField: "Content-Type");
        request.httpBody = "grant_type=client_credentials&client_id=\(configuration.getAppSid())&client_secret=\(configuration.getAppKey())".data(using: .utf8);
        let response = invokeRequestSync(urlRequest: &request, internalCall: true);
        if (response.errorCode == 200) {
            let result = try ObjectSerializer.deserialize(type: AccessTokenResult.self, from: response.data!);
            if (result.access_token != nil) {
                accessToken = "Bearer " + result.access_token!;
            }
        }
    }
}
