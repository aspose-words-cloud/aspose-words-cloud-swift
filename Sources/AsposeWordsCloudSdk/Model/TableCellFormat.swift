/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="TableCellFormat.swift">
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

public class TableCellFormat : LinkElement {
    // Gets or sets specifies how the cell is merged horizontally with other cells in the row.
    public enum HorizontalMerge : String, Codable
    { 
        // Enum value "_none"
        case _none = "None"
        
        // Enum value "first"
        case first = "First"
        
        // Enum value "previous"
        case previous = "Previous"
        
    }

    // Gets or sets returns or sets the orientation of text in a table cell.
    public enum Orientation : String, Codable
    { 
        // Enum value "horizontal"
        case horizontal = "Horizontal"
        
        // Enum value "downward"
        case downward = "Downward"
        
        // Enum value "upward"
        case upward = "Upward"
        
        // Enum value "horizontalRotatedFarEast"
        case horizontalRotatedFarEast = "HorizontalRotatedFarEast"
        
        // Enum value "verticalFarEast"
        case verticalFarEast = "VerticalFarEast"
        
        // Enum value "verticalRotatedFarEast"
        case verticalRotatedFarEast = "VerticalRotatedFarEast"
        
    }

    // Gets or sets returns or sets the vertical alignment of text in the cell.
    public enum VerticalAlignment : String, Codable
    { 
        // Enum value "top"
        case top = "Top"
        
        // Enum value "center"
        case center = "Center"
        
        // Enum value "bottom"
        case bottom = "Bottom"
        
    }

    // Gets or sets specifies how the cell is merged with other cells vertically.
    public enum VerticalMerge : String, Codable
    { 
        // Enum value "_none"
        case _none = "None"
        
        // Enum value "first"
        case first = "First"
        
        // Enum value "previous"
        case previous = "Previous"
        
    }

        
    // Gets or sets returns or sets the amount of space (in points) to add below the contents of cell.
    private var bottomPadding : Double?;
    // Gets or sets if true, fits text in the cell, compressing each paragraph to the width of the cell.
    private var fitText : Bool?;
    // Gets or sets specifies how the cell is merged horizontally with other cells in the row.
    private var horizontalMerge : HorizontalMerge?;
    // Gets or sets returns or sets the amount of space (in points) to add to the left of the contents of cell.
    private var leftPadding : Double?;
    // Gets or sets returns or sets the orientation of text in a table cell.
    private var orientation : Orientation?;
    // Gets or sets returns or sets the preferred width of the cell.
    private var preferredWidth : PreferredWidth?;
    // Gets or sets returns or sets the amount of space (in points) to add to the right of the contents of cell.
    private var rightPadding : Double?;
    // Gets or sets returns or sets the amount of space (in points) to add above the contents of cell.
    private var topPadding : Double?;
    // Gets or sets returns or sets the vertical alignment of text in the cell.
    private var verticalAlignment : VerticalAlignment?;
    // Gets or sets specifies how the cell is merged with other cells vertically.
    private var verticalMerge : VerticalMerge?;
    // Gets or sets the width of the cell in points.
    private var width : Double?;
    // Gets or sets if true, wrap text for the cell.
    private var wrapText : Bool?;
        
    private enum CodingKeys: String, CodingKey {
        case bottomPadding;
        case fitText;
        case horizontalMerge;
        case leftPadding;
        case orientation;
        case preferredWidth;
        case rightPadding;
        case topPadding;
        case verticalAlignment;
        case verticalMerge;
        case width;
        case wrapText;
        case invalidCodingKey;
    }
        
