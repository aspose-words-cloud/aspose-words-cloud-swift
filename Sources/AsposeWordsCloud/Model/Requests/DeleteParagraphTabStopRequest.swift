/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="DeleteParagraphTabStopRequest.swift">
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

// Request model for deleteParagraphTabStop operation.
public class DeleteParagraphTabStopRequest : WordsApiRequest {
    private let name : String;
    private let position : Double;
    private let index : Int;
    private let nodePath : String?;
    private let folder : String?;
    private let storage : String?;
    private let loadEncoding : String?;
    private let password : String?;
    private let destFileName : String?;

    private enum CodingKeys: String, CodingKey {
        case name;
        case position;
        case index;
        case nodePath;
        case folder;
        case storage;
        case loadEncoding;
        case password;
        case destFileName;
        case invalidCodingKey;
    }

    // Initializes a new instance of the DeleteParagraphTabStopRequest class.
    public init(name : String, position : Double, index : Int, nodePath : String? = nil, folder : String? = nil, storage : String? = nil, loadEncoding : String? = nil, password : String? = nil, destFileName : String? = nil) {
        self.name = name;
        self.position = position;
        self.index = index;
        self.nodePath = nodePath;
        self.folder = folder;
        self.storage = storage;
        self.loadEncoding = loadEncoding;
        self.password = password;
        self.destFileName = destFileName;
    }

    // The filename of the input document.
    public func getName() -> String {
        return self.name;
    }

    // The position of a tab stop to remove.
    public func getPosition() -> Double {
        return self.position;
    }

    // Object index.
    public func getIndex() -> Int {
        return self.index;
    }

    // The path to the node in the document tree.
    public func getNodePath() -> String? {
        return self.nodePath;
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

    // Result path of the document after the operation. If this parameter is omitted then result of the operation will be saved as the source document.
    public func getDestFileName() -> String? {
        return self.destFileName;
    }

    // Creates the api request data
    public func createApiRequestData(configuration : Configuration) throws -> WordsApiRequestData {
         var rawPath = "/words/{name}/{nodePath}/paragraphs/{index}/tabstop";
         rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: self.getName()));

         rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serializeToString(value: self.getIndex()));

         if (self.getNodePath() != nil) {
             rawPath = rawPath.replacingOccurrences(of: "{nodePath}", with: try ObjectSerializer.serializeToString(value: self.getNodePath()!));
         }
         else {
             rawPath = rawPath.replacingOccurrences(of: "{nodePath}", with: "");
         }

         rawPath = rawPath.replacingOccurrences(of: "//", with: "/");

         let urlPath = (try configuration.getApiRootUrl()).appendingPathComponent(rawPath);
         var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
         var queryItems : [URLQueryItem] = [];
         queryItems.append(URLQueryItem(name: "position", value: try ObjectSerializer.serializeToString(value: self.getPosition())));

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

         if (self.getDestFileName() != nil) {
             queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serializeToString(value: self.getDestFileName()!)));
         }

         if (queryItems.count > 0) {
             urlBuilder.queryItems = queryItems;
         }

         let result = WordsApiRequestData(url: urlBuilder.url!, method: "DELETE");
         return result;
    }

    // Deserialize response of this request
    public func deserializeResponse(data : Data) throws -> Any? {
        return try ObjectSerializer.deserialize(type: TabStopsResponse.self, from: data);
    }
}
