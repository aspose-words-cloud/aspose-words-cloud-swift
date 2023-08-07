/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="ParagraphListFormatResponse.swift">
 *   Copyright (c) 2023 Aspose.Words for Cloud
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

// The REST response with a list format for a paragraph.
@available(macOS 10.12, iOS 10.3, watchOS 3.3, tvOS 12.0, *)
public class ParagraphListFormatResponse : WordsResponse {
    // Field of listFormat. The REST response with a list format for a paragraph.
    private var _listFormat : ListFormat? = nil;

    public var listFormat : ListFormat? {
        get {
            return self._listFormat;
        }
        set {
            self._listFormat = newValue;
        }
    }

    private enum CodingKeys: String, CodingKey {
        case listFormat = "ListFormat";
        case invalidCodingKey;
    }

    public override init() {
        super.init();
    }

    public required init(from json: [String: Any]) throws {
        try super.init(from: json);
        if let raw_listFormat = json["ListFormat"] as? [String: Any] {
            self.listFormat = try ObjectSerializer.deserialize(type: ListFormat.self, from: raw_listFormat);
        }

    }

    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder);
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.listFormat = try container.decodeIfPresent(ListFormat.self, forKey: .listFormat);
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder);
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.listFormat != nil) {
            try container.encode(self.listFormat, forKey: .listFormat);
        }
    }

    public override func collectFilesContent(_ resultFilesContent : inout [FileReference]) {
    }

    // Sets listFormat. Gets or sets the list format for a paragraph.
    public func setListFormat(listFormat : ListFormat?) -> ParagraphListFormatResponse {
        self.listFormat = listFormat;
        return self;
    }

    // Gets listFormat. Gets or sets the list format for a paragraph.
    public func getListFormat() -> ListFormat? {
        return self.listFormat;
    }
}
