/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="Border.swift">
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

// Represents a border of an object.
public class Border : LinkElement {
    // Gets or sets the border type.
    public enum BorderType : String, Codable
    {
        // Enum value "bottom"
        case bottom = "Bottom"

        // Enum value "_left"
        case _left = "Left"

        // Enum value "_right"
        case _right = "Right"

        // Enum value "top"
        case top = "Top"

        // Enum value "horizontal"
        case horizontal = "Horizontal"

        // Enum value "vertical"
        case vertical = "Vertical"

        // Enum value "diagonalDown"
        case diagonalDown = "DiagonalDown"

        // Enum value "diagonalUp"
        case diagonalUp = "DiagonalUp"

        // Enum value "_none"
        case _none = "None"
    }

    // Gets or sets the border style.
    public enum LineStyle : String, Codable
    {
        // Enum value "_none"
        case _none = "None"

        // Enum value "single"
        case single = "Single"

        // Enum value "thick"
        case thick = "Thick"

        // Enum value "double"
        case double = "Double"

        // Enum value "hairline"
        case hairline = "Hairline"

        // Enum value "dot"
        case dot = "Dot"

        // Enum value "dashLargeGap"
        case dashLargeGap = "DashLargeGap"

        // Enum value "dotDash"
        case dotDash = "DotDash"

        // Enum value "dotDotDash"
        case dotDotDash = "DotDotDash"

        // Enum value "triple"
        case triple = "Triple"

        // Enum value "thinThickSmallGap"
        case thinThickSmallGap = "ThinThickSmallGap"

        // Enum value "thickThinSmallGap"
        case thickThinSmallGap = "ThickThinSmallGap"

        // Enum value "thinThickThinSmallGap"
        case thinThickThinSmallGap = "ThinThickThinSmallGap"

        // Enum value "thinThickMediumGap"
        case thinThickMediumGap = "ThinThickMediumGap"

        // Enum value "thickThinMediumGap"
        case thickThinMediumGap = "ThickThinMediumGap"

        // Enum value "thinThickThinMediumGap"
        case thinThickThinMediumGap = "ThinThickThinMediumGap"

        // Enum value "thinThickLargeGap"
        case thinThickLargeGap = "ThinThickLargeGap"

        // Enum value "thickThinLargeGap"
        case thickThinLargeGap = "ThickThinLargeGap"

        // Enum value "thinThickThinLargeGap"
        case thinThickThinLargeGap = "ThinThickThinLargeGap"

        // Enum value "wave"
        case wave = "Wave"

        // Enum value "doubleWave"
        case doubleWave = "DoubleWave"

        // Enum value "dashSmallGap"
        case dashSmallGap = "DashSmallGap"

        // Enum value "dashDotStroker"
        case dashDotStroker = "DashDotStroker"

        // Enum value "emboss3D"
        case emboss3D = "Emboss3D"

        // Enum value "engrave3D"
        case engrave3D = "Engrave3D"

        // Enum value "outset"
        case outset = "Outset"

        // Enum value "inset"
        case inset = "Inset"
    }

    // Field of borderType. Represents a border of an object.
    private var borderType : BorderType?;

    // Field of color. Represents a border of an object.
    private var color : XmlColor?;

    // Field of distanceFromText. Represents a border of an object.
    private var distanceFromText : Double?;

    // Field of lineStyle. Represents a border of an object.
    private var lineStyle : LineStyle?;

    // Field of lineWidth. Represents a border of an object.
    private var lineWidth : Double?;

    // Field of shadow. Represents a border of an object.
    private var shadow : Bool?;

    private enum CodingKeys: String, CodingKey {
        case borderType = "BorderType";
        case color = "Color";
        case distanceFromText = "DistanceFromText";
        case lineStyle = "LineStyle";
        case lineWidth = "LineWidth";
        case shadow = "Shadow";
        case invalidCodingKey;
    }

    public override init() {
        super.init();
    }

    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder);
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.borderType = try container.decodeIfPresent(BorderType.self, forKey: .borderType);
        self.color = try container.decodeIfPresent(XmlColor.self, forKey: .color);
        self.distanceFromText = try container.decodeIfPresent(Double.self, forKey: .distanceFromText);
        self.lineStyle = try container.decodeIfPresent(LineStyle.self, forKey: .lineStyle);
        self.lineWidth = try container.decodeIfPresent(Double.self, forKey: .lineWidth);
        self.shadow = try container.decodeIfPresent(Bool.self, forKey: .shadow);
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder);
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.borderType != nil) {
            try container.encode(self.borderType, forKey: .borderType);
        }
        if (self.color != nil) {
            try container.encode(self.color, forKey: .color);
        }
        if (self.distanceFromText != nil) {
            try container.encode(self.distanceFromText, forKey: .distanceFromText);
        }
        if (self.lineStyle != nil) {
            try container.encode(self.lineStyle, forKey: .lineStyle);
        }
        if (self.lineWidth != nil) {
            try container.encode(self.lineWidth, forKey: .lineWidth);
        }
        if (self.shadow != nil) {
            try container.encode(self.shadow, forKey: .shadow);
        }
    }

    // Sets borderType. Gets or sets the border type.
    public func setBorderType(borderType : BorderType?) {
        self.borderType = borderType;
    }

    // Gets borderType. Gets or sets the border type.
    public func getBorderType() -> BorderType? {
        return self.borderType;
    }

    // Sets color. Gets or sets the border color.
    public func setColor(color : XmlColor?) {
        self.color = color;
    }

    // Gets color. Gets or sets the border color.
    public func getColor() -> XmlColor? {
        return self.color;
    }

    // Sets distanceFromText. Gets or sets the distance of the border from text or from the page edge in points.
    public func setDistanceFromText(distanceFromText : Double?) {
        self.distanceFromText = distanceFromText;
    }

    // Gets distanceFromText. Gets or sets the distance of the border from text or from the page edge in points.
    public func getDistanceFromText() -> Double? {
        return self.distanceFromText;
    }

    // Sets lineStyle. Gets or sets the border style.
    public func setLineStyle(lineStyle : LineStyle?) {
        self.lineStyle = lineStyle;
    }

    // Gets lineStyle. Gets or sets the border style.
    public func getLineStyle() -> LineStyle? {
        return self.lineStyle;
    }

    // Sets lineWidth. Gets or sets the border width in points.
    public func setLineWidth(lineWidth : Double?) {
        self.lineWidth = lineWidth;
    }

    // Gets lineWidth. Gets or sets the border width in points.
    public func getLineWidth() -> Double? {
        return self.lineWidth;
    }

    // Sets shadow. Gets or sets a value indicating whether the border has a shadow.
    public func setShadow(shadow : Bool?) {
        self.shadow = shadow;
    }

    // Gets shadow. Gets or sets a value indicating whether the border has a shadow.
    public func getShadow() -> Bool? {
        return self.shadow;
    }
}
