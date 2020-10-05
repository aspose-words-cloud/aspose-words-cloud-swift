/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="CreateDocumentRequest.swift">
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

// Request model for createDocument operation.
public class CreateDocumentRequest {
    private let storage : String?;
    private let fileName : String?;
    private let folder : String?;

    private enum CodingKeys: String, CodingKey {
        case storage;
        case fileName;
        case folder;
        case invalidCodingKey;
    }

    // Initializes a new instance of the CreateDocumentRequest class.
    public init(storage : String? = nil, fileName : String? = nil, folder : String? = nil) {
        self.storage = storage;
        self.fileName = fileName;
        self.folder = folder;
    }

    // Creates the api request data
    public func createApiRequest() throws -> ApiRequest {
         var rawPath = "/words/create";
         rawPath = rawPath.replacingOccurrences(of: "//", with: "/");

         let urlPath = (try self.configuration.getApiRootUrl()).appendingPathComponent(rawPath);
         var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
         var queryItems : [URLQueryItem] = [];
         if (request.getStorage() != nil) {
             queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serializeToString(value: request.getStorage()!)));
         }

         if (request.getFileName() != nil) {
             queryItems.append(URLQueryItem(name: "fileName", value: try ObjectSerializer.serializeToString(value: request.getFileName()!)));
         }

         if (request.getFolder() != nil) {
             queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serializeToString(value: request.getFolder()!)));
         }

         if (queryItems.count > 0) {
             urlBuilder.queryItems = queryItems;
         }

         let result = ApiRequest(url: urlBuilder.url!, method: "PUT");
         return result;
    }

    // Original document storage.
    public func getStorage() -> String? {
        return self.storage;
    }

    // The document name.
    public func getFileName() -> String? {
        return self.fileName;
    }

    // The document folder.
    public func getFolder() -> String? {
        return self.folder;
    }
}
