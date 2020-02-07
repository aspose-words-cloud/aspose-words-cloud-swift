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
    
    public static func serializeToString<T : Encodable>(value : T) throws -> String {
        if (value is WordsApiModel) {
            return String(decoding: try customEncoder.encode(value), as: UTF8.self);
        }
        if (value is URL) {
            return try String(contentsOf: value as! URL);
        }
        else {
            return String(describing: value);
        }
    }
    
    public static func serializeBody<T : Encodable>(value: T) throws -> Data {
        if (value is String) {
            let result = "\"\(value)\"".data(using: .utf8);
            if (result == nil) {
                throw WordsApiError.invalidTypeSerialization(typeName: String(describing: type(of: value)));
            }
            return result!;
        }
        else {
            return try serialize(value: value);
        }
    }
    
    public static func serialize<T : Encodable>(value: T) throws -> Data {
        if (value is WordsApiModel) {
            return try customEncoder.encode(value);
        }
        if (value is URL) {
            return try Data(contentsOf: value as! URL);
        }
        else {
            let result = String(describing: value).data(using: .utf8);
            if (result == nil) {
                throw WordsApiError.invalidTypeSerialization(typeName: String(describing: type(of: value)));
            }
            return result!;
        }
    }
    
    public static func deserialize<T>(type: T.Type, from data: Data) throws -> T where T : Decodable {
        return try customDecoder.decode(type, from: data);
    }
    
    private static let customIso8601: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss'Z'";
        formatter.calendar = Calendar(identifier: .iso8601);
        formatter.timeZone = TimeZone(secondsFromGMT: 0);
        formatter.locale = Locale(identifier: "en_US_POSIX");
        return formatter;
    }()
    
    private static let customEncoder: JSONEncoder = {
        let encoder = JSONEncoder();
        encoder.dateEncodingStrategy = .formatted(customIso8601);
        encoder.keyEncodingStrategy = .custom { keys in
            let oldKey = keys.last!.stringValue;
            let newKey = oldKey.prefix(1).uppercased() + oldKey.dropFirst();
            return CustomKey(stringValue: newKey)!;
        };
        return encoder;
    }();
    
    private static let customDecoder: JSONDecoder = {
        let decoder = JSONDecoder();
        decoder.dateDecodingStrategy = .formatted(customIso8601);
        decoder.keyDecodingStrategy = .custom { keys in
            let oldKey = keys.last!.stringValue;
            let newKey = oldKey.prefix(1).lowercased() + oldKey.dropFirst();
            return CustomKey(stringValue: newKey)!;
        };
        return decoder;
    }();
}
