/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="ParagraphFormatResponse.swift">
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

// The REST response with the formatting properties of a paragraph.
@available(macOS 10.12, iOS 10.3, watchOS 3.3, tvOS 12.0, *)
public class ParagraphFormatResponse : WordsResponse {
    // Field of paragraphFormat. The REST response with the formatting properties of a paragraph.
    private var _paragraphFormat : ParagraphFormat? = nil;

    public var paragraphFormat : ParagraphFormat? {
        get {
            return self._paragraphFormat;
        }
        set {
            self._paragraphFormat = newValue;
        }
    }

    private enum CodingKeys: String, CodingKey {
        case paragraphFormat = "ParagraphFormat";
        case invalidCodingKey;
    }

    public override init() {
        super.init();
    }

    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder);
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.paragraphFormat = try container.decodeIfPresent(ParagraphFormat.self, forKey: .paragraphFormat);
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder);
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.paragraphFormat != nil) {
            try container.encode(self.paragraphFormat, forKey: .paragraphFormat);
        }
    }

    public override func collectFilesContent(_ resultFilesContent : inout [FileReference]) {
    }

    // Sets paragraphFormat. Gets or sets the formatting properties of a paragraph.
    public func setParagraphFormat(paragraphFormat : ParagraphFormat?) -> ParagraphFormatResponse {
        self.paragraphFormat = paragraphFormat;
        return self;
    }

    // Gets paragraphFormat. Gets or sets the formatting properties of a paragraph.
    public func getParagraphFormat() -> ParagraphFormat? {
        return self.paragraphFormat;
    }
}
