/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="ConvertDocumentRequest.swift">
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

// Request model for convertDocument operation.
public class ConvertDocumentRequest : WordsApiRequest {
    private let document : InputStream;
    private let format : String;
    private let outPath : String?;
    private let fileNameFieldValue : String?;
    private let storage : String?;
    private let fontsLocation : String?;

    private enum CodingKeys: String, CodingKey {
        case document;
        case format;
        case outPath;
        case fileNameFieldValue;
        case storage;
        case fontsLocation;
        case invalidCodingKey;
    }

    // Initializes a new instance of the ConvertDocumentRequest class.
    public init(document : InputStream, format : String, outPath : String? = nil, fileNameFieldValue : String? = nil, storage : String? = nil, fontsLocation : String? = nil) {
        self.document = document;
        self.format = format;
        self.outPath = outPath;
        self.fileNameFieldValue = fileNameFieldValue;
        self.storage = storage;
        self.fontsLocation = fontsLocation;
    }

    // Converting document.
    public func getDocument() -> InputStream {
        return self.document;
    }

    // The format to convert.
    public func getFormat() -> String {
        return self.format;
    }

    // The path to the output document on a local storage.
    public func getOutPath() -> String? {
        return self.outPath;
    }

    // The filename of the output document, that will be used when the resulting document has a dynamic field {filename}. If it is not set, the "sourceFilename" will be used instead.
    public func getFileNameFieldValue() -> String? {
        return self.fileNameFieldValue;
    }

    // Original document storage.
    public func getStorage() -> String? {
        return self.storage;
    }

    // Folder in filestorage with custom fonts.
    public func getFontsLocation() -> String? {
        return self.fontsLocation;
    }

    // Creates the api request data
    public func createApiRequestData(configuration : Configuration) throws -> WordsApiRequestData {
         var rawPath = "/words/convert";
         rawPath = rawPath.replacingOccurrences(of: "//", with: "/");

         let urlPath = (try configuration.getApiRootUrl()).appendingPathComponent(rawPath);
         var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
         var queryItems : [URLQueryItem] = [];
         queryItems.append(URLQueryItem(name: "format", value: try ObjectSerializer.serializeToString(value: self.getFormat())));

         if (self.getOutPath() != nil) {
             queryItems.append(URLQueryItem(name: "outPath", value: try ObjectSerializer.serializeToString(value: self.getOutPath()!)));
         }

         if (self.getFileNameFieldValue() != nil) {
             queryItems.append(URLQueryItem(name: "fileNameFieldValue", value: try ObjectSerializer.serializeToString(value: self.getFileNameFieldValue()!)));
         }

         if (self.getStorage() != nil) {
             queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serializeToString(value: self.getStorage()!)));
         }

         if (self.getFontsLocation() != nil) {
             queryItems.append(URLQueryItem(name: "fontsLocation", value: try ObjectSerializer.serializeToString(value: self.getFontsLocation()!)));
         }

         if (queryItems.count > 0) {
             urlBuilder.queryItems = queryItems;
         }
         var formParams : [RequestFormParam] = [];
         formParams.append(RequestFormParam(name: "document", body: try ObjectSerializer.serializeFile(value: self.getDocument()), contentType: "application/octet-stream"));


         var result = WordsApiRequestData(url: urlBuilder.url!, method: "PUT");
         result.setBody(formParams: formParams);
         return result;
    }

    // Deserialize response of this request
    public func deserializeResponse(data : Data) throws -> Any? {
        return data;
    }
}
