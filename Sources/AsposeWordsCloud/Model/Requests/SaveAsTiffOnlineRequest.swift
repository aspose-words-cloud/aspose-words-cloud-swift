/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="SaveAsTiffOnlineRequest.swift">
 *   Copyright (c) 2023 Aspose.Words for Cloud
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

// Request model for saveAsTiffOnline operation.
@available(macOS 10.12, iOS 10.3, watchOS 3.3, tvOS 12.0, *)
public class SaveAsTiffOnlineRequest : WordsApiRequest {
    private let document : InputStream;
    private let saveOptions : TiffSaveOptionsData;
    private let loadEncoding : String?;
    private let password : String?;
    private let encryptedPassword : String?;
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
        case document;
        case saveOptions;
        case loadEncoding;
        case password;
        case encryptedPassword;
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

    // Initializes a new instance of the SaveAsTiffOnlineRequest class.
    public init(document : InputStream, saveOptions : TiffSaveOptionsData, loadEncoding : String? = nil, password : String? = nil, encryptedPassword : String? = nil, useAntiAliasing : Bool? = nil, useHighQualityRendering : Bool? = nil, imageBrightness : Double? = nil, imageColorMode : String? = nil, imageContrast : Double? = nil, numeralFormat : String? = nil, pageCount : Int? = nil, pageIndex : Int? = nil, paperColor : String? = nil, pixelFormat : String? = nil, resolution : Double? = nil, scale : Double? = nil, tiffCompression : String? = nil, dmlRenderingMode : String? = nil, dmlEffectsRenderingMode : String? = nil, tiffBinarizationMethod : String? = nil, zipOutput : Bool? = nil, fontsLocation : String? = nil) {
        self.document = document;
        self.saveOptions = saveOptions;
        self.loadEncoding = loadEncoding;
        self.password = password;
        self.encryptedPassword = encryptedPassword;
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

    // The document.
    public func getDocument() -> InputStream {
        return self.document;
    }

    // Tiff save options.
    public func getSaveOptions() -> TiffSaveOptionsData {
        return self.saveOptions;
    }

    // Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    public func getLoadEncoding() -> String? {
        return self.loadEncoding;
    }

    // Password of protected Word document. Use the parameter to pass a password via SDK. SDK encrypts it automatically. We don't recommend to use the parameter to pass a plain password for direct call of API.
    public func getPassword() -> String? {
        return self.password;
    }

    // Password of protected Word document. Use the parameter to pass an encrypted password for direct calls of API. See SDK code for encyption details.
    public func getEncryptedPassword() -> String? {
        return self.encryptedPassword;
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
         var rawPath = "/words/online/put/saveAs/tiff";
         rawPath = rawPath.replacingOccurrences(of: "//", with: "/");

         let urlPath = (try configuration.getApiRootUrl()).appendingPathComponent(rawPath);
         var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
         var queryItems : [URLQueryItem] = [];
             if (self.getLoadEncoding() != nil) {

         #if os(Linux) 
                     queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serializeToString(value: self.getLoadEncoding()!)));

