/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="StyleInsert.swift">
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

// Represents a single document style to insert.
@available(macOS 10.12, iOS 10.3, watchOS 3.3, tvOS 12.0, *)
public class StyleInsert : Codable, WordsApiModel {
    // Gets or sets the StyleType value that specifies the type of the style to create.
    public enum StyleType : String, Codable
    {
        // Enum value "paragraph"
        case paragraph = "Paragraph"

        // Enum value "character"
        case character = "Character"

        // Enum value "table"
        case table = "Table"

        // Enum value "list"
        case list = "List"
    }

    // Field of styleName. Represents a single document style to insert.
    private var _styleName : String? = nil;

    public var styleName : String? {
        get {
            return self._styleName;
        }
        set {
            self._styleName = newValue;
        }
    }

    // Field of styleType. Represents a single document style to insert.
    private var _styleType : StyleType? = nil;

    public var styleType : StyleType? {
        get {
            return self._styleType;
        }
        set {
            self._styleType = newValue;
        }
    }

    private enum CodingKeys: String, CodingKey {
        case styleName = "StyleName";
        case styleType = "StyleType";
        case invalidCodingKey;
    }

    public init() {
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.styleName = try container.decodeIfPresent(String.self, forKey: .styleName);
        self.styleType = try container.decodeIfPresent(StyleType.self, forKey: .styleType);
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.styleName != nil) {
            try container.encode(self.styleName, forKey: .styleName);
        }
        if (self.styleType != nil) {
            try container.encode(self.styleType, forKey: .styleType);
        }
    }

    public func collectFilesContent(_ resultFilesContent : inout [FileReference]) {
    }

    // Sets styleName. Gets or sets the case sensitive name of the style to create.
    public func setStyleName(styleName : String?) -> StyleInsert {
        self.styleName = styleName;
        return self;
    }

    // Gets styleName. Gets or sets the case sensitive name of the style to create.
    public func getStyleName() -> String? {
        return self.styleName;
    }


    // Sets styleType. Gets or sets the StyleType value that specifies the type of the style to create.
    public func setStyleType(styleType : StyleType?) -> StyleInsert {
        self.styleType = styleType;
        return self;
    }

    // Gets styleType. Gets or sets the StyleType value that specifies the type of the style to create.
    public func getStyleType() -> StyleType? {
        return self.styleType;
    }
}
