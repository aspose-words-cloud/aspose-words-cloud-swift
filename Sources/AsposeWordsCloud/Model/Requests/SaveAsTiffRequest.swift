/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="SaveAsTiffRequest.swift">
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

// Request model for saveAsTiff operation.
@available(macOS 10.12, iOS 10.3, watchOS 3.3, tvOS 12.0, *)
public class SaveAsTiffRequest : WordsApiRequest {
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

    // Initializes a new instance of the SaveAsTiffRequest class.
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

    // The filename of the input document.
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

    // The flag indicating whether to use antialiasing.
    public func getUseAntiAliasing() -> Bool? {
        return self.useAntiAliasing;
    }

    // The flag indicating whether to use high quality.
    public func getUseHighQualityRendering() -> Bool? {
        return self.useHighQualityRendering;
    }

    // The level of brightness for the generated images.
    public func getImageBrightness() -> Double? {
        return self.imageBrightness;
    }

    // The color mode for the generated images.
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

    // The number of pages to render.
    public func getPageCount() -> Int? {
        return self.pageCount;
    }

    // The index of the page to start rendering.
    public func getPageIndex() -> Int? {
        return self.pageIndex;
    }

    // The background image color.
    public func getPaperColor() -> String? {
        return self.paperColor;
    }

    // The pixel format of the generated images.
    public func getPixelFormat() -> String? {
        return self.pixelFormat;
    }

    // The resolution of the generated images.
    public func getResolution() -> Double? {
        return self.resolution;
    }

    // The zoom factor for the generated images.
    public func getScale() -> Double? {
        return self.scale;
    }

    // The compression tipe.
    public func getTiffCompression() -> String? {
        return self.tiffCompression;
    }

    // The optional dml rendering mode. The default value is Fallback.
    public func getDmlRenderingMode() -> String? {
        return self.dmlRenderingMode;
    }

    // The optional dml effects rendering mode. The default value is Simplified.
    public func getDmlEffectsRenderingMode() -> String? {
        return self.dmlEffectsRenderingMode;
    }

    // The optional TIFF binarization method. Possible values are: FloydSteinbergDithering, Threshold.
    public func getTiffBinarizationMethod() -> String? {
        return self.tiffBinarizationMethod;
    }

    // The flag indicating whether to ZIP the output.
    public func getZipOutput() -> Bool? {
        return self.zipOutput;
    }

    // Folder in filestorage with custom fonts.
    public func getFontsLocation() -> String? {
        return self.fontsLocation;
    }