         #else
                     queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serializeToString(value: self.getLoadEncoding()!)));

         #endif        
             }


             if (self.getPassword() != nil) {

         #if os(Linux) 
                     queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serializeToString(value: self.getPassword()!)));

         #else
                     queryItems.append(URLQueryItem(name: "encryptedPassword", value: try apiInvoker.encryptString(value: self.getPassword()!)));

         #endif        
             }


             if (self.getEncryptedPassword() != nil) {

         #if os(Linux) 
                     queryItems.append(URLQueryItem(name: "encryptedPassword", value: try ObjectSerializer.serializeToString(value: self.getEncryptedPassword()!)));

         #else
                     queryItems.append(URLQueryItem(name: "encryptedPassword", value: try ObjectSerializer.serializeToString(value: self.getEncryptedPassword()!)));

         #endif        
             }


             if (self.getUseAntiAliasing() != nil) {

         #if os(Linux) 
                     queryItems.append(URLQueryItem(name: "useAntiAliasing", value: try ObjectSerializer.serializeToString(value: self.getUseAntiAliasing()!)));

         #else
                     queryItems.append(URLQueryItem(name: "useAntiAliasing", value: try ObjectSerializer.serializeToString(value: self.getUseAntiAliasing()!)));

         #endif        
             }


             if (self.getUseHighQualityRendering() != nil) {

         #if os(Linux) 
                     queryItems.append(URLQueryItem(name: "useHighQualityRendering", value: try ObjectSerializer.serializeToString(value: self.getUseHighQualityRendering()!)));

         #else
                     queryItems.append(URLQueryItem(name: "useHighQualityRendering", value: try ObjectSerializer.serializeToString(value: self.getUseHighQualityRendering()!)));

         #endif        
             }


             if (self.getImageBrightness() != nil) {

         #if os(Linux) 
                     queryItems.append(URLQueryItem(name: "imageBrightness", value: try ObjectSerializer.serializeToString(value: self.getImageBrightness()!)));

         #else
                     queryItems.append(URLQueryItem(name: "imageBrightness", value: try ObjectSerializer.serializeToString(value: self.getImageBrightness()!)));

         #endif        
             }


             if (self.getImageColorMode() != nil) {

         #if os(Linux) 
                     queryItems.append(URLQueryItem(name: "imageColorMode", value: try ObjectSerializer.serializeToString(value: self.getImageColorMode()!)));

         #else
                     queryItems.append(URLQueryItem(name: "imageColorMode", value: try ObjectSerializer.serializeToString(value: self.getImageColorMode()!)));

         #endif        
             }


             if (self.getImageContrast() != nil) {

         #if os(Linux) 
                     queryItems.append(URLQueryItem(name: "imageContrast", value: try ObjectSerializer.serializeToString(value: self.getImageContrast()!)));

         #else
                     queryItems.append(URLQueryItem(name: "imageContrast", value: try ObjectSerializer.serializeToString(value: self.getImageContrast()!)));

         #endif        
             }


             if (self.getNumeralFormat() != nil) {

         #if os(Linux) 
                     queryItems.append(URLQueryItem(name: "numeralFormat", value: try ObjectSerializer.serializeToString(value: self.getNumeralFormat()!)));

         #else
                     queryItems.append(URLQueryItem(name: "numeralFormat", value: try ObjectSerializer.serializeToString(value: self.getNumeralFormat()!)));

         #endif        
             }


             if (self.getPageCount() != nil) {

         #if os(Linux) 
                     queryItems.append(URLQueryItem(name: "pageCount", value: try ObjectSerializer.serializeToString(value: self.getPageCount()!)));

         #else
                     queryItems.append(URLQueryItem(name: "pageCount", value: try ObjectSerializer.serializeToString(value: self.getPageCount()!)));

         #endif        
             }


             if (self.getPageIndex() != nil) {

         #if os(Linux) 
                     queryItems.append(URLQueryItem(name: "pageIndex", value: try ObjectSerializer.serializeToString(value: self.getPageIndex()!)));

         #else
                     queryItems.append(URLQueryItem(name: "pageIndex", value: try ObjectSerializer.serializeToString(value: self.getPageIndex()!)));

         #endif        
             }


             if (self.getPaperColor() != nil) {

         #if os(Linux) 
                     queryItems.append(URLQueryItem(name: "paperColor", value: try ObjectSerializer.serializeToString(value: self.getPaperColor()!)));

         #else
                     queryItems.append(URLQueryItem(name: "paperColor", value: try ObjectSerializer.serializeToString(value: self.getPaperColor()!)));

         #endif        
             }


             if (self.getPixelFormat() != nil) {

         #if os(Linux) 
                     queryItems.append(URLQueryItem(name: "pixelFormat", value: try ObjectSerializer.serializeToString(value: self.getPixelFormat()!)));

         #else
                     queryItems.append(URLQueryItem(name: "pixelFormat", value: try ObjectSerializer.serializeToString(value: self.getPixelFormat()!)));

         #endif        
             }


             if (self.getResolution() != nil) {

         #if os(Linux) 
                     queryItems.append(URLQueryItem(name: "resolution", value: try ObjectSerializer.serializeToString(value: self.getResolution()!)));

         #else
                     queryItems.append(URLQueryItem(name: "resolution", value: try ObjectSerializer.serializeToString(value: self.getResolution()!)));

         #endif        
             }


             if (self.getScale() != nil) {

         #if os(Linux) 
                     queryItems.append(URLQueryItem(name: "scale", value: try ObjectSerializer.serializeToString(value: self.getScale()!)));

         #else
                     queryItems.append(URLQueryItem(name: "scale", value: try ObjectSerializer.serializeToString(value: self.getScale()!)));

         #endif        
             }


             if (self.getTiffCompression() != nil) {

         #if os(Linux) 
                     queryItems.append(URLQueryItem(name: "tiffCompression", value: try ObjectSerializer.serializeToString(value: self.getTiffCompression()!)));

         #else
                     queryItems.append(URLQueryItem(name: "tiffCompression", value: try ObjectSerializer.serializeToString(value: self.getTiffCompression()!)));

         #endif        
             }


             if (self.getDmlRenderingMode() != nil) {

         #if os(Linux) 
                     queryItems.append(URLQueryItem(name: "dmlRenderingMode", value: try ObjectSerializer.serializeToString(value: self.getDmlRenderingMode()!)));

         #else
                     queryItems.append(URLQueryItem(name: "dmlRenderingMode", value: try ObjectSerializer.serializeToString(value: self.getDmlRenderingMode()!)));

         #endif        
             }


             if (self.getDmlEffectsRenderingMode() != nil) {

         #if os(Linux) 
                     queryItems.append(URLQueryItem(name: "dmlEffectsRenderingMode", value: try ObjectSerializer.serializeToString(value: self.getDmlEffectsRenderingMode()!)));

         #else
                     queryItems.append(URLQueryItem(name: "dmlEffectsRenderingMode", value: try ObjectSerializer.serializeToString(value: self.getDmlEffectsRenderingMode()!)));

         #endif        
             }


             if (self.getTiffBinarizationMethod() != nil) {

         #if os(Linux) 
                     queryItems.append(URLQueryItem(name: "tiffBinarizationMethod", value: try ObjectSerializer.serializeToString(value: self.getTiffBinarizationMethod()!)));

         #else
                     queryItems.append(URLQueryItem(name: "tiffBinarizationMethod", value: try ObjectSerializer.serializeToString(value: self.getTiffBinarizationMethod()!)));

         #endif        
             }


             if (self.getZipOutput() != nil) {

         #if os(Linux) 
                     queryItems.append(URLQueryItem(name: "zipOutput", value: try ObjectSerializer.serializeToString(value: self.getZipOutput()!)));

         #else
                     queryItems.append(URLQueryItem(name: "zipOutput", value: try ObjectSerializer.serializeToString(value: self.getZipOutput()!)));

         #endif        
             }


             if (self.getFontsLocation() != nil) {

         #if os(Linux) 
                     queryItems.append(URLQueryItem(name: "fontsLocation", value: try ObjectSerializer.serializeToString(value: self.getFontsLocation()!)));

         #else
                     queryItems.append(URLQueryItem(name: "fontsLocation", value: try ObjectSerializer.serializeToString(value: self.getFontsLocation()!)));

         #endif        
             }

         if (queryItems.count > 0) {
             urlBuilder.queryItems = queryItems;
         }
         var formParams = [RequestFormParam]();
         var requestFilesContent = [FileReference]();
         formParams.append(RequestFormParam(name: "document", body: try ObjectSerializer.serializeFile(value: self.getDocument()), contentType: "application/octet-stream"));

         formParams.append(RequestFormParam(name: "saveOptions", body: try ObjectSerializer.serialize(value: self.getSaveOptions()), contentType: "application/json"));
         self.getSaveOptions().collectFilesContent(&requestFilesContent);
         try self.getSaveOptions().validate();

         apiInvoker.prepareFilesContent(&requestFilesContent);
         for requestFileReference in requestFilesContent {
             if (requestFileReference.source == "Request") {
                 formParams.append(RequestFormParam(name: requestFileReference.reference, body: try ObjectSerializer.serializeFile(value: requestFileReference.content), contentType: "application/octet-stream"));
             }
         }

         var result = WordsApiRequestData(url: urlBuilder.url!, method: "PUT");
         if (formParams.count > 0) {
             result.setBody(formParams: formParams);
         }
         return result;
    }

    // Deserialize response of this request
    public func deserializeResponse(data : Data, headers : [String: String]) throws -> Any? {
        let multipart = try ObjectSerializer.parseMultipart(data: data);
        return SaveAsTiffOnlineResponse(
            model: try ObjectSerializer.deserialize(
                type: SaveResponse.self,
                from: (try ObjectSerializer.getMultipartByName(multipart: multipart, name: "Model")).getBody()
            ),
            document: try ObjectSerializer.parseFilesCollection(part: try ObjectSerializer.getMultipartByName(multipart: multipart, name: "Document"))
        );
    }
}
