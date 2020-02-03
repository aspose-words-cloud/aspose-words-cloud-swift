/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="XpsSaveOptionsData.swift">
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

public class XpsSaveOptionsData : FixedPageSaveOptionsData {
        
    // Gets or sets specifies the level in the XPS document outline at which to display Word bookmarks.
    private let bookmarksOutlineLevel : Int?;
    // Gets or sets specifies how many levels of headings (paragraphs formatted with the Heading styles) to include in the XPS document outline.
    private let headingsOutlineLevels : Int?;
    // Gets or sets allows to specify outline options.
    private let outlineOptions : OutlineOptionsData?;
    // Gets or sets determines whether the document should be saved using a booklet printing layout.
    private let useBookFoldPrintingSettings : Bool?;
        
    private enum CodingKeys: String, CodingKey { case bookmarksOutlineLevel, headingsOutlineLevels, outlineOptions, useBookFoldPrintingSettings }
        
    public init(bookmarksOutlineLevel : Int? = nil, headingsOutlineLevels : Int? = nil, outlineOptions : OutlineOptionsData? = nil, useBookFoldPrintingSettings : Bool? = nil) {
        self.bookmarksOutlineLevel = bookmarksOutlineLevel;
        self.headingsOutlineLevels = headingsOutlineLevels;
        self.outlineOptions = outlineOptions;
        self.useBookFoldPrintingSettings = useBookFoldPrintingSettings;
    }
    
    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self);
        try super.init(from: try container.superDecoder());
        if let bookmarksOutlineLevel = try container.decodeIfPresent(Int.self, forKey: .bookmarksOutlineLevel) {
            self.bookmarksOutlineLevel = bookmarksOutlineLevel;
        }
        if let headingsOutlineLevels = try container.decodeIfPresent(Int.self, forKey: .headingsOutlineLevels) {
            self.headingsOutlineLevels = headingsOutlineLevels;
        }
        if let outlineOptions = try container.decodeIfPresent(OutlineOptionsData.self, forKey: .outlineOptions) {
            self.outlineOptions = outlineOptions;
        }
        if let useBookFoldPrintingSettings = try container.decodeIfPresent(Bool.self, forKey: .useBookFoldPrintingSettings) {
            self.useBookFoldPrintingSettings = useBookFoldPrintingSettings;
        }

    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.bookmarksOutlineLevel != nil) {
            try container.encode(self.bookmarksOutlineLevel, forKey: .bookmarksOutlineLevel);
        }
        if (self.headingsOutlineLevels != nil) {
            try container.encode(self.headingsOutlineLevels, forKey: .headingsOutlineLevels);
        }
        if (self.outlineOptions != nil) {
            try container.encode(self.outlineOptions, forKey: .outlineOptions);
        }
        if (self.useBookFoldPrintingSettings != nil) {
            try container.encode(self.useBookFoldPrintingSettings, forKey: .useBookFoldPrintingSettings);
        }
        
        try super.encode(to: container.superEncoder());
    }
        
    public func getBookmarksOutlineLevel() -> Int? {
        return self.bookmarksOutlineLevel;
    }
    public func getHeadingsOutlineLevels() -> Int? {
        return self.headingsOutlineLevels;
    }
    public func getOutlineOptions() -> OutlineOptionsData? {
        return self.outlineOptions;
    }
    public func getUseBookFoldPrintingSettings() -> Bool? {
        return self.useBookFoldPrintingSettings;
    }
}
