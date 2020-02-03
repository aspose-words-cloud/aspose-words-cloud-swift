/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="ImageSaveOptionsData.swift">
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

public class ImageSaveOptionsData : FixedPageSaveOptionsData {
        
    // Gets or sets allows to specify additional System.Drawing.Graphics quality options.
    private let graphicsQualityOptions : GraphicsQualityOptionsData?;
    // Gets or sets the horizontal resolution for the generated images, in dots per inch.  This property has effect only when saving to raster image formats. The default value is 96.
    private let horizontalResolution : Double?;
    // Gets or sets brightness of image.
    private let imageBrightness : Double?;
    // Gets or sets color mode of image.
    private let imageColorMode : String?;
    // Gets or sets contrast of image.
    private let imageContrast : Double?;
    // Gets or sets background (paper) color of image.
    private let paperColor : String?;
    // Gets or sets pixel format of image.
    private let pixelFormat : String?;
    // Gets or sets both horizontal and vertical resolution for the generated images, in dots per inch.  This property has effect only when saving to raster image formats. The default value is 96.
    private let resolution : Double?;
    // Gets or sets zoom factor of image.
    private let scale : Double?;
    // Gets or sets determine whether or not to use anti-aliasing for rendering.
    private let useAntiAliasing : Bool?;
    // Gets or sets a value determining whether to use GDI+ or Aspose.Words metafile renderer when saving to EMF.
    private let useGdiEmfRenderer : Bool?;
    // Gets or sets determine whether or not to use high quality (i.e. slow) rendering algorithms.
    private let useHighQualityRendering : Bool?;
    // Gets or sets the vertical resolution for the generated images, in dots per inch.  This property has effect only when saving to raster image formats. The default value is 96.
    private let verticalResolution : Double?;
        
    private enum CodingKeys: String, CodingKey { case graphicsQualityOptions, horizontalResolution, imageBrightness, imageColorMode, imageContrast, paperColor, pixelFormat, resolution, scale, useAntiAliasing, useGdiEmfRenderer, useHighQualityRendering, verticalResolution }
        
    public init(graphicsQualityOptions : GraphicsQualityOptionsData? = nil, horizontalResolution : Double? = nil, imageBrightness : Double? = nil, imageColorMode : String? = nil, imageContrast : Double? = nil, paperColor : String? = nil, pixelFormat : String? = nil, resolution : Double? = nil, scale : Double? = nil, useAntiAliasing : Bool? = nil, useGdiEmfRenderer : Bool? = nil, useHighQualityRendering : Bool? = nil, verticalResolution : Double? = nil) {
        self.graphicsQualityOptions = graphicsQualityOptions;
        self.horizontalResolution = horizontalResolution;
        self.imageBrightness = imageBrightness;
        self.imageColorMode = imageColorMode;
        self.imageContrast = imageContrast;
        self.paperColor = paperColor;
        self.pixelFormat = pixelFormat;
        self.resolution = resolution;
        self.scale = scale;
        self.useAntiAliasing = useAntiAliasing;
        self.useGdiEmfRenderer = useGdiEmfRenderer;
        self.useHighQualityRendering = useHighQualityRendering;
        self.verticalResolution = verticalResolution;
    }
    
    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self);
        try super.init(from: try container.superDecoder());
        self.graphicsQualityOptions = try container.decodeIfPresent(GraphicsQualityOptionsData.self, forKey: .graphicsQualityOptions);
        self.horizontalResolution = try container.decodeIfPresent(Double.self, forKey: .horizontalResolution);
        self.imageBrightness = try container.decodeIfPresent(Double.self, forKey: .imageBrightness);
        self.imageColorMode = try container.decodeIfPresent(String.self, forKey: .imageColorMode);
        self.imageContrast = try container.decodeIfPresent(Double.self, forKey: .imageContrast);
        self.paperColor = try container.decodeIfPresent(String.self, forKey: .paperColor);
        self.pixelFormat = try container.decodeIfPresent(String.self, forKey: .pixelFormat);
        self.resolution = try container.decodeIfPresent(Double.self, forKey: .resolution);
        self.scale = try container.decodeIfPresent(Double.self, forKey: .scale);
        self.useAntiAliasing = try container.decodeIfPresent(Bool.self, forKey: .useAntiAliasing);
        self.useGdiEmfRenderer = try container.decodeIfPresent(Bool.self, forKey: .useGdiEmfRenderer);
        self.useHighQualityRendering = try container.decodeIfPresent(Bool.self, forKey: .useHighQualityRendering);
        self.verticalResolution = try container.decodeIfPresent(Double.self, forKey: .verticalResolution);
    }

    public override func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.graphicsQualityOptions != nil) {
            try container.encode(self.graphicsQualityOptions, forKey: .graphicsQualityOptions);
        }
        if (self.horizontalResolution != nil) {
            try container.encode(self.horizontalResolution, forKey: .horizontalResolution);
        }
        if (self.imageBrightness != nil) {
            try container.encode(self.imageBrightness, forKey: .imageBrightness);
        }
        if (self.imageColorMode != nil) {
            try container.encode(self.imageColorMode, forKey: .imageColorMode);
        }
        if (self.imageContrast != nil) {
            try container.encode(self.imageContrast, forKey: .imageContrast);
        }
        if (self.paperColor != nil) {
            try container.encode(self.paperColor, forKey: .paperColor);
        }
        if (self.pixelFormat != nil) {
            try container.encode(self.pixelFormat, forKey: .pixelFormat);
        }
        if (self.resolution != nil) {
            try container.encode(self.resolution, forKey: .resolution);
        }
        if (self.scale != nil) {
            try container.encode(self.scale, forKey: .scale);
        }
        if (self.useAntiAliasing != nil) {
            try container.encode(self.useAntiAliasing, forKey: .useAntiAliasing);
        }
        if (self.useGdiEmfRenderer != nil) {
            try container.encode(self.useGdiEmfRenderer, forKey: .useGdiEmfRenderer);
        }
        if (self.useHighQualityRendering != nil) {
            try container.encode(self.useHighQualityRendering, forKey: .useHighQualityRendering);
        }
        if (self.verticalResolution != nil) {
            try container.encode(self.verticalResolution, forKey: .verticalResolution);
        }
        try super.encode(to: container.superEncoder());
    }
        
    public func getGraphicsQualityOptions() -> GraphicsQualityOptionsData? {
        return self.graphicsQualityOptions;
    }
    public func getHorizontalResolution() -> Double? {
        return self.horizontalResolution;
    }
    public func getImageBrightness() -> Double? {
        return self.imageBrightness;
    }
    public func getImageColorMode() -> String? {
        return self.imageColorMode;
    }
    public func getImageContrast() -> Double? {
        return self.imageContrast;
    }
    public func getPaperColor() -> String? {
        return self.paperColor;
    }
    public func getPixelFormat() -> String? {
        return self.pixelFormat;
    }
    public func getResolution() -> Double? {
        return self.resolution;
    }
    public func getScale() -> Double? {
        return self.scale;
    }
    public func getUseAntiAliasing() -> Bool? {
        return self.useAntiAliasing;
    }
    public func getUseGdiEmfRenderer() -> Bool? {
        return self.useGdiEmfRenderer;
    }
    public func getUseHighQualityRendering() -> Bool? {
        return self.useHighQualityRendering;
    }
    public func getVerticalResolution() -> Double? {
        return self.verticalResolution;
    }
}
