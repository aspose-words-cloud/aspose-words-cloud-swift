import Foundation

public class WordsResponse : Decodable {
    private var requestId : String;
    
    public func getRequestId() -> String {
        return self.requestId;
    }
}
