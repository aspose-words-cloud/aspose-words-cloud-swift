/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="FontInfo.swift">
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

public class FontInfo : Decodable {
        
    // Gets or sets family name of the font.
    private let fontFamilyName : String?;
    // Gets or sets full name of the font.
    private let fullFontName : String?;
    // Gets or sets version string of the font.
    private let version : String?;
    // Gets or sets path to the font file if any.
    private let filePath : String?;
        
    public init(fontFamilyName : String? = nil, fullFontName : String? = nil, version : String? = nil, filePath : String? = nil) {
        self.fontFamilyName = fontFamilyName;
        self.fullFontName = fullFontName;
        self.version = version;
        self.filePath = filePath;
    }
        
    public func getFontInfo() -> String? {
        return self.fontFamilyName;
    }
    public func getFontInfo() -> String? {
        return self.fullFontName;
    }
    public func getFontInfo() -> String? {
        return self.version;
    }
    public func getFontInfo() -> String? {
        return self.filePath;
    }
}
