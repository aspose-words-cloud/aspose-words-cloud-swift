/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="FormFieldTextInput.swift">
 *   Copyright (c) 2020 Aspose.Words for Cloud
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

// FormField text input element.
public class FormFieldTextInput : FormField {
    // Gets or sets the type of the text form field.
    public enum TextInputType : String, Codable
    {
        // Enum value "regular"
        case regular = "Regular"

        // Enum value "number"
        case number = "Number"

        // Enum value "date"
        case date = "Date"

        // Enum value "currentDate"
        case currentDate = "CurrentDate"

        // Enum value "currentTime"
        case currentTime = "CurrentTime"

        // Enum value "calculated"
        case calculated = "Calculated"
    }

    // Field of maxLength. FormField text input element.
    private var maxLength : Int?;

    // Field of textInputDefault. FormField text input element.
    private var textInputDefault : String?;

    // Field of textInputFormat. FormField text input element.
    private var textInputFormat : String?;

    // Field of textInputType. FormField text input element.
    private var textInputType : TextInputType?;

    private enum CodingKeys: String, CodingKey {
        case maxLength = "MaxLength";
        case textInputDefault = "TextInputDefault";
        case textInputFormat = "TextInputFormat";
        case textInputType = "TextInputType";
        case invalidCodingKey;
    }

    public override init() {
        super.init();
    }

    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder);
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.maxLength = try container.decodeIfPresent(Int.self, forKey: .maxLength);
        self.textInputDefault = try container.decodeIfPresent(String.self, forKey: .textInputDefault);
        self.textInputFormat = try container.decodeIfPresent(String.self, forKey: .textInputFormat);
        self.textInputType = try container.decodeIfPresent(TextInputType.self, forKey: .textInputType);
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder);
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
    }

    // Sets maxLength. Gets or sets the maximum length for the text field. Zero when the length is not limited.
    public func setMaxLength(maxLength : Int?) {
        self.maxLength = maxLength;
    }

    // Gets maxLength. Gets or sets the maximum length for the text field. Zero when the length is not limited.
    public func getMaxLength() -> Int? {
        return self.maxLength;
    }

    // Sets textInputDefault. Gets or sets the default string or a calculation expression of the text form field.
    public func setTextInputDefault(textInputDefault : String?) {
        self.textInputDefault = textInputDefault;
    }

    // Gets textInputDefault. Gets or sets the default string or a calculation expression of the text form field.
    public func getTextInputDefault() -> String? {
        return self.textInputDefault;
    }

    // Sets textInputFormat. Gets or sets text formatting for the text form field.
    public func setTextInputFormat(textInputFormat : String?) {
        self.textInputFormat = textInputFormat;
    }

    // Gets textInputFormat. Gets or sets text formatting for the text form field.
    public func getTextInputFormat() -> String? {
        return self.textInputFormat;
    }

    // Sets textInputType. Gets or sets the type of the text form field.
    public func setTextInputType(textInputType : TextInputType?) {
        self.textInputType = textInputType;
    }

    // Gets textInputType. Gets or sets the type of the text form field.
    public func getTextInputType() -> TextInputType? {
        return self.textInputType;
    }
}
