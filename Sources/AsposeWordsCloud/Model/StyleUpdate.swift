/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="StyleUpdate.swift">
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

// Represents a single document style properties to update.
@available(macOS 10.12, iOS 10.3, watchOS 3.3, tvOS 12.0, *)
public class StyleUpdate : Codable, WordsApiModel {
    // Field of baseStyleName. Represents a single document style properties to update.
    public var baseStyleName : String?;

    // Field of isQuickStyle. Represents a single document style properties to update.
    public var isQuickStyle : Bool?;

    // Field of name. Represents a single document style properties to update.
    public var name : String?;

    // Field of nextParagraphStyleName. Represents a single document style properties to update.
    public var nextParagraphStyleName : String?;

    private enum CodingKeys: String, CodingKey {
        case baseStyleName = "BaseStyleName";
        case isQuickStyle = "IsQuickStyle";
        case name = "Name";
        case nextParagraphStyleName = "NextParagraphStyleName";
        case invalidCodingKey;
    }

    public init() {
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.baseStyleName = try container.decodeIfPresent(String.self, forKey: .baseStyleName);
        self.isQuickStyle = try container.decodeIfPresent(Bool.self, forKey: .isQuickStyle);
        self.name = try container.decodeIfPresent(String.self, forKey: .name);
        self.nextParagraphStyleName = try container.decodeIfPresent(String.self, forKey: .nextParagraphStyleName);
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.baseStyleName != nil) {
            try container.encode(self.baseStyleName, forKey: .baseStyleName);
        }
        if (self.isQuickStyle != nil) {
            try container.encode(self.isQuickStyle, forKey: .isQuickStyle);
        }
        if (self.name != nil) {
            try container.encode(self.name, forKey: .name);
        }
        if (self.nextParagraphStyleName != nil) {
            try container.encode(self.nextParagraphStyleName, forKey: .nextParagraphStyleName);
        }
    }

    // Sets baseStyleName. Gets or sets the name of the style this style is based on.
    public func setBaseStyleName(baseStyleName : String?) -> StyleUpdate {
        self.baseStyleName = baseStyleName;
        return self;
    }

    // Gets baseStyleName. Gets or sets the name of the style this style is based on.
    public func getBaseStyleName() -> String? {
        return self.baseStyleName;
    }

    // Sets isQuickStyle. Gets or sets a value indicating whether this style is shown in the Quick Style gallery inside MS Word UI.
    public func setIsQuickStyle(isQuickStyle : Bool?) -> StyleUpdate {
        self.isQuickStyle = isQuickStyle;
        return self;
    }

    // Gets isQuickStyle. Gets or sets a value indicating whether this style is shown in the Quick Style gallery inside MS Word UI.
    public func getIsQuickStyle() -> Bool? {
        return self.isQuickStyle;
    }

    // Sets name. Gets or sets the name of the style.
    public func setName(name : String?) -> StyleUpdate {
        self.name = name;
        return self;
    }

    // Gets name. Gets or sets the name of the style.
    public func getName() -> String? {
        return self.name;
    }

    // Sets nextParagraphStyleName. Gets or sets the name of the style to be applied automatically to a new paragraph inserted after a paragraph formatted with the specified style.
    public func setNextParagraphStyleName(nextParagraphStyleName : String?) -> StyleUpdate {
        self.nextParagraphStyleName = nextParagraphStyleName;
        return self;
    }

    // Gets nextParagraphStyleName. Gets or sets the name of the style to be applied automatically to a new paragraph inserted after a paragraph formatted with the specified style.
    public func getNextParagraphStyleName() -> String? {
        return self.nextParagraphStyleName;
    }
}
