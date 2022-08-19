/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="HyperlinkResponse.swift">
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

// The REST response with a hyperlink.
@available(macOS 10.12, iOS 10.3, watchOS 3.3, tvOS 12.0, *)
public class HyperlinkResponse : WordsResponse {
    // Field of hyperlink. The REST response with a hyperlink.
    private var _hyperlink : Hyperlink? = nil;

    public var hyperlink : Hyperlink? {
        get {
            return self._hyperlink;
        }
        set {
            self._hyperlink = newValue;
        }
    }

    private enum CodingKeys: String, CodingKey {
        case hyperlink = "Hyperlink";
        case invalidCodingKey;
    }

    public override init() {
        super.init();
    }

    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder);
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.hyperlink = try container.decodeIfPresent(Hyperlink.self, forKey: .hyperlink);
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder);
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.hyperlink != nil) {
            try container.encode(self.hyperlink, forKey: .hyperlink);
        }
    }

    public override func collectFilesContent(_ resultFilesContent : inout [FileContent]) {
        super.collectFilesContent(resultFilesContent);
        if (self.hyperlink != nil)
        {
            self.hyperlink!.collectFilesContent(&resultFilesContent);
        }

    }

    // Sets hyperlink. Gets or sets the hyperlink.
    public func setHyperlink(hyperlink : Hyperlink?) -> HyperlinkResponse {
        self.hyperlink = hyperlink;
        return self;
    }

    // Gets hyperlink. Gets or sets the hyperlink.
    public func getHyperlink() -> Hyperlink? {
        return self.hyperlink;
    }
}
