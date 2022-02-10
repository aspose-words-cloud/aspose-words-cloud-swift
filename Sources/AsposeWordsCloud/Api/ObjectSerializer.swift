/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="ObjectSerializer.swift">
 *   Copyright (c) 2022 Aspose.Words for Cloud
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
@available(macOS 10.12, iOS 10.3, watchOS 3.3, tvOS 12.0, *)
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

    // Parse files collection
    public static func parseFilesCollection(part: ResponseFormParam) throws -> [String : Data] {
        return try parseFilesCollection(data: part.getBody(), headers: part.getHeaders());
    }

    // Parse files collection
    public static func parseFilesCollection(data: Data, headers: [String : String]) throws -> [String : Data] {
        var result = [String : Data]();
        let contentType = headers["Content-Type"];
        if (contentType?.starts(with: "multipart/mixed") == true) {
            let parts = try parseMultipart(data: data);
            for part in parts {
                var filename = "";
                let disposition = part.getHeaders()["Content-Disposition"];
                if (disposition == nil) {
                    continue;
                }

                let dispparts = disposition!.split(separator: ";");
                for disppart in dispparts {
                    let dispparttrim = disppart.trimmingCharacters(in: .whitespaces);
                    if (dispparttrim.starts(with: "filename=")) {
                        let subparts = dispparttrim.split(separator: "=");
                        if (subparts.count == 2) {
                            filename = subparts[1].trimmingCharacters(in: CharacterSet(charactersIn: " \""));
                        }
                    }
                }

                result[filename] = part.getBody();
            }
        }
        else {
            result[""] = data;
        }

        return result;
    }

    // Deserialize an multipart response
    public static func parseMultipart(data: Data) throws -> [ResponseFormParam] {
        var result = [ResponseFormParam]();
        if (!data.starts(with: "--".data(using: .utf8)!)) {
           throw WordsApiError.invalidMultipartResponse(message: "Boundary not found");
        }

        let newLineData = "\r\n".data(using: .utf8)!;
        let boundaryEndIndex = data.range(of: newLineData);
        if (boundaryEndIndex == nil || boundaryEndIndex!.isEmpty) {
            throw WordsApiError.invalidMultipartResponse(message: "Boundary not found");
        }

        let boundary = data.subdata(in: data.startIndex..<boundaryEndIndex!.lowerBound);
        let parts = ObjectSerializer.splitData(data: data, separator: boundary);
        let dispositionSeparator = "\r\n\r\n".data(using: .utf8)!;

        for part in parts {
            let partDataBounds = part.range(of: dispositionSeparator);
            if (partDataBounds == nil || partDataBounds!.isEmpty) {
                throw WordsApiError.invalidMultipartResponse(message: "Part content not found");
            }

            let headData = part.subdata(in: part.startIndex..<partDataBounds!.lowerBound);
            let headContent = String(decoding: headData, as: UTF8.self);
            var headers = [String : String]();

            for headerRawData in headContent.components(separatedBy: "\r\n") {
                let headerData = headerRawData.trimmingCharacters(in: .whitespacesAndNewlines);
                if (!headerData.isEmpty) {
                    let headerParts = headerData.split(separator: ":");
                    if (headerParts.count == 2) {
                        let headerKey = headerParts[0].trimmingCharacters(in: .whitespaces);
                        let headerValue = headerParts[1].trimmingCharacters(in: .whitespaces);
                        headers[headerKey] = headerValue;
                    }
                }
            }

            let bodyData = part.subdata(in: partDataBounds!.upperBound..<part.endIndex);
            result.append(ResponseFormParam(body: bodyData, headers: headers));
        }

        return result;
    }

    // Get multipart by name
    public static func getMultipartByName(multipart: [ResponseFormParam], name: String) throws -> ResponseFormParam {
        for part in multipart {
            let disposition = part.getHeaders()["Content-Disposition"];
            if (disposition == nil) {
                continue;
            }

            var partName: String? = nil;
            for componentRawData in disposition!.components(separatedBy: ";") {
                let componentData = componentRawData.trimmingCharacters(in: .whitespacesAndNewlines);
                if (!componentData.isEmpty) {
                    let componentDataParts = componentData.split(separator: "=");
                    if (componentDataParts.count == 2) {
                        let componentKey = componentDataParts[0].trimmingCharacters(in: .whitespaces);
                        let componentValue = componentDataParts[1].trimmingCharacters(in: CharacterSet(charactersIn: " \""));
                        if (componentKey == "name") {
                            partName = componentValue;
                            break;
                        }
                    }
                }
            }

            if (partName != nil && partName == name)
            {
               return part;
            }
        }

        throw WordsApiError.invalidMultipartResponse(message: "Part " + name + " not found in multipart data.");
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

    // Create an instance of T, from batch part data
    public static func deserializeBatchPart(request: WordsApiRequest, partData: ResponseFormParam) throws -> Any? {
        let separator = "\r\n\r\n".data(using: .utf8)!;
        let data = partData.getBody();
        let partDataBounds = data.range(of: separator);
        if (partDataBounds == nil || partDataBounds!.isEmpty) {
            throw WordsApiError.invalidMultipartResponse(message: "Body content not found");
        }

        let headData = data.subdata(in: data.startIndex..<partDataBounds!.lowerBound);
        let headContent = String(decoding: headData, as: UTF8.self);
        let headParts = headContent.components(separatedBy: "\r\n");
        if (headParts.count == 0) {
            throw WordsApiError.invalidMultipartResponse(message: "Head content not found");
        }

        let codeContent = headParts[0].split(separator: " ", maxSplits: 1, omittingEmptySubsequences: true);
        if (codeContent.count != 2) {
            throw WordsApiError.invalidMultipartResponse(message: "Head content not found");
        }

        let codeStatus = Int(codeContent[0]);
        if (codeStatus == nil) {
            throw WordsApiError.invalidMultipartResponse(message: "Failed to parse head content");
        }

        var headers = [String : String]();
        for headerLine in headParts {
            if (!headerLine.contains(":")) {
                continue;
            }

            let headerParts = headerLine.components(separatedBy: ":");
            if (headerParts.count == 2) {
                headers[headerParts[0].trimmingCharacters(in: .whitespacesAndNewlines)] = headerParts[1].trimmingCharacters(in: .whitespacesAndNewlines);
            }
        }

        let bodyData = data.subdata(in: partDataBounds!.upperBound..<data.endIndex);
        if (codeStatus != 200) {
            let errorMessage = String(decoding: bodyData, as: UTF8.self);
            return WordsApiError.requestError(errorCode: codeStatus!, message: errorMessage);
        }

        return try request.deserializeResponse(data: bodyData, headers: headers);
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
        return encoder;
    }();

    // Custom JSON decoder
    private static let customDecoder: JSONDecoder = {
        let decoder = JSONDecoder();
        decoder.dateDecodingStrategy = .formatted(customIso8601);
        return decoder;
    }();
}
