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
    
    public static func serialize<T>(value: T) throws -> Data where T : Encodable {
        let jsonEncoder = JSONEncoder();
        return try jsonEncoder.encode(value);
    }
    public static func deserialize<T>(type: T.Type, from data: Data) throws -> T where T : Decodable {
        let jsonDecoder = JSONDecoder();
        jsonDecoder.keyDecodingStrategy = .custom { keys in
            let oldKey = keys.last!.stringValue;
            let newKey = oldKey.prefix(1).lowercased() + oldKey.dropFirst();
            return CustomKey(stringValue: newKey)!;
        }
        
        return try jsonDecoder.decode(type, from: data);
    }
}
