/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="ApiRequest.swift">
 *   Copyright (c) 2020 Aspose.Words for Cloud
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

// Common REST API request data
public struct ApiRequest {
    private let url : URL;
    private let method : String;
    private let body : Data?;
    private let headers : Dictionary<String, String>;

    public init(url : URL, method : String) {
        self.url = url;
        self.method = method;
        self.body = nil;
        self.headers = Dictionary<String, String>();
    }

    public func getURL() -> URL {
        return self.url;
    }

    public func getMethod() -> String {
        return self.method;
    }

    public func setBody(body : Data?, contentType : String) {
        self.body = body;
        self.setContentType(value: contentType);
    }

    public func setBody(formParams : [RequestFormParam]) {
        if (formParams.count == 0)
        {
            self.body = nil;
        }
        else if (formParams.count == 1) {
            let formParam = formParams[0];
            self.body = formParam.getBody();
            self.setContentType(value: formParam.getContentType());
        }
        else {
            // Generate body for multipart requests
            var needsClrf = false;
            var formBody = Data();
            let boundaryPrefix = "Somthing";
            for formParam in formParams {
                if (needsClrf) {
                    formBody.append("\r\n".data(using: .utf8)!);
                }
                needsClrf = true;

                formBody.append("--\(boundaryPrefix)\r\nContent-Disposition: form-data; name=\"\(formParam.getName())\"\r\n\r\n".data(using: .utf8)!);
                formBody.append(formParam.getBody());
            }
            formBody.append("\r\n--\(boundaryPrefix)--\r\n".data(using: .utf8)!);

            self.body = formBody;
            self.setContentType(value: "multipart/form-data; boundary=\(boundaryPrefix)");
        }
    }

    public func getBody() -> Data? {
        return self.body;
    }

    public func addHeader(key : String, value : String) {
        self.headers[key] = value;
    }

    public func setContentType(value : String) {
        self.headers["Content-Type"] = value;
    }

    public func getHeaders() -> Dictionary<String, String> {
        return self.headers;
    }
}
