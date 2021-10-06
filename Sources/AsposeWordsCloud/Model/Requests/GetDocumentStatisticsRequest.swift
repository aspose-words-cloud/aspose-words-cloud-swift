/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="GetDocumentStatisticsRequest.swift">
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

// Request model for getDocumentStatistics operation.
@available(macOS 10.12, iOS 10.3, watchOS 3.3, tvOS 12.0, *)
public class GetDocumentStatisticsRequest : WordsApiRequest {
    private let name : String;
    private let folder : String?;
    private let storage : String?;
    private let loadEncoding : String?;
    private let password : String?;
    private let includeComments : Bool?;
    private let includeFootnotes : Bool?;
    private let includeTextInShapes : Bool?;

    private enum CodingKeys: String, CodingKey {
        case name;
        case folder;
        case storage;
        case loadEncoding;
        case password;
        case includeComments;
        case includeFootnotes;
        case includeTextInShapes;
        case invalidCodingKey;
    }

    // Initializes a new instance of the GetDocumentStatisticsRequest class.
    public init(name : String, folder : String? = nil, storage : String? = nil, loadEncoding : String? = nil, password : String? = nil, includeComments : Bool? = nil, includeFootnotes : Bool? = nil, includeTextInShapes : Bool? = nil) {
        self.name = name;
        self.folder = folder;
        self.storage = storage;
        self.loadEncoding = loadEncoding;
        self.password = password;
        self.includeComments = includeComments;
        self.includeFootnotes = includeFootnotes;
        self.includeTextInShapes = includeTextInShapes;
    }

    // The filename of the input document.
    public func getName() -> String {
        return self.name;
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

    // The flag indicating whether to include comments from the WordCount. The default value is "false".
    public func getIncludeComments() -> Bool? {
        return self.includeComments;
    }

    // The flag indicating whether to include footnotes from the WordCount. The default value is "false".
    public func getIncludeFootnotes() -> Bool? {
        return self.includeFootnotes;
    }

    // The flag indicating whether to include shape's text from the WordCount. The default value is "false".
    public func getIncludeTextInShapes() -> Bool? {
        return self.includeTextInShapes;
    }

    // Creates the api request data
    public func createApiRequestData(apiInvoker : ApiInvoker, configuration : Configuration) throws -> WordsApiRequestData {
         var rawPath = "/words/{name}/statistics";
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
         queryItems.append(URLQueryItem(name: "encryptedPassword", value: try apiInvoker.encryptString(value: self.getPassword()!)));
         }
         if (self.getIncludeComments() != nil) {
         queryItems.append(URLQueryItem(name: "includeComments", value: try ObjectSerializer.serializeToString(value: self.getIncludeComments()!)));
         }
         if (self.getIncludeFootnotes() != nil) {
         queryItems.append(URLQueryItem(name: "includeFootnotes", value: try ObjectSerializer.serializeToString(value: self.getIncludeFootnotes()!)));
         }
         if (self.getIncludeTextInShapes() != nil) {
         queryItems.append(URLQueryItem(name: "includeTextInShapes", value: try ObjectSerializer.serializeToString(value: self.getIncludeTextInShapes()!)));
         }
         if (queryItems.count > 0) {
             urlBuilder.queryItems = queryItems;
         }

         let result = WordsApiRequestData(url: urlBuilder.url!, method: "GET");
         return result;
    }

    // Deserialize response of this request
    public func deserializeResponse(data : Data) throws -> Any? {
        return try ObjectSerializer.deserialize(type: StatDataResponse.self, from: data);
    }
}
