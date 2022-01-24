/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="ImageSaveOptionsData.swift">
 *   Copyright (c) 2022 Aspose.Words for Cloud
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
@available(macOS 10.12, iOS 10.3, watchOS 3.3, tvOS 12.0, *)
public class ImageSaveOptionsData : FixedPageSaveOptionsData {
    // Field of horizontalResolution. Container abstract class for image save options.
    private var _horizontalResolution : Double?;

    public var horizontalResolution : Double? {
        get {
            return self._horizontalResolution;
        }
        set {
            self._horizontalResolution = newValue;
        }
    }

    // Field of imageBrightness. Container abstract class for image save options.
    private var _imageBrightness : Double?;

    public var imageBrightness : Double? {
        get {
            return self._imageBrightness;
        }
        set {
            self._imageBrightness = newValue;
        }
    }

    // Field of imageColorMode. Container abstract class for image save options.
    private var _imageColorMode : String?;

    public var imageColorMode : String? {
        get {
            return self._imageColorMode;
        }
        set {
            self._imageColorMode = newValue;
        }
    }

    // Field of imageContrast. Container abstract class for image save options.
    private var _imageContrast : Double?;

    public var imageContrast : Double? {
        get {
            return self._imageContrast;
        }
        set {
            self._imageContrast = newValue;
        }
    }

    // Field of paperColor. Container abstract class for image save options.
    private var _paperColor : String?;

    public var paperColor : String? {
        get {
            return self._paperColor;
        }
        set {
            self._paperColor = newValue;
        }
    }

    // Field of pixelFormat. Container abstract class for image save options.
    private var _pixelFormat : String?;

    public var pixelFormat : String? {
        get {
            return self._pixelFormat;
        }
        set {
            self._pixelFormat = newValue;
        }
    }

    // Field of resolution. Container abstract class for image save options.
    private var _resolution : Double?;

    public var resolution : Double? {
        get {
            return self._resolution;
        }
        set {
            self._resolution = newValue;
        }
    }

    // Field of scale. Container abstract class for image save options.
    private var _scale : Double?;

    public var scale : Double? {
        get {
            return self._scale;
        }
        set {
            self._scale = newValue;
        }
    }

    // Field of useAntiAliasing. Container abstract class for image save options.
    private var _useAntiAliasing : Bool?;

    public var useAntiAliasing : Bool? {
        get {
            return self._useAntiAliasing;
        }
        set {
            self._useAntiAliasing = newValue;
        }
    }

    // Field of useGdiEmfRenderer. Container abstract class for image save options.
    private var _useGdiEmfRenderer : Bool?;

    public var useGdiEmfRenderer : Bool? {
        get {
            return self._useGdiEmfRenderer;
        }
        set {
            self._useGdiEmfRenderer = newValue;
        }
    }

    // Field of useHighQualityRendering. Container abstract class for image save options.
    private var _useHighQualityRendering : Bool?;

    public var useHighQualityRendering : Bool? {
        get {
            return self._useHighQualityRendering;
        }
        set {
            self._useHighQualityRendering = newValue;
        }
    }

    // Field of verticalResolution. Container abstract class for image save options.
    private var _verticalResolution : Double?;

    public var verticalResolution : Double? {
        get {
            return self._verticalResolution;
        }
        set {
            self._verticalResolution = newValue;
        }
    }

    private enum CodingKeys: String, CodingKey {
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

    // Sets horizontalResolution. Gets or sets the horizontal resolution in dots per inch for the generated images. This property has effect only when saving to raster image formats. The default value is 96.
    public func setHorizontalResolution(horizontalResolution : Double?) -> ImageSaveOptionsData {
        self.horizontalResolution = horizontalResolution;
        return self;
    }

    // Gets horizontalResolution. Gets or sets the horizontal resolution in dots per inch for the generated images. This property has effect only when saving to raster image formats. The default value is 96.
    public func getHorizontalResolution() -> Double? {
        return self.horizontalResolution;
    }


    // Sets imageBrightness. Gets or sets the brightness level of the image.
    public func setImageBrightness(imageBrightness : Double?) -> ImageSaveOptionsData {
        self.imageBrightness = imageBrightness;
        return self;
    }

    // Gets imageBrightness. Gets or sets the brightness level of the image.
    public func getImageBrightness() -> Double? {
        return self.imageBrightness;
    }


