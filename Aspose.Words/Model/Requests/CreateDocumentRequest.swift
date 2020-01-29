import Foundation

public class CreateDocumentRequest : Decodable {
    private var storage : String?;
    private var fileName : String?;
    private var folder : String?;
    
    public init(storage : String? = nil, fileName : String? = nil, folder : String? = nil) {
        self.storage = storage;
        self.fileName = fileName;
        self.folder = folder;
    }
    
    public func getStorage() -> String? {
        return self.storage;
    }
    
    public func getFileName() -> String? {
        return self.fileName;
    }
    
    public func getFolder() -> String? {
        return self.folder;
    }
}
