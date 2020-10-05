/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="GetRangeTextRequest.swift">
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

// Request model for getRangeText operation.
public class GetRangeTextRequest {
    private let name : String;
    private let rangeStartIdentifier : String;
    private let rangeEndIdentifier : String?;
    private let folder : String?;
    private let storage : String?;
    private let loadEncoding : String?;
    private let password : String?;

    private enum CodingKeys: String, CodingKey {
        case name;
        case rangeStartIdentifier;
        case rangeEndIdentifier;
        case folder;
        case storage;
        case loadEncoding;
        case password;
        case invalidCodingKey;
    }

    // Initializes a new instance of the GetRangeTextRequest class.
    public init(name : String, rangeStartIdentifier : String, rangeEndIdentifier : String? = nil, folder : String? = nil, storage : String? = nil, loadEncoding : String? = nil, password : String? = nil) {
        self.name = name;
        self.rangeStartIdentifier = rangeStartIdentifier;
        self.rangeEndIdentifier = rangeEndIdentifier;
        self.folder = folder;
        self.storage = storage;
        self.loadEncoding = loadEncoding;
        self.password = password;
    }

    // The document.
    public func getName() -> String {
        return self.name;
    }

    // The range start identifier.
    // Identifier is the value of the "nodeId" field, which every document node has, extended with the prefix "id".
    // It looks like "id0.0.7". Also values like "image5" and "table3" can be used as an identifier for images and tables, where the number is an index of the image/table.
    public func getRangeStartIdentifier() -> String {
        return self.rangeStartIdentifier;
    }

    // The range end identifier.
    public func getRangeEndIdentifier() -> String? {
        return self.rangeEndIdentifier;
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

    // Creates the api request data
    public func createApiRequest(configuration : Configuration) throws -> ApiRequest {
         var rawPath = "/words/{name}/range/{rangeStartIdentifier}/{rangeEndIdentifier}";
         rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: self.getName()));

         rawPath = rawPath.replacingOccurrences(of: "{rangeStartIdentifier}", with: try ObjectSerializer.serializeToString(value: self.getRangeStartIdentifier()));

         if (self.getRangeEndIdentifier() != nil) {
             rawPath = rawPath.replacingOccurrences(of: "{rangeEndIdentifier}", with: try ObjectSerializer.serializeToString(value: self.getRangeEndIdentifier()!));
         }
         else {
             rawPath = rawPath.replacingOccurrences(of: "{rangeEndIdentifier}", with: "");
         }

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
             queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serializeToString(value: self.getPassword()!)));
         }

         if (queryItems.count > 0) {
             urlBuilder.queryItems = queryItems;
         }

         let result = ApiRequest(url: urlBuilder.url!, method: "GET");
         return result;
    }
}