    public override init() {
        super.init();
    }
    
    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder);
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.bottomPadding = try container.decodeIfPresent(Double.self, forKey: .bottomPadding);
        self.fitText = try container.decodeIfPresent(Bool.self, forKey: .fitText);
        self.horizontalMerge = try container.decodeIfPresent(HorizontalMerge.self, forKey: .horizontalMerge);
        self.leftPadding = try container.decodeIfPresent(Double.self, forKey: .leftPadding);
        self.orientation = try container.decodeIfPresent(Orientation.self, forKey: .orientation);
        self.preferredWidth = try container.decodeIfPresent(PreferredWidth.self, forKey: .preferredWidth);
        self.rightPadding = try container.decodeIfPresent(Double.self, forKey: .rightPadding);
        self.topPadding = try container.decodeIfPresent(Double.self, forKey: .topPadding);
        self.verticalAlignment = try container.decodeIfPresent(VerticalAlignment.self, forKey: .verticalAlignment);
        self.verticalMerge = try container.decodeIfPresent(VerticalMerge.self, forKey: .verticalMerge);
        self.width = try container.decodeIfPresent(Double.self, forKey: .width);
        self.wrapText = try container.decodeIfPresent(Bool.self, forKey: .wrapText);
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder);
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.bottomPadding != nil) {
            try container.encode(self.bottomPadding, forKey: .bottomPadding);
        }
        if (self.fitText != nil) {
            try container.encode(self.fitText, forKey: .fitText);
        }
        if (self.horizontalMerge != nil) {
            try container.encode(self.horizontalMerge, forKey: .horizontalMerge);
        }
        if (self.leftPadding != nil) {
            try container.encode(self.leftPadding, forKey: .leftPadding);
        }
        if (self.orientation != nil) {
            try container.encode(self.orientation, forKey: .orientation);
        }
        if (self.preferredWidth != nil) {
            try container.encode(self.preferredWidth, forKey: .preferredWidth);
        }
        if (self.rightPadding != nil) {
            try container.encode(self.rightPadding, forKey: .rightPadding);
        }
        if (self.topPadding != nil) {
            try container.encode(self.topPadding, forKey: .topPadding);
        }
        if (self.verticalAlignment != nil) {
            try container.encode(self.verticalAlignment, forKey: .verticalAlignment);
        }
        if (self.verticalMerge != nil) {
            try container.encode(self.verticalMerge, forKey: .verticalMerge);
        }
        if (self.width != nil) {
            try container.encode(self.width, forKey: .width);
        }
        if (self.wrapText != nil) {
            try container.encode(self.wrapText, forKey: .wrapText);
        }
    }
        
    public func setBottomPadding(bottomPadding : Double?) {
        self.bottomPadding = bottomPadding;
    }
    
    public func getBottomPadding() -> Double? {
        return self.bottomPadding;
    }
    public func setFitText(fitText : Bool?) {
        self.fitText = fitText;
    }
    
    public func getFitText() -> Bool? {
        return self.fitText;
    }
    public func setHorizontalMerge(horizontalMerge : HorizontalMerge?) {
        self.horizontalMerge = horizontalMerge;
    }
    
    public func getHorizontalMerge() -> HorizontalMerge? {
        return self.horizontalMerge;
    }
    public func setLeftPadding(leftPadding : Double?) {
        self.leftPadding = leftPadding;
    }
    
    public func getLeftPadding() -> Double? {
        return self.leftPadding;
    }
    public func setOrientation(orientation : Orientation?) {
        self.orientation = orientation;
    }
    
    public func getOrientation() -> Orientation? {
        return self.orientation;
    }
    public func setPreferredWidth(preferredWidth : PreferredWidth?) {
        self.preferredWidth = preferredWidth;
    }
    
    public func getPreferredWidth() -> PreferredWidth? {
        return self.preferredWidth;
    }
    public func setRightPadding(rightPadding : Double?) {
        self.rightPadding = rightPadding;
    }
    
    public func getRightPadding() -> Double? {
        return self.rightPadding;
    }
    public func setTopPadding(topPadding : Double?) {
        self.topPadding = topPadding;
    }
    
    public func getTopPadding() -> Double? {
        return self.topPadding;
    }
    public func setVerticalAlignment(verticalAlignment : VerticalAlignment?) {
        self.verticalAlignment = verticalAlignment;
    }
    
    public func getVerticalAlignment() -> VerticalAlignment? {
        return self.verticalAlignment;
    }
    public func setVerticalMerge(verticalMerge : VerticalMerge?) {
        self.verticalMerge = verticalMerge;
    }
    
    public func getVerticalMerge() -> VerticalMerge? {
        return self.verticalMerge;
    }
    public func setWidth(width : Double?) {
        self.width = width;
    }
    
    public func getWidth() -> Double? {
        return self.width;
    }
    public func setWrapText(wrapText : Bool?) {
        self.wrapText = wrapText;
    }
    
    public func getWrapText() -> Bool? {
        return self.wrapText;
    }
}
