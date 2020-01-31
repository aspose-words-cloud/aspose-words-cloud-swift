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
        
    public init(bookmarksOutlineLevel : Int? = nil, headingsOutlineLevels : Int? = nil, outlineOptions : OutlineOptionsData? = nil, useBookFoldPrintingSettings : Bool? = nil) {
        self.bookmarksOutlineLevel = bookmarksOutlineLevel;
        self.headingsOutlineLevels = headingsOutlineLevels;
        self.outlineOptions = outlineOptions;
        self.useBookFoldPrintingSettings = useBookFoldPrintingSettings;
    }
        
    public func getXpsSaveOptionsData() -> Int? {
        return self.bookmarksOutlineLevel;
    }
    public func getXpsSaveOptionsData() -> Int? {
        return self.headingsOutlineLevels;
    }
    public func getXpsSaveOptionsData() -> OutlineOptionsData? {
        return self.outlineOptions;
    }
    public func getXpsSaveOptionsData() -> Bool? {
        return self.useBookFoldPrintingSettings;
    }
}
