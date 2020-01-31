/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="GraphicsQualityOptionsData.swift">
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

public class GraphicsQualityOptionsData : Decodable {
    // Gets or sets a value that specifies how composited images are drawn to this Graphics.
    public enum CompositingMode
    { 
        // Enum value "sourceOver"
        case sourceOver
        
        // Enum value "sourceCopy"
        case sourceCopy
        
    }

    // Gets or sets the rendering quality of composited images drawn to this Graphics.
    public enum CompositingQuality
    { 
        // Enum value "_default"
        case _default
        
        // Enum value "highSpeed"
        case highSpeed
        
        // Enum value "highQuality"
        case highQuality
        
        // Enum value "gammaCorrected"
        case gammaCorrected
        
        // Enum value "assumeLinear"
        case assumeLinear
        
        // Enum value "invalid"
        case invalid
        
    }

    // Gets or sets the interpolation mode associated with this Graphics.
    public enum InterpolationMode
    { 
        // Enum value "_default"
        case _default
        
        // Enum value "low"
        case low
        
        // Enum value "high"
        case high
        
        // Enum value "bilinear"
        case bilinear
        
        // Enum value "bicubic"
        case bicubic
        
        // Enum value "nearestNeighbor"
        case nearestNeighbor
        
        // Enum value "highQualityBilinear"
        case highQualityBilinear
        
        // Enum value "highQualityBicubic"
        case highQualityBicubic
        
        // Enum value "invalid"
        case invalid
        
    }

    // Gets or sets the rendering quality for this Graphics.
    public enum SmoothingMode
    { 
        // Enum value "_default"
        case _default
        
        // Enum value "highSpeed"
        case highSpeed
        
        // Enum value "highQuality"
        case highQuality
        
        // Enum value "_none"
        case _none
        
        // Enum value "antiAlias"
        case antiAlias
        
        // Enum value "invalid"
        case invalid
        
    }

    // Gets or sets the rendering mode for text associated with this Graphics.
    public enum TextRenderingHint
    { 
        // Enum value "systemDefault"
        case systemDefault
        
        // Enum value "singleBitPerPixelGridFit"
        case singleBitPerPixelGridFit
        
        // Enum value "singleBitPerPixel"
        case singleBitPerPixel
        
        // Enum value "antiAliasGridFit"
        case antiAliasGridFit
        
        // Enum value "antiAlias"
        case antiAlias
        
        // Enum value "clearTypeGridFit"
        case clearTypeGridFit
        
    }

        
    // Gets or sets a value that specifies how composited images are drawn to this Graphics.
    private let compositingMode : CompositingMode?;
    // Gets or sets the rendering quality of composited images drawn to this Graphics.
    private let compositingQuality : CompositingQuality?;
    // Gets or sets the interpolation mode associated with this Graphics.
    private let interpolationMode : InterpolationMode?;
    // Gets or sets the rendering quality for this Graphics.
    private let smoothingMode : SmoothingMode?;
    // Gets or sets text layout information (such as alignment, orientation and tab stops) display manipulations (such as ellipsis insertion and national digit substitution) and OpenType features.
    private let stringFormat : StringFormatData?;
    // Gets or sets the rendering mode for text associated with this Graphics.
    private let textRenderingHint : TextRenderingHint?;
        
    public init(compositingMode : CompositingMode? = nil, compositingQuality : CompositingQuality? = nil, interpolationMode : InterpolationMode? = nil, smoothingMode : SmoothingMode? = nil, stringFormat : StringFormatData? = nil, textRenderingHint : TextRenderingHint? = nil) {
        self.compositingMode = compositingMode;
        self.compositingQuality = compositingQuality;
        self.interpolationMode = interpolationMode;
        self.smoothingMode = smoothingMode;
        self.stringFormat = stringFormat;
        self.textRenderingHint = textRenderingHint;
    }
        
    public func getGraphicsQualityOptionsData() -> CompositingMode? {
        return self.compositingMode;
    }
    public func getGraphicsQualityOptionsData() -> CompositingQuality? {
        return self.compositingQuality;
    }
    public func getGraphicsQualityOptionsData() -> InterpolationMode? {
        return self.interpolationMode;
    }
    public func getGraphicsQualityOptionsData() -> SmoothingMode? {
        return self.smoothingMode;
    }
    public func getGraphicsQualityOptionsData() -> StringFormatData? {
        return self.stringFormat;
    }
    public func getGraphicsQualityOptionsData() -> TextRenderingHint? {
        return self.textRenderingHint;
    }
}