    // Sets imageColorMode. Gets or sets the color mode of the image.
    public func setImageColorMode(imageColorMode : String?) -> ImageSaveOptionsData {
        self.imageColorMode = imageColorMode;
        return self;
    }

    // Gets imageColorMode. Gets or sets the color mode of the image.
    public func getImageColorMode() -> String? {
        return self.imageColorMode;
    }


    // Sets imageContrast. Gets or sets the contrast level of the image.
    public func setImageContrast(imageContrast : Double?) -> ImageSaveOptionsData {
        self.imageContrast = imageContrast;
        return self;
    }

    // Gets imageContrast. Gets or sets the contrast level of the image.
    public func getImageContrast() -> Double? {
        return self.imageContrast;
    }


    // Sets paperColor. Gets or sets the background (paper) color of the image.
    public func setPaperColor(paperColor : String?) -> ImageSaveOptionsData {
        self.paperColor = paperColor;
        return self;
    }

    // Gets paperColor. Gets or sets the background (paper) color of the image.
    public func getPaperColor() -> String? {
        return self.paperColor;
    }


    // Sets pixelFormat. Gets or sets the pixel format of the image.
    public func setPixelFormat(pixelFormat : String?) -> ImageSaveOptionsData {
        self.pixelFormat = pixelFormat;
        return self;
    }

    // Gets pixelFormat. Gets or sets the pixel format of the image.
    public func getPixelFormat() -> String? {
        return self.pixelFormat;
    }


    // Sets resolution. Gets or sets both horizontal and vertical resolution in dots per inch for the generated images. This property has effect only when saving to raster image formats. The default value is 96.
    public func setResolution(resolution : Double?) -> ImageSaveOptionsData {
        self.resolution = resolution;
        return self;
    }

    // Gets resolution. Gets or sets both horizontal and vertical resolution in dots per inch for the generated images. This property has effect only when saving to raster image formats. The default value is 96.
    public func getResolution() -> Double? {
        return self.resolution;
    }


    // Sets scale. Gets or sets the zoom factor of the image.
    public func setScale(scale : Double?) -> ImageSaveOptionsData {
        self.scale = scale;
        return self;
    }

    // Gets scale. Gets or sets the zoom factor of the image.
    public func getScale() -> Double? {
        return self.scale;
    }


    // Sets useAntiAliasing. Gets or sets a value indicating whether to use anti-aliasing for rendering.
    public func setUseAntiAliasing(useAntiAliasing : Bool?) -> ImageSaveOptionsData {
        self.useAntiAliasing = useAntiAliasing;
        return self;
    }

    // Gets useAntiAliasing. Gets or sets a value indicating whether to use anti-aliasing for rendering.
    public func getUseAntiAliasing() -> Bool? {
        return self.useAntiAliasing;
    }


    // Sets useGdiEmfRenderer. Gets or sets a value indicating whether to use GDI+ or Aspose.Words metafile renderer when saving to EMF.
    public func setUseGdiEmfRenderer(useGdiEmfRenderer : Bool?) -> ImageSaveOptionsData {
        self.useGdiEmfRenderer = useGdiEmfRenderer;
        return self;
    }

    // Gets useGdiEmfRenderer. Gets or sets a value indicating whether to use GDI+ or Aspose.Words metafile renderer when saving to EMF.
    public func getUseGdiEmfRenderer() -> Bool? {
        return self.useGdiEmfRenderer;
    }


    // Sets useHighQualityRendering. Gets or sets a value indicating whether to use high quality (i.e. slow) rendering algorithms.
    public func setUseHighQualityRendering(useHighQualityRendering : Bool?) -> ImageSaveOptionsData {
        self.useHighQualityRendering = useHighQualityRendering;
        return self;
    }

    // Gets useHighQualityRendering. Gets or sets a value indicating whether to use high quality (i.e. slow) rendering algorithms.
    public func getUseHighQualityRendering() -> Bool? {
        return self.useHighQualityRendering;
    }


    // Sets verticalResolution. Gets or sets the vertical resolution in dots per inch for the generated images. This property has effect only when saving to raster image formats. The default value is 96.
    public func setVerticalResolution(verticalResolution : Double?) -> ImageSaveOptionsData {
        self.verticalResolution = verticalResolution;
        return self;
    }

    // Gets verticalResolution. Gets or sets the vertical resolution in dots per inch for the generated images. This property has effect only when saving to raster image formats. The default value is 96.
    public func getVerticalResolution() -> Double? {
        return self.verticalResolution;
    }
}
