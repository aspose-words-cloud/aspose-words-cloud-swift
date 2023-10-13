/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="ParagraphLinkCollectionResponse.swift">
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

// The REST response with a collection of paragraphs.
// This response is returned by the Service when handling "GET https://api.aspose.cloud/v4.0/words/Test.doc/paragraphs" REST API requests.
@available(macOS 10.12, iOS 10.3, watchOS 3.3, tvOS 12.0, *)
public class ParagraphLinkCollectionResponse : WordsResponse {
    // Field of paragraphs. The REST response with a collection of paragraphs. This response is returned by the Service when handling "GET https://api.aspose.cloud/v4.0/words/Test.doc/paragraphs" REST API requests.
    private var _paragraphs : ParagraphLinkCollection? = nil;

    public var paragraphs : ParagraphLinkCollection? {
        get {
            return self._paragraphs;
        }
        set {
            self._paragraphs = newValue;
        }
    }

    private enum CodingKeys: String, CodingKey {
        case paragraphs = "Paragraphs";
        case invalidCodingKey;
    }

    public override init() {
        super.init();
    }

    public required init(from json: [String: Any]) throws {
        try super.init(from: json);
        if let raw_paragraphs = json["Paragraphs"] as? [String: Any] {
            self.paragraphs = try ObjectSerializer.deserialize(type: ParagraphLinkCollection.self, from: raw_paragraphs);
        }

    }

    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder);
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.paragraphs = try container.decodeIfPresent(ParagraphLinkCollection.self, forKey: .paragraphs);
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder);
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.paragraphs != nil) {
            try container.encode(self.paragraphs, forKey: .paragraphs);
        }
    }

    public override func collectFilesContent(_ resultFilesContent : inout [FileReference]) {
    }

    public override func validate() throws {
        super.validate();
    }

    // Sets paragraphs. Gets or sets the collection of paragraphs.
    public func setParagraphs(paragraphs : ParagraphLinkCollection?) -> ParagraphLinkCollectionResponse {
        self.paragraphs = paragraphs;
        return self;
    }

    // Gets paragraphs. Gets or sets the collection of paragraphs.
    public func getParagraphs() -> ParagraphLinkCollection? {
        return self.paragraphs;
    }
}