    // Creates the api request data
    public func createApiRequestData(apiInvoker : ApiInvoker, configuration : Configuration) throws -> WordsApiRequestData {
         var rawPath = "/words/{name}/saveAs/tiff";
         rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: self.getName()));

         rawPath = rawPath.replacingOccurrences(of: "//", with: "/");

         let urlPath = (try configuration.getApiRootUrl()).appendingPathComponent(rawPath);
         var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
         var queryItems : [URLQueryItem] = [];
         if (self.getFolder() != nil) {
         queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serializeToString(value: self.getFolder()!)));
         }
         if (self.getStorage() != nil) {
         queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serializeToString(value: self.getStorage()!)));
         }
         if (self.getLoadEncoding() != nil) {
         queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serializeToString(value: self.getLoadEncoding()!)));
         }
         if (self.getPassword() != nil) {
         queryItems.append(URLQueryItem(name: apiInvoker.isEncryptionAllowed() ? "encryptedPassword" : "password", value: try apiInvoker.encryptString(value: self.getPassword()!)));
         }
         if (self.getUseAntiAliasing() != nil) {
         queryItems.append(URLQueryItem(name: "useAntiAliasing", value: try ObjectSerializer.serializeToString(value: self.getUseAntiAliasing()!)));
         }
         if (self.getUseHighQualityRendering() != nil) {
         queryItems.append(URLQueryItem(name: "useHighQualityRendering", value: try ObjectSerializer.serializeToString(value: self.getUseHighQualityRendering()!)));
         }
         if (self.getImageBrightness() != nil) {
         queryItems.append(URLQueryItem(name: "imageBrightness", value: try ObjectSerializer.serializeToString(value: self.getImageBrightness()!)));
         }
         if (self.getImageColorMode() != nil) {
         queryItems.append(URLQueryItem(name: "imageColorMode", value: try ObjectSerializer.serializeToString(value: self.getImageColorMode()!)));
         }
         if (self.getImageContrast() != nil) {
         queryItems.append(URLQueryItem(name: "imageContrast", value: try ObjectSerializer.serializeToString(value: self.getImageContrast()!)));
         }
         if (self.getNumeralFormat() != nil) {
         queryItems.append(URLQueryItem(name: "numeralFormat", value: try ObjectSerializer.serializeToString(value: self.getNumeralFormat()!)));
         }
         if (self.getPageCount() != nil) {
         queryItems.append(URLQueryItem(name: "pageCount", value: try ObjectSerializer.serializeToString(value: self.getPageCount()!)));
         }
         if (self.getPageIndex() != nil) {
         queryItems.append(URLQueryItem(name: "pageIndex", value: try ObjectSerializer.serializeToString(value: self.getPageIndex()!)));
         }
         if (self.getPaperColor() != nil) {
         queryItems.append(URLQueryItem(name: "paperColor", value: try ObjectSerializer.serializeToString(value: self.getPaperColor()!)));
         }
         if (self.getPixelFormat() != nil) {
         queryItems.append(URLQueryItem(name: "pixelFormat", value: try ObjectSerializer.serializeToString(value: self.getPixelFormat()!)));
         }
         if (self.getResolution() != nil) {
         queryItems.append(URLQueryItem(name: "resolution", value: try ObjectSerializer.serializeToString(value: self.getResolution()!)));
         }
         if (self.getScale() != nil) {
         queryItems.append(URLQueryItem(name: "scale", value: try ObjectSerializer.serializeToString(value: self.getScale()!)));
         }
         if (self.getTiffCompression() != nil) {
         queryItems.append(URLQueryItem(name: "tiffCompression", value: try ObjectSerializer.serializeToString(value: self.getTiffCompression()!)));
         }
         if (self.getDmlRenderingMode() != nil) {
         queryItems.append(URLQueryItem(name: "dmlRenderingMode", value: try ObjectSerializer.serializeToString(value: self.getDmlRenderingMode()!)));
         }
         if (self.getDmlEffectsRenderingMode() != nil) {
         queryItems.append(URLQueryItem(name: "dmlEffectsRenderingMode", value: try ObjectSerializer.serializeToString(value: self.getDmlEffectsRenderingMode()!)));
         }
         if (self.getTiffBinarizationMethod() != nil) {
         queryItems.append(URLQueryItem(name: "tiffBinarizationMethod", value: try ObjectSerializer.serializeToString(value: self.getTiffBinarizationMethod()!)));
         }
         if (self.getZipOutput() != nil) {
         queryItems.append(URLQueryItem(name: "zipOutput", value: try ObjectSerializer.serializeToString(value: self.getZipOutput()!)));
         }
         if (self.getFontsLocation() != nil) {
         queryItems.append(URLQueryItem(name: "fontsLocation", value: try ObjectSerializer.serializeToString(value: self.getFontsLocation()!)));
         }
         if (queryItems.count > 0) {
             urlBuilder.queryItems = queryItems;
         }

         var result = WordsApiRequestData(url: urlBuilder.url!, method: "PUT");
         result.setBody(body: try ObjectSerializer.serializeBody(value: self.getSaveOptions()), contentType: "application/json");
         return result;
    }

    // Deserialize response of this request
    public func deserializeResponse(data : Data) throws -> Any? {
        return try ObjectSerializer.deserialize(type: SaveResponse.self, from: data);
    }
}
