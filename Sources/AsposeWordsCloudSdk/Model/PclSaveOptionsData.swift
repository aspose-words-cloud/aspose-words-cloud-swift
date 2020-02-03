/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="PclSaveOptionsData.swift">
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

public class PclSaveOptionsData : FixedPageSaveOptionsData {
        
    // Gets or sets name of the font that will be used if no expected font is found in printer and built-in fonts collections.
    private var falllbackFontName : String?;
    // Gets or sets a value determining whether or not complex transformed elements should be rasterized before saving to PCL document.  Default is true.
    private var rasterizeTransformedElements : Bool?;
        
    private enum CodingKeys: String, CodingKey {
        case falllbackFontName;
        case rasterizeTransformedElements;
        case invalidCodingKey;
    }
        
    public override init() {
        super.init();
    }
    
    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self);
        try super.init(from: try container.superDecoder());
        self.falllbackFontName = try container.decodeIfPresent(String.self, forKey: .falllbackFontName);
        self.rasterizeTransformedElements = try container.decodeIfPresent(Bool.self, forKey: .rasterizeTransformedElements);
    }

    public override func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.falllbackFontName != nil) {
            try container.encode(self.falllbackFontName, forKey: .falllbackFontName);
        }
        if (self.rasterizeTransformedElements != nil) {
            try container.encode(self.rasterizeTransformedElements, forKey: .rasterizeTransformedElements);
        }
        try super.encode(to: container.superEncoder());
    }
        
    public func setFalllbackFontName(falllbackFontName : String?) {
        self.falllbackFontName = falllbackFontName;
    }
    
    public func getFalllbackFontName() -> String? {
        return self.falllbackFontName;
    }
    public func setRasterizeTransformedElements(rasterizeTransformedElements : Bool?) {
        self.rasterizeTransformedElements = rasterizeTransformedElements;
    }
    
    public func getRasterizeTransformedElements() -> Bool? {
        return self.rasterizeTransformedElements;
    }
}
