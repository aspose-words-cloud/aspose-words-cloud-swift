/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="ImageSaveOptionsData.swift">
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

// Container abstract class for image save options.
public class ImageSaveOptionsData : FixedPageSaveOptionsData {
    // Field of graphicsQualityOptions. Container abstract class for image save options.
    private var graphicsQualityOptions : GraphicsQualityOptionsData?;

    // Field of horizontalResolution. Container abstract class for image save options.
    private var horizontalResolution : Double?;

    // Field of imageBrightness. Container abstract class for image save options.
    private var imageBrightness : Double?;

    // Field of imageColorMode. Container abstract class for image save options.
    private var imageColorMode : String?;

    // Field of imageContrast. Container abstract class for image save options.
    private var imageContrast : Double?;

    // Field of paperColor. Container abstract class for image save options.
    private var paperColor : String?;

    // Field of pixelFormat. Container abstract class for image save options.
    private var pixelFormat : String?;

    // Field of resolution. Container abstract class for image save options.
    private var resolution : Double?;

    // Field of scale. Container abstract class for image save options.
    private var scale : Double?;

    // Field of useAntiAliasing. Container abstract class for image save options.
    private var useAntiAliasing : Bool?;

    // Field of useGdiEmfRenderer. Container abstract class for image save options.
    private var useGdiEmfRenderer : Bool?;

    // Field of useHighQualityRendering. Container abstract class for image save options.
    private var useHighQualityRendering : Bool?;

    // Field of verticalResolution. Container abstract class for image save options.
    private var verticalResolution : Double?;

    private enum CodingKeys: String, CodingKey {
        case graphicsQualityOptions = "GraphicsQualityOptions";
        case horizontalResolution = "HorizontalResolution";
        case imageBrightness = "ImageBrightness";
        case imageColorMode = "ImageColorMode";
        case imageContrast = "ImageContrast";
        case paperColor = "PaperColor";
        case pixelFormat = "PixelFormat";
        case resolution = "Resolution";
        case scale = "Scale";
        case useAntiAliasing = "UseAntiAliasing";
        case useGdiEmfRenderer = "UseGdiEmfRenderer";
        case useHighQualityRendering = "UseHighQualityRendering";
        case verticalResolution = "VerticalResolution";
        case invalidCodingKey;
    }

