/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="Border.swift">
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

public class Border : LinkElement {
    // Gets or sets the border type.             
    public enum BorderType
    { 
        // Enum value "bottom"
        case bottom
        
        // Enum value "_left"
        case _left
        
        // Enum value "_right"
        case _right
        
        // Enum value "top"
        case top
        
        // Enum value "horizontal"
        case horizontal
        
        // Enum value "vertical"
        case vertical
        
        // Enum value "diagonalDown"
        case diagonalDown
        
        // Enum value "diagonalUp"
        case diagonalUp
        
        // Enum value "_none"
        case _none
        
    }

    // Gets or sets the border style.
    public enum LineStyle
    { 
        // Enum value "_none"
        case _none
        
        // Enum value "single"
        case single
        
        // Enum value "thick"
        case thick
        
        // Enum value "double"
        case double
        
        // Enum value "hairline"
        case hairline
        
        // Enum value "dot"
        case dot
        
        // Enum value "dashLargeGap"
        case dashLargeGap
        
        // Enum value "dotDash"
        case dotDash
        
        // Enum value "dotDotDash"
        case dotDotDash
        
        // Enum value "triple"
        case triple
        
        // Enum value "thinThickSmallGap"
        case thinThickSmallGap
        
        // Enum value "thickThinSmallGap"
        case thickThinSmallGap
        
        // Enum value "thinThickThinSmallGap"
        case thinThickThinSmallGap
        
        // Enum value "thinThickMediumGap"
        case thinThickMediumGap
        
        // Enum value "thickThinMediumGap"
        case thickThinMediumGap
        
        // Enum value "thinThickThinMediumGap"
        case thinThickThinMediumGap
        
        // Enum value "thinThickLargeGap"
        case thinThickLargeGap
        
        // Enum value "thickThinLargeGap"
        case thickThinLargeGap
        
        // Enum value "thinThickThinLargeGap"
        case thinThickThinLargeGap
        
        // Enum value "wave"
        case wave
        
        // Enum value "doubleWave"
        case doubleWave
        
        // Enum value "dashSmallGap"
        case dashSmallGap
        
        // Enum value "dashDotStroker"
        case dashDotStroker
        
        // Enum value "emboss3D"
        case emboss3D
        
        // Enum value "engrave3D"
        case engrave3D
        
        // Enum value "outset"
        case outset
        
        // Enum value "inset"
        case inset
        
    }

        
    // Gets or sets the border type.             
    private let borderType : BorderType?;
    // Gets or sets the border color.             
    private let color : XmlColor?;
    // Gets or sets distance of the border from text or from the page edge in points.
    private let distanceFromText : Double?;
    // Gets or sets the border style.
    private let lineStyle : LineStyle?;
    // Gets or sets the border width in points.
    private let lineWidth : Double?;
    // Gets or sets a value indicating whether the border has a shadow.
    private let shadow : Bool?;
        
    public init(borderType : BorderType? = nil, color : XmlColor? = nil, distanceFromText : Double? = nil, lineStyle : LineStyle? = nil, lineWidth : Double? = nil, shadow : Bool? = nil) {
        self.borderType = borderType;
        self.color = color;
        self.distanceFromText = distanceFromText;
        self.lineStyle = lineStyle;
        self.lineWidth = lineWidth;
        self.shadow = shadow;
    }
        
    public func getBorderType() -> BorderType? {
        return self.borderType;
    }
    public func getColor() -> XmlColor? {
        return self.color;
    }
    public func getDistanceFromText() -> Double? {
        return self.distanceFromText;
    }
    public func getLineStyle() -> LineStyle? {
        return self.lineStyle;
    }
    public func getLineWidth() -> Double? {
        return self.lineWidth;
    }
    public func getShadow() -> Bool? {
        return self.shadow;
    }
}
