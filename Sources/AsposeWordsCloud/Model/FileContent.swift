/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="FileContent.swift">
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

// File content special model.
@available(macOS 10.12, iOS 10.3, watchOS 3.3, tvOS 12.0, *)
public class FileContent : Codable, WordsApiModel {
    // File id for multipart request.
    private var _id : String;
    public var id : String {
        get {
            return self._id;
        }
    }

    // Filename for multipart request.
    private var _filename : String;
    public var filename : String {
        get {
            return self._filename;
        }
    }

    // File content for multipart request.
    private var _content : InputStream;
    public var content : InputStream {
        get {
            return self._content;
        }
    }

    private enum CodingKeys: String, CodingKey {
        case id = "Id";
        case filename = "Filename";
        case invalidCodingKey;
    }

    public init(filename : String, content : InputStream) {
        self._id = UUID().uuidString;
        self._filename = filename;
        self._content = content;
    }

    public required init(from decoder: Decoder) throws {
        throw WordsApiError.invalidTypeSerialization(typeName: "FileContent");
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.id != nil) {
            try container.encode(self.id, forKey: .id);
        }
        if (self.filename != nil) {
            try container.encode(self.filename, forKey: .filename);
        }
    }

    public func collectFilesContent(resultFilesContent : [FileContent]) {
        resultFilesContent.append(self);
    }
}