    public override init() {
        super.init();
    }

    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder);
        let container = try decoder.container(keyedBy: CodingKeys.self);
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
        try super.encode(to: encoder);
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
    }

    // Sets graphicsQualityOptions. Gets or sets the additional System.Drawing.Graphics quality options.
    public func setGraphicsQualityOptions(graphicsQualityOptions : GraphicsQualityOptionsData?) {
        self.graphicsQualityOptions = graphicsQualityOptions;
    }

    // Gets graphicsQualityOptions. Gets or sets the additional System.Drawing.Graphics quality options.
    public func getGraphicsQualityOptions() -> GraphicsQualityOptionsData? {
        return self.graphicsQualityOptions;
    }

    // Sets horizontalResolution. Gets or sets the horizontal resolution in dots per inch for the generated images. This property has effect only when saving to raster image formats. The default value is 96.
    public func setHorizontalResolution(horizontalResolution : Double?) {
        self.horizontalResolution = horizontalResolution;
    }

    // Gets horizontalResolution. Gets or sets the horizontal resolution in dots per inch for the generated images. This property has effect only when saving to raster image formats. The default value is 96.
    public func getHorizontalResolution() -> Double? {
        return self.horizontalResolution;
    }

    // Sets imageBrightness. Gets or sets the brightness level of the image.
    public func setImageBrightness(imageBrightness : Double?) {
        self.imageBrightness = imageBrightness;
    }

    // Gets imageBrightness. Gets or sets the brightness level of the image.
    public func getImageBrightness() -> Double? {
        return self.imageBrightness;
    }

    // Sets imageColorMode. Gets or sets the color mode of the image.
    public func setImageColorMode(imageColorMode : String?) {
        self.imageColorMode = imageColorMode;
    }

    // Gets imageColorMode. Gets or sets the color mode of the image.
    public func getImageColorMode() -> String? {
        return self.imageColorMode;
    }

    // Sets imageContrast. Gets or sets the contrast level of the image.
    public func setImageContrast(imageContrast : Double?) {
        self.imageContrast = imageContrast;
    }

    // Gets imageContrast. Gets or sets the contrast level of the image.
    public func getImageContrast() -> Double? {
        return self.imageContrast;
    }

    // Sets paperColor. Gets or sets the background (paper) color of the image.
    public func setPaperColor(paperColor : String?) {
        self.paperColor = paperColor;
    }

    // Gets paperColor. Gets or sets the background (paper) color of the image.
    public func getPaperColor() -> String? {
        return self.paperColor;
    }

    // Sets pixelFormat. Gets or sets the pixel format of the image.
    public func setPixelFormat(pixelFormat : String?) {
        self.pixelFormat = pixelFormat;
    }

    // Gets pixelFormat. Gets or sets the pixel format of the image.
    public func getPixelFormat() -> String? {
        return self.pixelFormat;
    }

    // Sets resolution. Gets or sets both horizontal and vertical resolution in dots per inch for the generated images. This property has effect only when saving to raster image formats. The default value is 96.
    public func setResolution(resolution : Double?) {
        self.resolution = resolution;
    }

    // Gets resolution. Gets or sets both horizontal and vertical resolution in dots per inch for the generated images. This property has effect only when saving to raster image formats. The default value is 96.
    public func getResolution() -> Double? {
        return self.resolution;
    }

    // Sets scale. Gets or sets the zoom factor of the image.
    public func setScale(scale : Double?) {
        self.scale = scale;
    }

    // Gets scale. Gets or sets the zoom factor of the image.
    public func getScale() -> Double? {
        return self.scale;
    }

    // Sets useAntiAliasing. Gets or sets a value indicating whether to use anti-aliasing for rendering.
    public func setUseAntiAliasing(useAntiAliasing : Bool?) {
        self.useAntiAliasing = useAntiAliasing;
    }

    // Gets useAntiAliasing. Gets or sets a value indicating whether to use anti-aliasing for rendering.
    public func getUseAntiAliasing() -> Bool? {
        return self.useAntiAliasing;
    }

    // Sets useGdiEmfRenderer. Gets or sets a value indicating whether to use GDI+ or Aspose.Words metafile renderer when saving to EMF.
    public func setUseGdiEmfRenderer(useGdiEmfRenderer : Bool?) {
        self.useGdiEmfRenderer = useGdiEmfRenderer;
    }

    // Gets useGdiEmfRenderer. Gets or sets a value indicating whether to use GDI+ or Aspose.Words metafile renderer when saving to EMF.
    public func getUseGdiEmfRenderer() -> Bool? {
        return self.useGdiEmfRenderer;
    }

    // Sets useHighQualityRendering. Gets or sets a value indicating whether to use high quality (i.e. slow) rendering algorithms.
    public func setUseHighQualityRendering(useHighQualityRendering : Bool?) {
        self.useHighQualityRendering = useHighQualityRendering;
    }

    // Gets useHighQualityRendering. Gets or sets a value indicating whether to use high quality (i.e. slow) rendering algorithms.
    public func getUseHighQualityRendering() -> Bool? {
        return self.useHighQualityRendering;
    }

    // Sets verticalResolution. Gets or sets the vertical resolution in dots per inch for the generated images. This property has effect only when saving to raster image formats. The default value is 96.
    public func setVerticalResolution(verticalResolution : Double?) {
        self.verticalResolution = verticalResolution;
    }

    // Gets verticalResolution. Gets or sets the vertical resolution in dots per inch for the generated images. This property has effect only when saving to raster image formats. The default value is 96.
    public func getVerticalResolution() -> Double? {
        return self.verticalResolution;
    }
}
