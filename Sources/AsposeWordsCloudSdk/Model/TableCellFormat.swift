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
    public enum HorizontalMerge
    { 
        // Enum value "_none"
        case _none
        
        // Enum value "first"
        case first
        
        // Enum value "previous"
        case previous
        
    }

    // Gets or sets returns or sets the orientation of text in a table cell.
    public enum Orientation
    { 
        // Enum value "horizontal"
        case horizontal
        
        // Enum value "downward"
        case downward
        
        // Enum value "upward"
        case upward
        
        // Enum value "horizontalRotatedFarEast"
        case horizontalRotatedFarEast
        
        // Enum value "verticalFarEast"
        case verticalFarEast
        
        // Enum value "verticalRotatedFarEast"
        case verticalRotatedFarEast
        
    }

    // Gets or sets returns or sets the vertical alignment of text in the cell.
    public enum VerticalAlignment
    { 
        // Enum value "top"
        case top
        
        // Enum value "center"
        case center
        
        // Enum value "bottom"
        case bottom
        
    }

    // Gets or sets specifies how the cell is merged with other cells vertically.
    public enum VerticalMerge
    { 
        // Enum value "_none"
        case _none
        
        // Enum value "first"
        case first
        
        // Enum value "previous"
        case previous
        
    }

        
    // Gets or sets returns or sets the amount of space (in points) to add below the contents of cell.
    private let bottomPadding : Double?;
    // Gets or sets if true, fits text in the cell, compressing each paragraph to the width of the cell.
    private let fitText : Bool?;
    // Gets or sets specifies how the cell is merged horizontally with other cells in the row.
    private let horizontalMerge : HorizontalMerge?;
    // Gets or sets returns or sets the amount of space (in points) to add to the left of the contents of cell.
    private let leftPadding : Double?;
    // Gets or sets returns or sets the orientation of text in a table cell.
    private let orientation : Orientation?;
    // Gets or sets returns or sets the preferred width of the cell.
    private let preferredWidth : PreferredWidth?;
    // Gets or sets returns or sets the amount of space (in points) to add to the right of the contents of cell.
    private let rightPadding : Double?;
    // Gets or sets returns or sets the amount of space (in points) to add above the contents of cell.
    private let topPadding : Double?;
    // Gets or sets returns or sets the vertical alignment of text in the cell.
    private let verticalAlignment : VerticalAlignment?;
    // Gets or sets specifies how the cell is merged with other cells vertically.
    private let verticalMerge : VerticalMerge?;
    // Gets or sets the width of the cell in points.
    private let width : Double?;
    // Gets or sets if true, wrap text for the cell.
    private let wrapText : Bool?;
        
    private enum CodingKeys: String, CodingKey { case bottomPadding, fitText, horizontalMerge, leftPadding, orientation, preferredWidth, rightPadding, topPadding, verticalAlignment, verticalMerge, width, wrapText }
        
    public init(bottomPadding : Double? = nil, fitText : Bool? = nil, horizontalMerge : HorizontalMerge? = nil, leftPadding : Double? = nil, orientation : Orientation? = nil, preferredWidth : PreferredWidth? = nil, rightPadding : Double? = nil, topPadding : Double? = nil, verticalAlignment : VerticalAlignment? = nil, verticalMerge : VerticalMerge? = nil, width : Double? = nil, wrapText : Bool? = nil) {
        self.bottomPadding = bottomPadding;
        self.fitText = fitText;
        self.horizontalMerge = horizontalMerge;
        self.leftPadding = leftPadding;
        self.orientation = orientation;
        self.preferredWidth = preferredWidth;
        self.rightPadding = rightPadding;
        self.topPadding = topPadding;
        self.verticalAlignment = verticalAlignment;
        self.verticalMerge = verticalMerge;
        self.width = width;
        self.wrapText = wrapText;
    }
    
    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self);
        try super.init(from: try container.superDecoder());
        if let bottomPadding = try container.decodeIfPresent(Double.self, forKey: .bottomPadding) {
            self.bottomPadding = bottomPadding;
        }
        if let fitText = try container.decodeIfPresent(Bool.self, forKey: .fitText) {
            self.fitText = fitText;
        }
        if let horizontalMerge = try container.decodeIfPresent(HorizontalMerge.self, forKey: .horizontalMerge) {
            self.horizontalMerge = horizontalMerge;
        }
        if let leftPadding = try container.decodeIfPresent(Double.self, forKey: .leftPadding) {
            self.leftPadding = leftPadding;
        }
        if let orientation = try container.decodeIfPresent(Orientation.self, forKey: .orientation) {
            self.orientation = orientation;
        }
        if let preferredWidth = try container.decodeIfPresent(PreferredWidth.self, forKey: .preferredWidth) {
            self.preferredWidth = preferredWidth;
        }
        if let rightPadding = try container.decodeIfPresent(Double.self, forKey: .rightPadding) {
            self.rightPadding = rightPadding;
        }
        if let topPadding = try container.decodeIfPresent(Double.self, forKey: .topPadding) {
            self.topPadding = topPadding;
        }
        if let verticalAlignment = try container.decodeIfPresent(VerticalAlignment.self, forKey: .verticalAlignment) {
            self.verticalAlignment = verticalAlignment;
        }
        if let verticalMerge = try container.decodeIfPresent(VerticalMerge.self, forKey: .verticalMerge) {
            self.verticalMerge = verticalMerge;
        }
        if let width = try container.decodeIfPresent(Double.self, forKey: .width) {
            self.width = width;
        }
        if let wrapText = try container.decodeIfPresent(Bool.self, forKey: .wrapText) {
            self.wrapText = wrapText;
        }

    }

    public func encode(to encoder: Encoder) throws {
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
        
        try super.encode(to: container.superEncoder());
    }
        
    public func getBottomPadding() -> Double? {
        return self.bottomPadding;
    }
    public func getFitText() -> Bool? {
        return self.fitText;
    }
    public func getHorizontalMerge() -> HorizontalMerge? {
        return self.horizontalMerge;
    }
    public func getLeftPadding() -> Double? {
        return self.leftPadding;
    }
    public func getOrientation() -> Orientation? {
        return self.orientation;
    }
    public func getPreferredWidth() -> PreferredWidth? {
        return self.preferredWidth;
    }
    public func getRightPadding() -> Double? {
        return self.rightPadding;
    }
    public func getTopPadding() -> Double? {
        return self.topPadding;
    }
    public func getVerticalAlignment() -> VerticalAlignment? {
        return self.verticalAlignment;
    }
    public func getVerticalMerge() -> VerticalMerge? {
        return self.verticalMerge;
    }
    public func getWidth() -> Double? {
        return self.width;
    }
    public func getWrapText() -> Bool? {
        return self.wrapText;
    }
}
