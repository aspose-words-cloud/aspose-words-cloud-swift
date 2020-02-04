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
        formParams: Dictionary<String, Any>?,
        contentType: String = "application/json"
    ) throws -> Data {
        var request = URLRequest(url: url);
        request.httpMethod = method;
        request.setValue(contentType, forHTTPHeaderField: "Content-Type");
        
        if (headers != nil) {
            for (key, value) in headers! {
                request.setValue(value, forHTTPHeaderField: key);
            }
        }
        
        if (body != nil) {
            request.httpBody = body;
        }
        else if (formParams != nil) {
            // TODO: Not implemented;
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
                print("\tBODY: \(String(data: urlRequest.httpBody!, encoding: .utf8)!)");
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
                print("\tBODY: \(String(data: invokeResponse.data!, encoding: .utf8)!)");
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
