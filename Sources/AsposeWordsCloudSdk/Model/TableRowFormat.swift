/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="TableRowFormat.swift">
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

public class TableRowFormat : LinkElement {
    // Gets or sets the rule for determining the height of the table row.
    public enum HeightRule
    { 
        // Enum value "atLeast"
        case atLeast
        
        // Enum value "exactly"
        case exactly
        
        // Enum value "auto"
        case auto
        
    }

        
    // Gets or sets true if the text in a table row is allowed to split across a page break.
    private let allowBreakAcrossPages : Bool?;
    // Gets or sets true if the row is repeated as a table heading on every page when the table spans more than one page.
    private let headingFormat : Bool?;
    // Gets or sets the height of the table row in points.
    private let height : Double?;
    // Gets or sets the rule for determining the height of the table row.
    private let heightRule : HeightRule?;
        
    public init(allowBreakAcrossPages : Bool? = nil, headingFormat : Bool? = nil, height : Double? = nil, heightRule : HeightRule? = nil) {
        self.allowBreakAcrossPages = allowBreakAcrossPages;
        self.headingFormat = headingFormat;
        self.height = height;
        self.heightRule = heightRule;
    }
        
    public func getAllowBreakAcrossPages() -> Bool? {
        return self.allowBreakAcrossPages;
    }
    public func getHeadingFormat() -> Bool? {
        return self.headingFormat;
    }
    public func getHeight() -> Double? {
        return self.height;
    }
    public func getHeightRule() -> HeightRule? {
        return self.heightRule;
    }
}
