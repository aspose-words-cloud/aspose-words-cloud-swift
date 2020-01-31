/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="StringFormatData.swift">
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

public class StringFormatData : Decodable {
    // Gets or sets horizontal alignment of the string.
    public enum Alignment
    { 
        // Enum value "near"
        case near
        
        // Enum value "center"
        case center
        
        // Enum value "far"
        case far
        
    }

    // Gets or sets a System.Drawing.StringFormatFlags enumeration that contains formatting information.
    public enum FormatFlags
    { 
        // Enum value "directionRightToLeft"
        case directionRightToLeft
        
        // Enum value "directionVertical"
        case directionVertical
        
        // Enum value "fitBlackBox"
        case fitBlackBox
        
        // Enum value "displayFormatControl"
        case displayFormatControl
        
        // Enum value "noFontFallback"
        case noFontFallback
        
        // Enum value "measureTrailingSpaces"
        case measureTrailingSpaces
        
        // Enum value "noWrap"
        case noWrap
        
        // Enum value "lineLimit"
        case lineLimit
        
        // Enum value "noClip"
        case noClip
        
    }

    // Gets or sets the System.Drawing.Text.HotkeyPrefix object for this System.Drawing.StringFormat object.
    public enum HotkeyPrefix
    { 
        // Enum value "_none"
        case _none
        
        // Enum value "show"
        case show
        
        // Enum value "hide"
        case hide
        
    }

    // Gets or sets the vertical alignment of the string.
    public enum LineAlignment
    { 
        // Enum value "near"
        case near
        
        // Enum value "center"
        case center
        
        // Enum value "far"
        case far
        
    }

    // Gets or sets the System.Drawing.StringTrimming enumeration for this System.Drawing.StringFormat object.
    public enum Trimming
    { 
        // Enum value "_none"
        case _none
        
        // Enum value "character"
        case character
        
        // Enum value "word"
        case word
        
        // Enum value "ellipsisCharacter"
        case ellipsisCharacter
        
        // Enum value "ellipsisWord"
        case ellipsisWord
        
        // Enum value "ellipsisPath"
        case ellipsisPath
        
    }

        
    // Gets or sets horizontal alignment of the string.
    private let alignment : Alignment?;
    // Gets or sets a System.Drawing.StringFormatFlags enumeration that contains formatting information.
    private let formatFlags : FormatFlags?;
    // Gets or sets the System.Drawing.Text.HotkeyPrefix object for this System.Drawing.StringFormat object.
    private let hotkeyPrefix : HotkeyPrefix?;
    // Gets or sets the vertical alignment of the string.
    private let lineAlignment : LineAlignment?;
    // Gets or sets the System.Drawing.StringTrimming enumeration for this System.Drawing.StringFormat object.
    private let trimming : Trimming?;
        
    public init(alignment : Alignment? = nil, formatFlags : FormatFlags? = nil, hotkeyPrefix : HotkeyPrefix? = nil, lineAlignment : LineAlignment? = nil, trimming : Trimming? = nil) {
        self.alignment = alignment;
        self.formatFlags = formatFlags;
        self.hotkeyPrefix = hotkeyPrefix;
        self.lineAlignment = lineAlignment;
        self.trimming = trimming;
    }
        
    public func getStringFormatData() -> Alignment? {
        return self.alignment;
    }
    public func getStringFormatData() -> FormatFlags? {
        return self.formatFlags;
    }
    public func getStringFormatData() -> HotkeyPrefix? {
        return self.hotkeyPrefix;
    }
    public func getStringFormatData() -> LineAlignment? {
        return self.lineAlignment;
    }
    public func getStringFormatData() -> Trimming? {
        return self.trimming;
    }
}
