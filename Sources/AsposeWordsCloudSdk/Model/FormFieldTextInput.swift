/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="FormFieldTextInput.swift">
 *   Copyright (c) 2019 Aspose.Words for Cloud
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

public class FormFieldTextInput : FormField {
    // Gets or sets the type of a text form field.
    public enum TextInputType
    { 
        // Enum value "regular"
        case regular
        
        // Enum value "number"
        case number
        
        // Enum value "date"
        case date
        
        // Enum value "currentDate"
        case currentDate
        
        // Enum value "currentTime"
        case currentTime
        
        // Enum value "calculated"
        case calculated
        
    }

        
    // Gets or sets maximum length for the text field. Zero when the length is not limited.
    private let maxLength : Int?;
    // Gets or sets the default string or a calculation expression of a text form field.
    private let textInputDefault : String?;
    // Gets or sets returns or sets the text formatting for a text form field.
    private let textInputFormat : String?;
    // Gets or sets the type of a text form field.
    private let textInputType : TextInputType?;
        
    private enum CodingKeys: String, CodingKey { case maxLength, textInputDefault, textInputFormat, textInputType }
        
    public init(maxLength : Int? = nil, textInputDefault : String? = nil, textInputFormat : String? = nil, textInputType : TextInputType? = nil) {
        self.maxLength = maxLength;
        self.textInputDefault = textInputDefault;
        self.textInputFormat = textInputFormat;
        self.textInputType = textInputType;
    }
    
    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self);
        try super.init(from: try container.superDecoder());
        if let maxLength = try container.decodeIfPresent(Int.self, forKey: .maxLength) {
            self.maxLength = maxLength;
        }
        if let textInputDefault = try container.decodeIfPresent(String.self, forKey: .textInputDefault) {
            self.textInputDefault = textInputDefault;
        }
        if let textInputFormat = try container.decodeIfPresent(String.self, forKey: .textInputFormat) {
            self.textInputFormat = textInputFormat;
        }
        if let textInputType = try container.decodeIfPresent(TextInputType.self, forKey: .textInputType) {
            self.textInputType = textInputType;
        }

    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.maxLength != nil) {
            try container.encode(self.maxLength, forKey: .maxLength);
        }
        if (self.textInputDefault != nil) {
            try container.encode(self.textInputDefault, forKey: .textInputDefault);
        }
        if (self.textInputFormat != nil) {
            try container.encode(self.textInputFormat, forKey: .textInputFormat);
        }
        if (self.textInputType != nil) {
            try container.encode(self.textInputType, forKey: .textInputType);
        }
        
        try super.encode(to: container.superEncoder());
    }
        
    public func getMaxLength() -> Int? {
        return self.maxLength;
    }
    public func getTextInputDefault() -> String? {
        return self.textInputDefault;
    }
    public func getTextInputFormat() -> String? {
        return self.textInputFormat;
    }
    public func getTextInputType() -> TextInputType? {
        return self.textInputType;
    }
}
