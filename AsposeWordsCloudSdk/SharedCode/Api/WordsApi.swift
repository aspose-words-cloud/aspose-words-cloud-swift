import Foundation

public class WordsApi {
    private var configuration : Configuration;
    private var apiInvoker : ApiInvoker;
    
    public init(configuration : Configuration) {
        self.configuration = configuration;
        self.apiInvoker = ApiInvoker(configuration: configuration);
    }
    
    public func createDocument(request : CreateDocumentRequest) throws -> DocumentResponse {
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent("words/create");
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: request.getStorage()));
        }
        
        if (request.getFileName() != nil) {
            queryItems.append(URLQueryItem(name: "fileName", value: request.getFileName()));
        }
        
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: request.getFolder()));
        }
        
        urlBuilder.queryItems = queryItems;
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: nil,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: DocumentResponse.self, from: response);
    }
}
