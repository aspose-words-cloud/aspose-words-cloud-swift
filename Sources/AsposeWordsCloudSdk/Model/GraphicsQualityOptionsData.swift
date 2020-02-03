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

public class GraphicsQualityOptionsData : Codable {
    // Gets or sets a value that specifies how composited images are drawn to this Graphics.
    public enum CompositingMode : Int, Codable
    { 
        // Enum value "sourceOver"
        case sourceOver
        
        // Enum value "sourceCopy"
        case sourceCopy
        
    }

    // Gets or sets the rendering quality of composited images drawn to this Graphics.
    public enum CompositingQuality : Int, Codable
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
    public enum InterpolationMode : Int, Codable
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
    public enum SmoothingMode : Int, Codable
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
    public enum TextRenderingHint : Int, Codable
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
        
    private enum CodingKeys: String, CodingKey {
        case compositingMode;
        case compositingQuality;
        case interpolationMode;
        case smoothingMode;
        case stringFormat;
        case textRenderingHint;
    }
        
    public init(compositingMode : CompositingMode? = nil, compositingQuality : CompositingQuality? = nil, interpolationMode : InterpolationMode? = nil, smoothingMode : SmoothingMode? = nil, stringFormat : StringFormatData? = nil, textRenderingHint : TextRenderingHint? = nil) {
        self.compositingMode = compositingMode;
        self.compositingQuality = compositingQuality;
        self.interpolationMode = interpolationMode;
        self.smoothingMode = smoothingMode;
        self.stringFormat = stringFormat;
        self.textRenderingHint = textRenderingHint;
    }
    
    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self);
        
        self.compositingMode = try container.decodeIfPresent(CompositingMode.self, forKey: .compositingMode);
        self.compositingQuality = try container.decodeIfPresent(CompositingQuality.self, forKey: .compositingQuality);
        self.interpolationMode = try container.decodeIfPresent(InterpolationMode.self, forKey: .interpolationMode);
        self.smoothingMode = try container.decodeIfPresent(SmoothingMode.self, forKey: .smoothingMode);
        self.stringFormat = try container.decodeIfPresent(StringFormatData.self, forKey: .stringFormat);
        self.textRenderingHint = try container.decodeIfPresent(TextRenderingHint.self, forKey: .textRenderingHint);
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.compositingMode != nil) {
            try container.encode(self.compositingMode, forKey: .compositingMode);
        }
        if (self.compositingQuality != nil) {
            try container.encode(self.compositingQuality, forKey: .compositingQuality);
        }
        if (self.interpolationMode != nil) {
            try container.encode(self.interpolationMode, forKey: .interpolationMode);
        }
        if (self.smoothingMode != nil) {
            try container.encode(self.smoothingMode, forKey: .smoothingMode);
        }
        if (self.stringFormat != nil) {
            try container.encode(self.stringFormat, forKey: .stringFormat);
        }
        if (self.textRenderingHint != nil) {
            try container.encode(self.textRenderingHint, forKey: .textRenderingHint);
        }
        
    }
        
    public func getCompositingMode() -> CompositingMode? {
        return self.compositingMode;
    }
    public func getCompositingQuality() -> CompositingQuality? {
        return self.compositingQuality;
    }
    public func getInterpolationMode() -> InterpolationMode? {
        return self.interpolationMode;
    }
    public func getSmoothingMode() -> SmoothingMode? {
        return self.smoothingMode;
    }
    public func getStringFormat() -> StringFormatData? {
        return self.stringFormat;
    }
    public func getTextRenderingHint() -> TextRenderingHint? {
        return self.textRenderingHint;
    }
}
