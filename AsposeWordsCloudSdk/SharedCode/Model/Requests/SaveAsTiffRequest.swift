/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="SaveAsTiffRequest.swift">
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

public class SaveAsTiffRequest : Decodable {
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
    
    public init(name : String, saveOptions : TiffSaveOptionsData, folder : String? = null, storage : String? = null, loadEncoding : String? = null, password : String? = null, useAntiAliasing : Bool? = null, useHighQualityRendering : Bool? = null, imageBrightness : Double? = null, imageColorMode : String? = null, imageContrast : Double? = null, numeralFormat : String? = null, pageCount : Int? = null, pageIndex : Int? = null, paperColor : String? = null, pixelFormat : String? = null, resolution : Double? = null, scale : Double? = null, tiffCompression : String? = null, dmlRenderingMode : String? = null, dmlEffectsRenderingMode : String? = null, tiffBinarizationMethod : String? = null, zipOutput : Bool? = null, fontsLocation : String? = null) {
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
    
    public func getName() -> String {
        return self.name;
    }
    
    public func getSaveOptions() -> TiffSaveOptionsData {
        return self.saveOptions;
    }
    
    public func getFolder() -> String? {
        return self.folder;
    }
    
    public func getStorage() -> String? {
        return self.storage;
    }
    
    public func getLoadEncoding() -> String? {
        return self.loadEncoding;
    }
    
    public func getPassword() -> String? {
        return self.password;
    }
    
    public func getUseAntiAliasing() -> Bool? {
        return self.useAntiAliasing;
    }
    
    public func getUseHighQualityRendering() -> Bool? {
        return self.useHighQualityRendering;
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
    
    public func getNumeralFormat() -> String? {
        return self.numeralFormat;
    }
    
    public func getPageCount() -> Int? {
        return self.pageCount;
    }
    
    public func getPageIndex() -> Int? {
        return self.pageIndex;
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
    
    public func getTiffCompression() -> String? {
        return self.tiffCompression;
    }
    
    public func getDmlRenderingMode() -> String? {
        return self.dmlRenderingMode;
    }
    
    public func getDmlEffectsRenderingMode() -> String? {
        return self.dmlEffectsRenderingMode;
    }
    
    public func getTiffBinarizationMethod() -> String? {
        return self.tiffBinarizationMethod;
    }
    
    public func getZipOutput() -> Bool? {
        return self.zipOutput;
    }
    
    public func getFontsLocation() -> String? {
        return self.fontsLocation;
    }
}
