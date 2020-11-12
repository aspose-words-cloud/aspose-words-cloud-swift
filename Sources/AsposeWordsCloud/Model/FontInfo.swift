/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="FontInfo.swift">
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

// Font info.
public class FontInfo : Codable, WordsApiModel {
    // Field of filePath. Font info.
    private var filePath : String?;

    // Field of fontFamilyName. Font info.
    private var fontFamilyName : String?;

    // Field of fullFontName. Font info.
    private var fullFontName : String?;

    // Field of version. Font info.
    private var version : String?;

    private enum CodingKeys: String, CodingKey {
        case filePath = "FilePath";
        case fontFamilyName = "FontFamilyName";
        case fullFontName = "FullFontName";
        case version = "Version";
        case invalidCodingKey;
    }

    public init() {
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.filePath = try container.decodeIfPresent(String.self, forKey: .filePath);
        self.fontFamilyName = try container.decodeIfPresent(String.self, forKey: .fontFamilyName);
        self.fullFontName = try container.decodeIfPresent(String.self, forKey: .fullFontName);
        self.version = try container.decodeIfPresent(String.self, forKey: .version);
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.filePath != nil) {
            try container.encode(self.filePath, forKey: .filePath);
        }
        if (self.fontFamilyName != nil) {
            try container.encode(self.fontFamilyName, forKey: .fontFamilyName);
        }
        if (self.fullFontName != nil) {
            try container.encode(self.fullFontName, forKey: .fullFontName);
        }
        if (self.version != nil) {
            try container.encode(self.version, forKey: .version);
        }
    }

    // Sets filePath. Gets or sets path to the font file if any.
    public func setFilePath(filePath : String?) {
        self.filePath = filePath;
    }

    // Gets filePath. Gets or sets path to the font file if any.
    public func getFilePath() -> String? {
        return self.filePath;
    }

    // Sets fontFamilyName. Gets or sets family name of the font.
    public func setFontFamilyName(fontFamilyName : String?) {
        self.fontFamilyName = fontFamilyName;
    }

    // Gets fontFamilyName. Gets or sets family name of the font.
    public func getFontFamilyName() -> String? {
        return self.fontFamilyName;
    }

    // Sets fullFontName. Gets or sets full name of the font.
    public func setFullFontName(fullFontName : String?) {
        self.fullFontName = fullFontName;
    }

    // Gets fullFontName. Gets or sets full name of the font.
    public func getFullFontName() -> String? {
        return self.fullFontName;
    }

    // Sets version. Gets or sets version string of the font.
    public func setVersion(version : String?) {
        self.version = version;
    }

    // Gets version. Gets or sets version string of the font.
    public func getVersion() -> String? {
        return self.version;
    }
}
