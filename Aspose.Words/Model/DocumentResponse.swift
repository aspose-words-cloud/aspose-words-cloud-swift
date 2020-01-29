import Foundation

public class DocumentResponse : WordsResponse {
    private var document : Document?;
    
    public func getDocument() -> Document? {
        return self.document;
    }
}
