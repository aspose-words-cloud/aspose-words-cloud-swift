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
    private let name : String;
    private let saveOptions : TiffSaveOptionsData;
    private let folder : String?;
    private let storage : String?;
    private let loadEncoding : String?;
    private let password : String?;
    private let useAntiAliasing : Bool?;
    private let useHighQualityRendering : Bool?;
    private let imageBrightness : Double?;
    private let imageColorMode : String?;
    private let imageContrast : Double?;
    private let numeralFormat : String?;
    private let pageCount : Int?;
    private let pageIndex : Int?;
    private let paperColor : String?;
    private let pixelFormat : String?;
    private let resolution : Double?;
    private let scale : Double?;
    private let tiffCompression : String?;
    private let dmlRenderingMode : String?;
    private let dmlEffectsRenderingMode : String?;
    private let tiffBinarizationMethod : String?;
    private let zipOutput : Bool?;
    private let fontsLocation : String?;
    
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
    public init(name : String, saveOptions : TiffSaveOptionsData, folder : String? = nil, storage : String? = nil, loadEncoding : String? = nil, password : String? = nil, useAntiAliasing : Bool? = nil, useHighQualityRendering : Bool? = nil, imageBrightness : Double? = nil, imageColorMode : String? = nil, imageContrast : Double? = nil, numeralFormat : String? = nil, pageCount : Int? = nil, pageIndex : Int? = nil, paperColor : String? = nil, pixelFormat : String? = nil, resolution : Double? = nil, scale : Double? = nil, tiffCompression : String? = nil, dmlRenderingMode : String? = nil, dmlEffectsRenderingMode : String? = nil, tiffBinarizationMethod : String? = nil, zipOutput : Bool? = nil, fontsLocation : String? = nil) {
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
    public func getName() -> String {
        return self.name;
    }
    
    // Tiff save options.
    public func getSaveOptions() -> TiffSaveOptionsData {
        return self.saveOptions;
    }
    
    // Original document folder.
    public func getFolder() -> String? {
        return self.folder;
    }
    
    // Original document storage.
    public func getStorage() -> String? {
        return self.storage;
    }
    
    // Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    public func getLoadEncoding() -> String? {
        return self.loadEncoding;
    }
    
    // Password for opening an encrypted document.
    public func getPassword() -> String? {
        return self.password;
    }
    
    // Use antialiasing flag.
    public func getUseAntiAliasing() -> Bool? {
        return self.useAntiAliasing;
    }
    
    // Use high quality flag.
    public func getUseHighQualityRendering() -> Bool? {
        return self.useHighQualityRendering;
    }
    
    // Brightness for the generated images.
    public func getImageBrightness() -> Double? {
        return self.imageBrightness;
    }
    
    // Color mode for the generated images.
    public func getImageColorMode() -> String? {
        return self.imageColorMode;
    }
    
    // The contrast for the generated images.
    public func getImageContrast() -> Double? {
        return self.imageContrast;
    }
    
    // The images numeral format.
    public func getNumeralFormat() -> String? {
        return self.numeralFormat;
    }
    
    // Number of pages to render.
    public func getPageCount() -> Int? {
        return self.pageCount;
    }
    
    // Page index to start rendering.
    public func getPageIndex() -> Int? {
        return self.pageIndex;
    }
    
    // Background image color.
    public func getPaperColor() -> String? {
        return self.paperColor;
    }
    
    // The pixel format of generated images.
    public func getPixelFormat() -> String? {
        return self.pixelFormat;
    }
    
    // The resolution of generated images.
    public func getResolution() -> Double? {
        return self.resolution;
    }
    
    // Zoom factor for generated images.
    public func getScale() -> Double? {
        return self.scale;
    }
    
    // The compression tipe.
    public func getTiffCompression() -> String? {
        return self.tiffCompression;
    }
    
    // Optional, default is Fallback.
    public func getDmlRenderingMode() -> String? {
        return self.dmlRenderingMode;
    }
    
    // Optional, default is Simplified.
    public func getDmlEffectsRenderingMode() -> String? {
        return self.dmlEffectsRenderingMode;
    }
    
    // Optional, Tiff binarization method, possible values are: FloydSteinbergDithering, Threshold.
    public func getTiffBinarizationMethod() -> String? {
        return self.tiffBinarizationMethod;
    }
    
    // Optional. A value determining zip output or not.
    public func getZipOutput() -> Bool? {
        return self.zipOutput;
    }
    
    // Folder in filestorage with custom fonts.
    public func getFontsLocation() -> String? {
        return self.fontsLocation;
    }
}
