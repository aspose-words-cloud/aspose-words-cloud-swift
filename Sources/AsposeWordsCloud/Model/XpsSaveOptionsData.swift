/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="XpsSaveOptionsData.swift">
 *   Copyright (c) 2021 Aspose.Words for Cloud
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

// Container class for xps save options.
public class XpsSaveOptionsData : FixedPageSaveOptionsData {
    // Field of bookmarksOutlineLevel. Container class for xps save options.
    private var bookmarksOutlineLevel : Int?;

    // Field of headingsOutlineLevels. Container class for xps save options.
    private var headingsOutlineLevels : Int?;

    // Field of outlineOptions. Container class for xps save options.
    private var outlineOptions : OutlineOptionsData?;

    // Field of useBookFoldPrintingSettings. Container class for xps save options.
    private var useBookFoldPrintingSettings : Bool?;

    private enum CodingKeys: String, CodingKey {
        case bookmarksOutlineLevel = "BookmarksOutlineLevel";
        case headingsOutlineLevels = "HeadingsOutlineLevels";
        case outlineOptions = "OutlineOptions";
        case useBookFoldPrintingSettings = "UseBookFoldPrintingSettings";
        case invalidCodingKey;
    }

    public override init() {
        super.init();
    }

    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder);
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.bookmarksOutlineLevel = try container.decodeIfPresent(Int.self, forKey: .bookmarksOutlineLevel);
        self.headingsOutlineLevels = try container.decodeIfPresent(Int.self, forKey: .headingsOutlineLevels);
        self.outlineOptions = try container.decodeIfPresent(OutlineOptionsData.self, forKey: .outlineOptions);
        self.useBookFoldPrintingSettings = try container.decodeIfPresent(Bool.self, forKey: .useBookFoldPrintingSettings);
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder);
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
    }

    // Sets bookmarksOutlineLevel. Gets or sets the level in the XPS document outline at which to display Word bookmarks.
    public func setBookmarksOutlineLevel(bookmarksOutlineLevel : Int?) {
        self.bookmarksOutlineLevel = bookmarksOutlineLevel;
    }

    // Gets bookmarksOutlineLevel. Gets or sets the level in the XPS document outline at which to display Word bookmarks.
    public func getBookmarksOutlineLevel() -> Int? {
        return self.bookmarksOutlineLevel;
    }

    // Sets headingsOutlineLevels. Gets or sets the number of heading levels (paragraphs formatted with the Heading styles) to include in the XPS document outline.
    public func setHeadingsOutlineLevels(headingsOutlineLevels : Int?) {
        self.headingsOutlineLevels = headingsOutlineLevels;
    }

    // Gets headingsOutlineLevels. Gets or sets the number of heading levels (paragraphs formatted with the Heading styles) to include in the XPS document outline.
    public func getHeadingsOutlineLevels() -> Int? {
        return self.headingsOutlineLevels;
    }

    // Sets outlineOptions. Gets or sets the outline options.
    public func setOutlineOptions(outlineOptions : OutlineOptionsData?) {
        self.outlineOptions = outlineOptions;
    }

    // Gets outlineOptions. Gets or sets the outline options.
    public func getOutlineOptions() -> OutlineOptionsData? {
        return self.outlineOptions;
    }

    // Sets useBookFoldPrintingSettings. Gets or sets a value indicating whether the document should be saved using a booklet printing layout.
    public func setUseBookFoldPrintingSettings(useBookFoldPrintingSettings : Bool?) {
        self.useBookFoldPrintingSettings = useBookFoldPrintingSettings;
    }

    // Gets useBookFoldPrintingSettings. Gets or sets a value indicating whether the document should be saved using a booklet printing layout.
    public func getUseBookFoldPrintingSettings() -> Bool? {
        return self.useBookFoldPrintingSettings;
    }
}
