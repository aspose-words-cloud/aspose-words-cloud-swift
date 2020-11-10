/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="DrawingObjectInsert.swift">
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

// Drawing object element for insert.
public class DrawingObjectInsert : Codable, WordsApiModel {
    // Gets or sets specifies where the distance to the image is measured from.
    public enum RelativeHorizontalPosition : String, Codable
    {
        // Enum value "margin"
        case margin = "Margin"

        // Enum value "page"
        case page = "Page"

        // Enum value "column"
        case column = "Column"

        // Enum value "_default"
        case _default = "Default"

        // Enum value "character"
        case character = "Character"

        // Enum value "leftMargin"
        case leftMargin = "LeftMargin"

        // Enum value "rightMargin"
        case rightMargin = "RightMargin"

        // Enum value "insideMargin"
        case insideMargin = "InsideMargin"

        // Enum value "outsideMargin"
        case outsideMargin = "OutsideMargin"
    }

    // Gets or sets specifies where the distance to the image measured from.
    public enum RelativeVerticalPosition : String, Codable
    {
        // Enum value "margin"
        case margin = "Margin"

        // Enum value "tableDefault"
        case tableDefault = "TableDefault"

        // Enum value "page"
        case page = "Page"

        // Enum value "paragraph"
        case paragraph = "Paragraph"

        // Enum value "textFrameDefault"
        case textFrameDefault = "TextFrameDefault"

        // Enum value "line"
        case line = "Line"

        // Enum value "topMargin"
        case topMargin = "TopMargin"

        // Enum value "bottomMargin"
        case bottomMargin = "BottomMargin"

        // Enum value "insideMargin"
        case insideMargin = "InsideMargin"

        // Enum value "outsideMargin"
        case outsideMargin = "OutsideMargin"
    }

    // Gets or sets specifies how to wrap text around the image.
    public enum WrapType : String, Codable
    {
        // Enum value "inline"
        case inline = "Inline"

        // Enum value "topBottom"
        case topBottom = "TopBottom"

        // Enum value "square"
        case square = "Square"

        // Enum value "_none"
        case _none = "None"

        // Enum value "tight"
        case tight = "Tight"

        // Enum value "through"
        case through = "Through"
    }

    // Field of height. Drawing object element for insert.
    private var height : Double?;

    // Field of _left. Drawing object element for insert.
    private var _left : Double?;

    // Field of position. Drawing object element for insert.
    private var position : DocumentPosition?;

    // Field of relativeHorizontalPosition. Drawing object element for insert.
    private var relativeHorizontalPosition : RelativeHorizontalPosition?;

    // Field of relativeVerticalPosition. Drawing object element for insert.
    private var relativeVerticalPosition : RelativeVerticalPosition?;

    // Field of top. Drawing object element for insert.
    private var top : Double?;

    // Field of width. Drawing object element for insert.
    private var width : Double?;

    // Field of wrapType. Drawing object element for insert.
    private var wrapType : WrapType?;

    private enum CodingKeys: String, CodingKey {
        case height = "Height";
        case _left = "Left";
        case position = "Position";
        case relativeHorizontalPosition = "RelativeHorizontalPosition";
        case relativeVerticalPosition = "RelativeVerticalPosition";
        case top = "Top";
        case width = "Width";
        case wrapType = "WrapType";
        case invalidCodingKey;
    }

    public init() {
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.height = try container.decodeIfPresent(Double.self, forKey: .height);
        self._left = try container.decodeIfPresent(Double.self, forKey: ._left);
        self.position = try container.decodeIfPresent(DocumentPosition.self, forKey: .position);
        self.relativeHorizontalPosition = try container.decodeIfPresent(RelativeHorizontalPosition.self, forKey: .relativeHorizontalPosition);
        self.relativeVerticalPosition = try container.decodeIfPresent(RelativeVerticalPosition.self, forKey: .relativeVerticalPosition);
        self.top = try container.decodeIfPresent(Double.self, forKey: .top);
        self.width = try container.decodeIfPresent(Double.self, forKey: .width);
        self.wrapType = try container.decodeIfPresent(WrapType.self, forKey: .wrapType);
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.height != nil) {
            try container.encode(self.height, forKey: .height);
        }
        if (self._left != nil) {
            try container.encode(self._left, forKey: ._left);
        }
        if (self.position != nil) {
            try container.encode(self.position, forKey: .position);
        }
        if (self.relativeHorizontalPosition != nil) {
            try container.encode(self.relativeHorizontalPosition, forKey: .relativeHorizontalPosition);
        }
        if (self.relativeVerticalPosition != nil) {
            try container.encode(self.relativeVerticalPosition, forKey: .relativeVerticalPosition);
        }
        if (self.top != nil) {
            try container.encode(self.top, forKey: .top);
        }
        if (self.width != nil) {
            try container.encode(self.width, forKey: .width);
        }
        if (self.wrapType != nil) {
            try container.encode(self.wrapType, forKey: .wrapType);
        }
    }

    // Sets height. Gets or sets height of the drawing object in points.
    public func setHeight(height : Double?) {
        self.height = height;
    }

    // Gets height. Gets or sets height of the drawing object in points.
    public func getHeight() -> Double? {
        return self.height;
    }

    // Sets _left. Gets or sets distance in points from the origin to the left side of the image.
    public func setLeft(_left : Double?) {
        self._left = _left;
    }

    // Gets _left. Gets or sets distance in points from the origin to the left side of the image.
    public func getLeft() -> Double? {
        return self._left;
    }

    // Sets position. Gets or sets drawing object will be inserted before specified position.
    public func setPosition(position : DocumentPosition?) {
        self.position = position;
    }

    // Gets position. Gets or sets drawing object will be inserted before specified position.
    public func getPosition() -> DocumentPosition? {
        return self.position;
    }

    // Sets relativeHorizontalPosition. Gets or sets specifies where the distance to the image is measured from.
    public func setRelativeHorizontalPosition(relativeHorizontalPosition : RelativeHorizontalPosition?) {
        self.relativeHorizontalPosition = relativeHorizontalPosition;
    }

    // Gets relativeHorizontalPosition. Gets or sets specifies where the distance to the image is measured from.
    public func getRelativeHorizontalPosition() -> RelativeHorizontalPosition? {
        return self.relativeHorizontalPosition;
    }

    // Sets relativeVerticalPosition. Gets or sets specifies where the distance to the image measured from.
    public func setRelativeVerticalPosition(relativeVerticalPosition : RelativeVerticalPosition?) {
        self.relativeVerticalPosition = relativeVerticalPosition;
    }

    // Gets relativeVerticalPosition. Gets or sets specifies where the distance to the image measured from.
    public func getRelativeVerticalPosition() -> RelativeVerticalPosition? {
        return self.relativeVerticalPosition;
    }

    // Sets top. Gets or sets distance in points from the origin to the top side of the image.
    public func setTop(top : Double?) {
        self.top = top;
    }

    // Gets top. Gets or sets distance in points from the origin to the top side of the image.
    public func getTop() -> Double? {
        return self.top;
    }

    // Sets width. Gets or sets width of the drawing objects in points.
    public func setWidth(width : Double?) {
        self.width = width;
    }

    // Gets width. Gets or sets width of the drawing objects in points.
    public func getWidth() -> Double? {
        return self.width;
    }

    // Sets wrapType. Gets or sets specifies how to wrap text around the image.
    public func setWrapType(wrapType : WrapType?) {
        self.wrapType = wrapType;
    }

    // Gets wrapType. Gets or sets specifies how to wrap text around the image.
    public func getWrapType() -> WrapType? {
        return self.wrapType;
    }
}
