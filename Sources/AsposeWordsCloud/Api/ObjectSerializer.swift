/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="ObjectSerializer.swift">
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

// Helper class for serialize or deserialize swift objects to string or binary format.
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

    // Serialize given object to string
    public static func serializeToString<T : Encodable>(value : T) throws -> String {
        if (value is WordsApiModel) {
            // Serialize to JSON when ApiModel object
            return String(decoding: try customEncoder.encode(value), as: UTF8.self);
        }
        if (value is URL) {
            // Read file from URL as String (For local and remote files)
            return try String(contentsOf: value as! URL);
        }
        else {
            // Stringify unknown type
            return String(describing: value);
        }
    }

    // Serialize given object as binary data for using as request body
    public static func serializeBody<T : Encodable>(value: T) throws -> Data {
        if (value is String) {
            // Make JSON string when String object.
            let result = "\"\(value)\"".data(using: .utf8);
            if (result == nil) {
                throw WordsApiError.invalidTypeSerialization(typeName: String(describing: type(of: value)));
            }
            return result!;
        }
        else {
            // For other types use default binary serializer
            return try serialize(value: value);
        }
    }

    // Serialize file stream as binary data
    public static func serializeFile(value: InputStream) throws -> Data {
        var result = Data();
        value.open();
        defer {
            value.close();
        }

        let bufferSize = 1024;
        let buffer = UnsafeMutablePointer<UInt8>.allocate(capacity: bufferSize);
        defer {
            buffer.deallocate();
        }
        while (value.hasBytesAvailable) {
            let read = value.read(buffer, maxLength: bufferSize);
            if (read < 0) {
                //Stream error occured
                throw value.streamError!;
            } else if (read == 0) {
                //EOF
                break;
            }
            result.append(buffer, count: read);
        }
        return result;
    }

    // Serialize given object as binary data
    public static func serialize<T : Encodable>(value: T) throws -> Data {
        if (value is WordsApiModel) {
            // Serialize to JSON when ApiModel object
            return try customEncoder.encode(value);
        }
        if (value is URL) {
            // Read file from URL as bytes (For local and remote files)
            return try Data(contentsOf: value as! URL);
        }
        else {
             // Stringify unknown type and convert to binary
            let result = String(describing: value).data(using: .utf8);
            if (result == nil) {
                throw WordsApiError.invalidTypeSerialization(typeName: String(describing: type(of: value)));
            }
            return result!;
        }
    }

    // Create an instance of T, from JSON data
    public static func deserialize<T>(type: T.Type, from data: Data) throws -> T where T : Decodable {
        return try customDecoder.decode(type, from: data);
    }

    // Deserialize an multipart response
    public static func parseMultipart(data: Data) throws -> [ResponseFormParam] {
        var result = [ResponseFormParam]();
        if (!data.starts(with: "--".data(using: .utf8)!)) {
           throw WordsApiError.invalidMultipartResponse(message: "Boundary not found");
        }

        let boundaryEndIndex = data.firstIndex(of: UInt8("\r")!);
        if (boundaryEndIndex == nil) {
            throw WordsApiError.invalidMultipartResponse(message: "Boundary not found");
        }

        let boundary = data.subdata(in: 0..<boundaryEndIndex!);
        let parts = ObjectSerializer.splitData(data: data, separator: boundary);
        let dispositionSeparator = "\r\n\r\n".data(using: .utf8)!;

        for part in parts {
            let partDataBounds = part.range(of: dispositionSeparator);
            if (partDataBounds != nil && partDataBounds!.isEmpty == false) {
                let contentDisposition = String(decoding: part[0..<partDataBounds!.lowerBound], as: UTF8.self);
                let headers = [String : String]();

                let partBody = part[partDataBounds!.upperBound...];
                result.append(ResponseFormParam(body: partBody, headers: headers));
            }
            else {
                throw WordsApiError.invalidMultipartResponse(message: "Part content not found");
            }
        }

        return result;
    }

    // Split data into parts
    public static func splitData(data: Data, separator: Data) -> [Data] {
        let endIndex = separator.count;
        var chunks: [Data] = [];
        var pos = 0;
        while let r = data[pos...].range(of: separator) {
            if (r.lowerBound > pos) {
                chunks.append(data[pos..<r.lowerBound]);
            }

            pos = r.upperBound;
        }

        if (pos < endIndex) {
            chunks.append(data[pos..<endIndex]);
        }

        return chunks;
    }


    // Configuration for DateTime serialization/deserialization
    public static let customIso8601: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss'Z'";
        formatter.calendar = Calendar(identifier: .iso8601);
        formatter.timeZone = TimeZone(secondsFromGMT: 0);
        formatter.locale = Locale(identifier: "en_US_POSIX");
        return formatter;
    }()

    // Custom JSON encoder
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

    // Custom JSON decoder
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
