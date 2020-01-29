import Foundation

public class ApiInvoker {
    private var configuration : Configuration;
    private var accessToken : String?;
    
    public init(configuration : Configuration) {
        self.configuration = configuration;
    }
    
    private class InvokeResponse {
        public var data : Data?;
        public var error : Error?;
        public var response : HTTPURLResponse?;
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
    ) -> Data? {
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
            invokeAuthTokenSync();
        }

        
        var resp = invokeRequestSync(urlRequest: &request, internalCall: false);
        if (resp.response?.statusCode == 400) {
            invokeAuthTokenSync();
            resp = invokeRequestSync(urlRequest: &request, internalCall: false);
        }
        
        if (resp.response?.statusCode == 200) {
            print("HTTP OK: \(url.absoluteString) -> \(String(decoding: resp.data!, as: UTF8.self))");
            return resp.data;
        }
        else {
            // TODO: throw error
            print("HTTP Error: \(url.absoluteString) -> \(resp.response!.statusCode)");
            return nil;
        }
    }
    
    private func invokeRequestSync(urlRequest : inout URLRequest, internalCall : Bool) -> InvokeResponse {
        if (!internalCall && accessToken != nil) {
            urlRequest.setValue(accessToken!, forHTTPHeaderField: "Authorization");
        }
        
        let semaphore = DispatchSemaphore(value: 0);
        let invokeResponse = InvokeResponse();
        let result = URLSession.shared.dataTask(with: urlRequest, completionHandler: { d, r, e in
            invokeResponse.data = d;
            invokeResponse.error = e;
            invokeResponse.response = r as? HTTPURLResponse;
            semaphore.signal();
        });
        result.resume();
        _ = semaphore.wait();
        return invokeResponse;
    }
    
    private func invokeAuthTokenSync() {
        let urlPath = URL(string: self.configuration.getBaseUrl())!.appendingPathComponent("connect/token");
        var request = URLRequest(url: urlPath);
        request.httpMethod = "POST";
        request.setValue("application/x-www-form-urlencoded", forHTTPHeaderField: "Content-Type");
        request.httpBody = "grant_type=client_credentials&client_id=\(configuration.getAppSid())&client_secret=\(configuration.getAppKey())".data(using: .utf8);
        let response = invokeRequestSync(urlRequest: &request, internalCall: true);
        if (response.response?.statusCode == 200) {
            let result = ObjectSerializer.decode(AccessTokenResult.self, from: response.data!);
            if (result != nil && result?.access_token != nil) {
                accessToken = "Bearer " + result!.access_token!;
            }
        }
    }
}
