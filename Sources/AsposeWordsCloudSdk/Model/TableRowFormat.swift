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
    public enum HeightRule : String, Codable
    { 
        // Enum value "atLeast"
        case atLeast = "AtLeast"
        
        // Enum value "exactly"
        case exactly = "Exactly"
        
        // Enum value "auto"
        case auto = "Auto"
        
    }

        
    // Gets or sets true if the text in a table row is allowed to split across a page break.
    private var allowBreakAcrossPages : Bool?;
    // Gets or sets true if the row is repeated as a table heading on every page when the table spans more than one page.
    private var headingFormat : Bool?;
    // Gets or sets the height of the table row in points.
    private var height : Double?;
    // Gets or sets the rule for determining the height of the table row.
    private var heightRule : HeightRule?;
        
    private enum CodingKeys: String, CodingKey {
        case allowBreakAcrossPages;
        case headingFormat;
        case height;
        case heightRule;
        case invalidCodingKey;
    }
        
    public override init() {
        super.init();
    }
    
    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder);
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.allowBreakAcrossPages = try container.decodeIfPresent(Bool.self, forKey: .allowBreakAcrossPages);
        self.headingFormat = try container.decodeIfPresent(Bool.self, forKey: .headingFormat);
        self.height = try container.decodeIfPresent(Double.self, forKey: .height);
        self.heightRule = try container.decodeIfPresent(HeightRule.self, forKey: .heightRule);
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder);
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.allowBreakAcrossPages != nil) {
            try container.encode(self.allowBreakAcrossPages, forKey: .allowBreakAcrossPages);
        }
        if (self.headingFormat != nil) {
            try container.encode(self.headingFormat, forKey: .headingFormat);
        }
        if (self.height != nil) {
            try container.encode(self.height, forKey: .height);
        }
        if (self.heightRule != nil) {
            try container.encode(self.heightRule, forKey: .heightRule);
        }
    }
        
    public func setAllowBreakAcrossPages(allowBreakAcrossPages : Bool?) {
        self.allowBreakAcrossPages = allowBreakAcrossPages;
    }
    
    public func getAllowBreakAcrossPages() -> Bool? {
        return self.allowBreakAcrossPages;
    }
    public func setHeadingFormat(headingFormat : Bool?) {
        self.headingFormat = headingFormat;
    }
    
    public func getHeadingFormat() -> Bool? {
        return self.headingFormat;
    }
    public func setHeight(height : Double?) {
        self.height = height;
    }
    
    public func getHeight() -> Double? {
        return self.height;
    }
    public func setHeightRule(heightRule : HeightRule?) {
        self.heightRule = heightRule;
    }
    
    public func getHeightRule() -> HeightRule? {
        return self.heightRule;
    }
}
