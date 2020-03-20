/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="SaveAsTiffRequest.swift">
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

// Request model for saveAsTiff operation.
public class SaveAsTiffRequest {
    private let name : ;
    private let saveOptions : ;
    private let folder : ?;
    private let storage : ?;
    private let loadEncoding : ?;
    private let password : ?;
    private let useAntiAliasing : ?;
    private let useHighQualityRendering : ?;
    private let imageBrightness : ?;
    private let imageColorMode : ?;
    private let imageContrast : ?;
    private let numeralFormat : ?;
    private let pageCount : ?;
    private let pageIndex : ?;
    private let paperColor : ?;
    private let pixelFormat : ?;
    private let resolution : ?;
    private let scale : ?;
    private let tiffCompression : ?;
    private let dmlRenderingMode : ?;
    private let dmlEffectsRenderingMode : ?;
    private let tiffBinarizationMethod : ?;
    private let zipOutput : ?;
    private let fontsLocation : ?;
    
    private enum CodingKeys: String, CodingKey {
        case name;
        case saveOptions;
        case folder;
        case storage;
        case loadEncoding;
        case password;
        case useAntiAliasing;
        case useHighQualityRendering;
        case imageBrightness;
        case imageColorMode;
        case imageContrast;
        case numeralFormat;
        case pageCount;
        case pageIndex;
        case paperColor;
        case pixelFormat;
        case resolution;
        case scale;
        case tiffCompression;
        case dmlRenderingMode;
        case dmlEffectsRenderingMode;
        case tiffBinarizationMethod;
        case zipOutput;
        case fontsLocation;
        case invalidCodingKey;
    }
    
    // Initializes a new instance of the saveAsTiffRequest class.
    public init(name : , saveOptions : , folder : ? = nil, storage : ? = nil, loadEncoding : ? = nil, password : ? = nil, useAntiAliasing : ? = nil, useHighQualityRendering : ? = nil, imageBrightness : ? = nil, imageColorMode : ? = nil, imageContrast : ? = nil, numeralFormat : ? = nil, pageCount : ? = nil, pageIndex : ? = nil, paperColor : ? = nil, pixelFormat : ? = nil, resolution : ? = nil, scale : ? = nil, tiffCompression : ? = nil, dmlRenderingMode : ? = nil, dmlEffectsRenderingMode : ? = nil, tiffBinarizationMethod : ? = nil, zipOutput : ? = nil, fontsLocation : ? = nil) {
        self.name = name;
        self.saveOptions = saveOptions;
        self.folder = folder;
        self.storage = storage;
        self.loadEncoding = loadEncoding;
        self.password = password;
        self.useAntiAliasing = useAntiAliasing;
        self.useHighQualityRendering = useHighQualityRendering;
        self.imageBrightness = imageBrightness;
        self.imageColorMode = imageColorMode;
        self.imageContrast = imageContrast;
        self.numeralFormat = numeralFormat;
        self.pageCount = pageCount;
        self.pageIndex = pageIndex;
        self.paperColor = paperColor;
        self.pixelFormat = pixelFormat;
        self.resolution = resolution;
        self.scale = scale;
        self.tiffCompression = tiffCompression;
        self.dmlRenderingMode = dmlRenderingMode;
        self.dmlEffectsRenderingMode = dmlEffectsRenderingMode;
        self.tiffBinarizationMethod = tiffBinarizationMethod;
        self.zipOutput = zipOutput;
        self.fontsLocation = fontsLocation;
    }
    
    // The document name.
    public func getName() ->  {
        return self.name;
    }
    
    // Tiff save options.
    public func getSaveOptions() ->  {
        return self.saveOptions;
    }
    
    // Original document folder.
    public func getFolder() -> ? {
        return self.folder;
    }
    
    // Original document storage.
    public func getStorage() -> ? {
        return self.storage;
    }
    
    // Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    public func getLoadEncoding() -> ? {
        return self.loadEncoding;
    }
    
    // Password for opening an encrypted document.
    public func getPassword() -> ? {
        return self.password;
    }
    
    // Use antialiasing flag.
    public func getUseAntiAliasing() -> ? {
        return self.useAntiAliasing;
    }
    
    // Use high quality flag.
    public func getUseHighQualityRendering() -> ? {
        return self.useHighQualityRendering;
    }
    
    // Brightness for the generated images.
    public func getImageBrightness() -> ? {
        return self.imageBrightness;
    }
    
    // Color mode for the generated images.
    public func getImageColorMode() -> ? {
        return self.imageColorMode;
    }
    
    // The contrast for the generated images.
    public func getImageContrast() -> ? {
        return self.imageContrast;
    }
    
    // The images numeral format.
    public func getNumeralFormat() -> ? {
        return self.numeralFormat;
    }
    
    // Number of pages to render.
    public func getPageCount() -> ? {
        return self.pageCount;
    }
    
    // Page index to start rendering.
    public func getPageIndex() -> ? {
        return self.pageIndex;
    }
    
    // Background image color.
    public func getPaperColor() -> ? {
        return self.paperColor;
    }
    
    // The pixel format of generated images.
    public func getPixelFormat() -> ? {
        return self.pixelFormat;
    }
    
    // The resolution of generated images.
    public func getResolution() -> ? {
        return self.resolution;
    }
    
    // Zoom factor for generated images.
    public func getScale() -> ? {
        return self.scale;
    }
    
    // The compression tipe.
    public func getTiffCompression() -> ? {
        return self.tiffCompression;
    }
    
    // Optional, default is Fallback.
    public func getDmlRenderingMode() -> ? {
        return self.dmlRenderingMode;
    }
    
    // Optional, default is Simplified.
    public func getDmlEffectsRenderingMode() -> ? {
        return self.dmlEffectsRenderingMode;
    }
    
    // Optional, Tiff binarization method, possible values are: FloydSteinbergDithering, Threshold.
    public func getTiffBinarizationMethod() -> ? {
        return self.tiffBinarizationMethod;
    }
    
    // Optional. A value determining zip output or not.
    public func getZipOutput() -> ? {
        return self.zipOutput;
    }
    
    // Folder in filestorage with custom fonts.
    public func getFontsLocation() -> ? {
        return self.fontsLocation;
    }
}
