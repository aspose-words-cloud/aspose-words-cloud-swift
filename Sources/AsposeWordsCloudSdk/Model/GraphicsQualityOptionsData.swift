/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="GraphicsQualityOptionsData.swift">
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

// Allows to specify additional System.Drawing.Graphics quality options.
public class GraphicsQualityOptionsData : Codable, WordsApiModel {
    // Gets or sets a value that specifies how composited images are drawn to this Graphics.
    public enum CompositingMode : String, Codable
    { 
        // Enum value "sourceOver"
        case sourceOver = "SourceOver"
        
        // Enum value "sourceCopy"
        case sourceCopy = "SourceCopy"
        
    }

    // Gets or sets the rendering quality of composited images drawn to this Graphics.
    public enum CompositingQuality : String, Codable
    { 
        // Enum value "_default"
        case _default = "Default"
        
        // Enum value "highSpeed"
        case highSpeed = "HighSpeed"
        
        // Enum value "highQuality"
        case highQuality = "HighQuality"
        
        // Enum value "gammaCorrected"
        case gammaCorrected = "GammaCorrected"
        
        // Enum value "assumeLinear"
        case assumeLinear = "AssumeLinear"
        
        // Enum value "invalid"
        case invalid = "Invalid"
        
    }

    // Gets or sets the interpolation mode associated with this Graphics.
    public enum InterpolationMode : String, Codable
    { 
        // Enum value "_default"
        case _default = "Default"
        
        // Enum value "low"
        case low = "Low"
        
        // Enum value "high"
        case high = "High"
        
        // Enum value "bilinear"
        case bilinear = "Bilinear"
        
        // Enum value "bicubic"
        case bicubic = "Bicubic"
        
        // Enum value "nearestNeighbor"
        case nearestNeighbor = "NearestNeighbor"
        
        // Enum value "highQualityBilinear"
        case highQualityBilinear = "HighQualityBilinear"
        
        // Enum value "highQualityBicubic"
        case highQualityBicubic = "HighQualityBicubic"
        
        // Enum value "invalid"
        case invalid = "Invalid"
        
    }

    // Gets or sets the rendering quality for this Graphics.
    public enum SmoothingMode : String, Codable
    { 
        // Enum value "_default"
        case _default = "Default"
        
        // Enum value "highSpeed"
        case highSpeed = "HighSpeed"
        
        // Enum value "highQuality"
        case highQuality = "HighQuality"
        
        // Enum value "_none"
        case _none = "None"
        
        // Enum value "antiAlias"
        case antiAlias = "AntiAlias"
        
        // Enum value "invalid"
        case invalid = "Invalid"
        
    }

    // Gets or sets the rendering mode for text associated with this Graphics.
    public enum TextRenderingHint : String, Codable
    { 
        // Enum value "systemDefault"
        case systemDefault = "SystemDefault"
        
        // Enum value "singleBitPerPixelGridFit"
        case singleBitPerPixelGridFit = "SingleBitPerPixelGridFit"
        
        // Enum value "singleBitPerPixel"
        case singleBitPerPixel = "SingleBitPerPixel"
        
        // Enum value "antiAliasGridFit"
        case antiAliasGridFit = "AntiAliasGridFit"
        
        // Enum value "antiAlias"
        case antiAlias = "AntiAlias"
        
        // Enum value "clearTypeGridFit"
        case clearTypeGridFit = "ClearTypeGridFit"
        
    }

    
    // Field of compositingMode. Gets or sets a value that specifies how composited images are drawn to this Graphics.      
    private var compositingMode : CompositingMode?;
    
    // Field of compositingQuality. Gets or sets the rendering quality of composited images drawn to this Graphics.      
    private var compositingQuality : CompositingQuality?;
    
    // Field of interpolationMode. Gets or sets the interpolation mode associated with this Graphics.      
    private var interpolationMode : InterpolationMode?;
    
    // Field of smoothingMode. Gets or sets the rendering quality for this Graphics.      
    private var smoothingMode : SmoothingMode?;
    
    // Field of stringFormat. Gets or sets text layout information (such as alignment, orientation and tab stops) display manipulations (such as ellipsis insertion and national digit substitution) and OpenType features.      
    private var stringFormat : StringFormatData?;
    
    // Field of textRenderingHint. Gets or sets the rendering mode for text associated with this Graphics.      
    private var textRenderingHint : TextRenderingHint?;
        
    private enum CodingKeys: String, CodingKey {
        case compositingMode;
        case compositingQuality;
        case interpolationMode;
        case smoothingMode;
        case stringFormat;
        case textRenderingHint;
        case invalidCodingKey;
    }
        
    public init() {
        
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
    
    // Sets compositingMode. Gets or sets a value that specifies how composited images are drawn to this Graphics.  
    public func setCompositingMode(compositingMode : CompositingMode?) {
        self.compositingMode = compositingMode;
    }
    
    // Gets compositingMode. Gets or sets a value that specifies how composited images are drawn to this Graphics.  
    public func getCompositingMode() -> CompositingMode? {
        return self.compositingMode;
    }
    
    // Sets compositingQuality. Gets or sets the rendering quality of composited images drawn to this Graphics.  
    public func setCompositingQuality(compositingQuality : CompositingQuality?) {
        self.compositingQuality = compositingQuality;
    }
    
    // Gets compositingQuality. Gets or sets the rendering quality of composited images drawn to this Graphics.  
    public func getCompositingQuality() -> CompositingQuality? {
        return self.compositingQuality;
    }
    
    // Sets interpolationMode. Gets or sets the interpolation mode associated with this Graphics.  
    public func setInterpolationMode(interpolationMode : InterpolationMode?) {
        self.interpolationMode = interpolationMode;
    }
    
    // Gets interpolationMode. Gets or sets the interpolation mode associated with this Graphics.  
    public func getInterpolationMode() -> InterpolationMode? {
        return self.interpolationMode;
    }
    
    // Sets smoothingMode. Gets or sets the rendering quality for this Graphics.  
    public func setSmoothingMode(smoothingMode : SmoothingMode?) {
        self.smoothingMode = smoothingMode;
    }
    
    // Gets smoothingMode. Gets or sets the rendering quality for this Graphics.  
    public func getSmoothingMode() -> SmoothingMode? {
        return self.smoothingMode;
    }
    
    // Sets stringFormat. Gets or sets text layout information (such as alignment, orientation and tab stops) display manipulations (such as ellipsis insertion and national digit substitution) and OpenType features.  
    public func setStringFormat(stringFormat : StringFormatData?) {
        self.stringFormat = stringFormat;
    }
    
    // Gets stringFormat. Gets or sets text layout information (such as alignment, orientation and tab stops) display manipulations (such as ellipsis insertion and national digit substitution) and OpenType features.  
    public func getStringFormat() -> StringFormatData? {
        return self.stringFormat;
    }
    
    // Sets textRenderingHint. Gets or sets the rendering mode for text associated with this Graphics.  
    public func setTextRenderingHint(textRenderingHint : TextRenderingHint?) {
        self.textRenderingHint = textRenderingHint;
    }
    
    // Gets textRenderingHint. Gets or sets the rendering mode for text associated with this Graphics.  
    public func getTextRenderingHint() -> TextRenderingHint? {
        return self.textRenderingHint;
    }
}
