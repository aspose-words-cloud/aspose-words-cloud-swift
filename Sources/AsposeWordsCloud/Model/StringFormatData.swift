/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="StringFormatData.swift">
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

// Allows to specify System.Drawing.StringFormat options.
public class StringFormatData : Codable, WordsApiModel {
    // Gets or sets horizontal alignment of the string.
    public enum Alignment : String, Codable
    {
        // Enum value "near"
        case near = "Near"

        // Enum value "center"
        case center = "Center"

        // Enum value "far"
        case far = "Far"
    }

    // Gets or sets a System.Drawing.StringFormatFlags enumeration that contains formatting information.
    public enum FormatFlags : String, Codable
    {
        // Enum value "directionRightToLeft"
        case directionRightToLeft = "DirectionRightToLeft"

        // Enum value "directionVertical"
        case directionVertical = "DirectionVertical"

        // Enum value "fitBlackBox"
        case fitBlackBox = "FitBlackBox"

        // Enum value "displayFormatControl"
        case displayFormatControl = "DisplayFormatControl"

        // Enum value "noFontFallback"
        case noFontFallback = "NoFontFallback"

        // Enum value "measureTrailingSpaces"
        case measureTrailingSpaces = "MeasureTrailingSpaces"

        // Enum value "noWrap"
        case noWrap = "NoWrap"

        // Enum value "lineLimit"
        case lineLimit = "LineLimit"

        // Enum value "noClip"
        case noClip = "NoClip"
    }

    // Gets or sets the System.Drawing.Text.HotkeyPrefix object for this System.Drawing.StringFormat object.
    public enum HotkeyPrefix : String, Codable
    {
        // Enum value "_none"
        case _none = "None"

        // Enum value "show"
        case show = "Show"

        // Enum value "hide"
        case hide = "Hide"
    }

    // Gets or sets the vertical alignment of the string.
    public enum LineAlignment : String, Codable
    {
        // Enum value "near"
        case near = "Near"

        // Enum value "center"
        case center = "Center"

        // Enum value "far"
        case far = "Far"
    }

    // Gets or sets the System.Drawing.StringTrimming enumeration for this System.Drawing.StringFormat object.
    public enum Trimming : String, Codable
    {
        // Enum value "_none"
        case _none = "None"

        // Enum value "character"
        case character = "Character"

        // Enum value "word"
        case word = "Word"

        // Enum value "ellipsisCharacter"
        case ellipsisCharacter = "EllipsisCharacter"

        // Enum value "ellipsisWord"
        case ellipsisWord = "EllipsisWord"

        // Enum value "ellipsisPath"
        case ellipsisPath = "EllipsisPath"
    }

    // Field of alignment. Allows to specify System.Drawing.StringFormat options.
    private var alignment : Alignment?;

    // Field of formatFlags. Allows to specify System.Drawing.StringFormat options.
    private var formatFlags : FormatFlags?;

    // Field of hotkeyPrefix. Allows to specify System.Drawing.StringFormat options.
    private var hotkeyPrefix : HotkeyPrefix?;

    // Field of lineAlignment. Allows to specify System.Drawing.StringFormat options.
    private var lineAlignment : LineAlignment?;

    // Field of trimming. Allows to specify System.Drawing.StringFormat options.
    private var trimming : Trimming?;

    private enum CodingKeys: String, CodingKey {
        case alignment;
        case formatFlags;
        case hotkeyPrefix;
        case lineAlignment;
        case trimming;
        case invalidCodingKey;
    }

    public init() {
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.alignment = try container.decodeIfPresent(Alignment.self, forKey: .alignment);
        self.formatFlags = try container.decodeIfPresent(FormatFlags.self, forKey: .formatFlags);
        self.hotkeyPrefix = try container.decodeIfPresent(HotkeyPrefix.self, forKey: .hotkeyPrefix);
        self.lineAlignment = try container.decodeIfPresent(LineAlignment.self, forKey: .lineAlignment);
        self.trimming = try container.decodeIfPresent(Trimming.self, forKey: .trimming);
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.alignment != nil) {
            try container.encode(self.alignment, forKey: .alignment);
        }
        if (self.formatFlags != nil) {
            try container.encode(self.formatFlags, forKey: .formatFlags);
        }
        if (self.hotkeyPrefix != nil) {
            try container.encode(self.hotkeyPrefix, forKey: .hotkeyPrefix);
        }
        if (self.lineAlignment != nil) {
            try container.encode(self.lineAlignment, forKey: .lineAlignment);
        }
        if (self.trimming != nil) {
            try container.encode(self.trimming, forKey: .trimming);
        }
    }

    // Sets alignment. Gets or sets horizontal alignment of the string.
    public func setAlignment(alignment : Alignment?) {
        self.alignment = alignment;
    }

    // Gets alignment. Gets or sets horizontal alignment of the string.
    public func getAlignment() -> Alignment? {
        return self.alignment;
    }

    // Sets formatFlags. Gets or sets a System.Drawing.StringFormatFlags enumeration that contains formatting information.
    public func setFormatFlags(formatFlags : FormatFlags?) {
        self.formatFlags = formatFlags;
    }

    // Gets formatFlags. Gets or sets a System.Drawing.StringFormatFlags enumeration that contains formatting information.
    public func getFormatFlags() -> FormatFlags? {
        return self.formatFlags;
    }

    // Sets hotkeyPrefix. Gets or sets the System.Drawing.Text.HotkeyPrefix object for this System.Drawing.StringFormat object.
    public func setHotkeyPrefix(hotkeyPrefix : HotkeyPrefix?) {
        self.hotkeyPrefix = hotkeyPrefix;
    }

    // Gets hotkeyPrefix. Gets or sets the System.Drawing.Text.HotkeyPrefix object for this System.Drawing.StringFormat object.
    public func getHotkeyPrefix() -> HotkeyPrefix? {
        return self.hotkeyPrefix;
    }

    // Sets lineAlignment. Gets or sets the vertical alignment of the string.
    public func setLineAlignment(lineAlignment : LineAlignment?) {
        self.lineAlignment = lineAlignment;
    }

    // Gets lineAlignment. Gets or sets the vertical alignment of the string.
    public func getLineAlignment() -> LineAlignment? {
        return self.lineAlignment;
    }

    // Sets trimming. Gets or sets the System.Drawing.StringTrimming enumeration for this System.Drawing.StringFormat object.
    public func setTrimming(trimming : Trimming?) {
        self.trimming = trimming;
    }

    // Gets trimming. Gets or sets the System.Drawing.StringTrimming enumeration for this System.Drawing.StringFormat object.
    public func getTrimming() -> Trimming? {
        return self.trimming;
    }
}
