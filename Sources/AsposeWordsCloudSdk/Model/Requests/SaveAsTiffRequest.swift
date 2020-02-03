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

public class SaveAsTiffRequest : Codable {
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
    
    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.name = try container.decode(.self, forKey: .name);
        self.saveOptions = try container.decode(.self, forKey: .saveOptions);
        self.folder = try container.decodeIfPresent(.self, forKey: .folder);
        self.storage = try container.decodeIfPresent(.self, forKey: .storage);
        self.loadEncoding = try container.decodeIfPresent(.self, forKey: .loadEncoding);
        self.password = try container.decodeIfPresent(.self, forKey: .password);
        self.useAntiAliasing = try container.decodeIfPresent(.self, forKey: .useAntiAliasing);
        self.useHighQualityRendering = try container.decodeIfPresent(.self, forKey: .useHighQualityRendering);
        self.imageBrightness = try container.decodeIfPresent(.self, forKey: .imageBrightness);
        self.imageColorMode = try container.decodeIfPresent(.self, forKey: .imageColorMode);
        self.imageContrast = try container.decodeIfPresent(.self, forKey: .imageContrast);
        self.numeralFormat = try container.decodeIfPresent(.self, forKey: .numeralFormat);
        self.pageCount = try container.decodeIfPresent(.self, forKey: .pageCount);
        self.pageIndex = try container.decodeIfPresent(.self, forKey: .pageIndex);
        self.paperColor = try container.decodeIfPresent(.self, forKey: .paperColor);
        self.pixelFormat = try container.decodeIfPresent(.self, forKey: .pixelFormat);
        self.resolution = try container.decodeIfPresent(.self, forKey: .resolution);
        self.scale = try container.decodeIfPresent(.self, forKey: .scale);
        self.tiffCompression = try container.decodeIfPresent(.self, forKey: .tiffCompression);
        self.dmlRenderingMode = try container.decodeIfPresent(.self, forKey: .dmlRenderingMode);
        self.dmlEffectsRenderingMode = try container.decodeIfPresent(.self, forKey: .dmlEffectsRenderingMode);
        self.tiffBinarizationMethod = try container.decodeIfPresent(.self, forKey: .tiffBinarizationMethod);
        self.zipOutput = try container.decodeIfPresent(.self, forKey: .zipOutput);
        self.fontsLocation = try container.decodeIfPresent(.self, forKey: .fontsLocation);
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self);
        try container.encode(self.name, forKey: .name);
        try container.encode(self.saveOptions, forKey: .saveOptions);
        if (self.folder != nil) {
            try container.encode(self.folder, forKey: .folder);
        }
        if (self.storage != nil) {
            try container.encode(self.storage, forKey: .storage);
        }
        if (self.loadEncoding != nil) {
            try container.encode(self.loadEncoding, forKey: .loadEncoding);
        }
        if (self.password != nil) {
            try container.encode(self.password, forKey: .password);
        }
        if (self.useAntiAliasing != nil) {
            try container.encode(self.useAntiAliasing, forKey: .useAntiAliasing);
        }
        if (self.useHighQualityRendering != nil) {
            try container.encode(self.useHighQualityRendering, forKey: .useHighQualityRendering);
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
        if (self.numeralFormat != nil) {
            try container.encode(self.numeralFormat, forKey: .numeralFormat);
        }
        if (self.pageCount != nil) {
            try container.encode(self.pageCount, forKey: .pageCount);
        }
        if (self.pageIndex != nil) {
            try container.encode(self.pageIndex, forKey: .pageIndex);
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
        if (self.tiffCompression != nil) {
            try container.encode(self.tiffCompression, forKey: .tiffCompression);
        }
        if (self.dmlRenderingMode != nil) {
            try container.encode(self.dmlRenderingMode, forKey: .dmlRenderingMode);
        }
        if (self.dmlEffectsRenderingMode != nil) {
            try container.encode(self.dmlEffectsRenderingMode, forKey: .dmlEffectsRenderingMode);
        }
        if (self.tiffBinarizationMethod != nil) {
            try container.encode(self.tiffBinarizationMethod, forKey: .tiffBinarizationMethod);
        }
        if (self.zipOutput != nil) {
            try container.encode(self.zipOutput, forKey: .zipOutput);
        }
        if (self.fontsLocation != nil) {
            try container.encode(self.fontsLocation, forKey: .fontsLocation);
        }
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
