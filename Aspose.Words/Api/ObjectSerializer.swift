import Foundation

class ObjectSerializer {
    private init() { }
    
    private struct CustomKey : CodingKey {
        var stringValue: String;
        var intValue: Int?;
        
        init?(stringValue: String) {
            self.stringValue = stringValue;
            self.intValue = nil;
        }
        
        init?(intValue: Int) {
            self.stringValue = String(intValue);
            self.intValue = intValue;
        }
    }
    
    public static func decode<T>(_ type: T.Type, from data: Data) -> T? where T : Decodable {
        let jsonDecoder = JSONDecoder();
        jsonDecoder.keyDecodingStrategy = .custom { keys in
            let oldKey = keys.last!.stringValue;
            let newKey = oldKey.prefix(1).lowercased() + oldKey.dropFirst();
            return CustomKey(stringValue: newKey)!;
        }
        
        do {
            return try jsonDecoder.decode(type, from: data);
        }
        catch {
            return nil;
        }
    }
}
