/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="PageNumber.swift">
 *   Copyright (c) 2021 Aspose.Words for Cloud
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

// Class is used for insert page number request building.
@available(macOS 10.12, iOS 10.3, watchOS 3.3, tvOS 12.0, *)
public class PageNumber : Codable, WordsApiModel {
    // Field of alignment. Class is used for insert page number request building.
    public var alignment : String?;

    // Field of format. Class is used for insert page number request building.
    public var format : String?;

    // Field of isTop. Class is used for insert page number request building.
    public var isTop : Bool?;

    // Field of setPageNumberOnFirstPage. Class is used for insert page number request building.
    public var setPageNumberOnFirstPage : Bool?;

    private enum CodingKeys: String, CodingKey {
        case alignment = "Alignment";
        case format = "Format";
        case isTop = "IsTop";
        case setPageNumberOnFirstPage = "SetPageNumberOnFirstPage";
        case invalidCodingKey;
    }

    public init() {
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.alignment = try container.decodeIfPresent(String.self, forKey: .alignment);
        self.format = try container.decodeIfPresent(String.self, forKey: .format);
        self.isTop = try container.decodeIfPresent(Bool.self, forKey: .isTop);
        self.setPageNumberOnFirstPage = try container.decodeIfPresent(Bool.self, forKey: .setPageNumberOnFirstPage);
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.alignment != nil) {
            try container.encode(self.alignment, forKey: .alignment);
        }
        if (self.format != nil) {
            try container.encode(self.format, forKey: .format);
        }
        if (self.isTop != nil) {
            try container.encode(self.isTop, forKey: .isTop);
        }
        if (self.setPageNumberOnFirstPage != nil) {
            try container.encode(self.setPageNumberOnFirstPage, forKey: .setPageNumberOnFirstPage);
        }
    }

    // Sets alignment. Gets or sets text alignment, possible values are left, right, center or justify.
    public func setAlignment(alignment : String?) -> PageNumber {
        self.alignment = alignment;
        return self;
    }

    // Gets alignment. Gets or sets text alignment, possible values are left, right, center or justify.
    public func getAlignment() -> String? {
        return self.alignment;
    }

    // Sets format. Gets or sets the page number format, e.g. "{PAGE} of {NUMPAGES}".
    public func setFormat(format : String?) -> PageNumber {
        self.format = format;
        return self;
    }

    // Gets format. Gets or sets the page number format, e.g. "{PAGE} of {NUMPAGES}".
    public func getFormat() -> String? {
        return self.format;
    }

    // Sets isTop. Gets or sets a value indicating whether if true the page number is added at the top of the page, else at the bottom.
    public func setIsTop(isTop : Bool?) -> PageNumber {
        self.isTop = isTop;
        return self;
    }

    // Gets isTop. Gets or sets a value indicating whether if true the page number is added at the top of the page, else at the bottom.
    public func getIsTop() -> Bool? {
        return self.isTop;
    }

    // Sets setPageNumberOnFirstPage. Gets or sets a value indicating whether if true the page number is added on first page too.
    public func setSetPageNumberOnFirstPage(setPageNumberOnFirstPage : Bool?) -> PageNumber {
        self.setPageNumberOnFirstPage = setPageNumberOnFirstPage;
        return self;
    }

    // Gets setPageNumberOnFirstPage. Gets or sets a value indicating whether if true the page number is added on first page too.
    public func getSetPageNumberOnFirstPage() -> Bool? {
        return self.setPageNumberOnFirstPage;
    }
}
