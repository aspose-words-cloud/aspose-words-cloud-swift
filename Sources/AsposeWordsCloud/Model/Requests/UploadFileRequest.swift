/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="UploadFileRequest.swift">
 *   Copyright (c) 2022 Aspose.Words for Cloud
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

// Request model for uploadFile operation.
@available(macOS 10.12, iOS 10.3, watchOS 3.3, tvOS 12.0, *)
public class UploadFileRequest : WordsApiRequest {
    private let fileContent : InputStream;
    private let path : String;
    private let storageName : String?;

    private enum CodingKeys: String, CodingKey {
        case fileContent;
        case path;
        case storageName;
        case invalidCodingKey;
    }

    // Initializes a new instance of the UploadFileRequest class.
    public init(fileContent : InputStream, path : String, storageName : String? = nil) {
        self.fileContent = fileContent;
        self.path = path;
        self.storageName = storageName;
    }

    // File to upload.
    public func getFileContent() -> InputStream {
        return self.fileContent;
    }

    // Path where to upload including filename and extension e.g. /file.ext or /Folder 1/file.ext
    // If the content is multipart and path does not contains the file name it tries to get them from filename parameter
    // from Content-Disposition header.
    public func getPath() -> String {
        return self.path;
    }

    // Storage name.
    public func getStorageName() -> String? {
        return self.storageName;
    }

    // Creates the api request data
    public func createApiRequestData(apiInvoker : ApiInvoker, configuration : Configuration) throws -> WordsApiRequestData {
         var rawPath = "/words/storage/file/{path}";
         rawPath = rawPath.replacingOccurrences(of: "{path}", with: try ObjectSerializer.serializeToString(value: self.getPath()));

         rawPath = rawPath.replacingOccurrences(of: "//", with: "/");

         let urlPath = (try configuration.getApiRootUrl()).appendingPathComponent(rawPath);
         var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
         var queryItems : [URLQueryItem] = [];
         if (self.getStorageName() != nil) {
         queryItems.append(URLQueryItem(name: "storageName", value: try ObjectSerializer.serializeToString(value: self.getStorageName()!)));
         }
         if (queryItems.count > 0) {
             urlBuilder.queryItems = queryItems;
         }
         var formParams : [RequestFormParam] = [];
         formParams.append(RequestFormParam(name: "fileContent", body: try ObjectSerializer.serializeFile(value: self.getFileContent()), contentType: "application/octet-stream"));


         var result = WordsApiRequestData(url: urlBuilder.url!, method: "PUT");
         result.setBody(formParams: formParams);
         return result;
    }

    // Deserialize response of this request
    public func deserializeResponse(data : Data, headers : [String: String]) throws -> Any? {
        return try ObjectSerializer.deserialize(type: FilesUploadResult.self, from: data);
    }
}
