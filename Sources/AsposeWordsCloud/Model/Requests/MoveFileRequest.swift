/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="MoveFileRequest.swift">
 *   Copyright (c) 2025 Aspose.Words for Cloud
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

// Request model for moveFile operation.
public class MoveFileRequest : WordsApiRequest {
    private let destPath : String;
    private let srcPath : String;
    private let srcStorageName : String?;
    private let destStorageName : String?;
    private let versionId : String?;

    private enum CodingKeys: String, CodingKey {
        case destPath;
        case srcPath;
        case srcStorageName;
        case destStorageName;
        case versionId;
        case invalidCodingKey;
    }

    // Initializes a new instance of the MoveFileRequest class.
    public init(destPath : String, srcPath : String, srcStorageName : String? = nil, destStorageName : String? = nil, versionId : String? = nil) {
        self.destPath = destPath;
        self.srcPath = srcPath;
        self.srcStorageName = srcStorageName;
        self.destStorageName = destStorageName;
        self.versionId = versionId;
    }

    // Destination file path e.g. '/dest.ext'.
    public func getDestPath() -> String {
        return self.destPath;
    }

    // Source file's path e.g. '/Folder 1/file.ext' or '/Bucket/Folder 1/file.ext'.
    public func getSrcPath() -> String {
        return self.srcPath;
    }

    // Source storage name.
    public func getSrcStorageName() -> String? {
        return self.srcStorageName;
    }

    // Destination storage name.
    public func getDestStorageName() -> String? {
        return self.destStorageName;
    }

    // File version ID to move.
    public func getVersionId() -> String? {
        return self.versionId;
    }

    // Creates the api request data
    public func createApiRequestData(apiInvoker : ApiInvoker, configuration : Configuration) throws -> WordsApiRequestData {
         var rawPath = "/words/storage/file/move/{srcPath}";
         rawPath = rawPath.replacingOccurrences(of: "{srcPath}", with: try ObjectSerializer.serializeToString(value: self.getSrcPath()));

         rawPath = rawPath.replacingOccurrences(of: "//", with: "/");

         let urlPath = (try configuration.getApiRootUrl()).appendingPathComponent(rawPath);
         var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
         var queryItems : [URLQueryItem] = [];
         #if os(Linux) 
             queryItems.append(URLQueryItem(name: "destPath", value: try ObjectSerializer.serializeToString(value: self.getDestPath())));
         #else
                 queryItems.append(URLQueryItem(name: "destPath", value: try ObjectSerializer.serializeToString(value: self.getDestPath())));
         #endif


             if (self.getSrcStorageName() != nil) {

         #if os(Linux) 
                     queryItems.append(URLQueryItem(name: "srcStorageName", value: try ObjectSerializer.serializeToString(value: self.getSrcStorageName()!)));

         #else
                     queryItems.append(URLQueryItem(name: "srcStorageName", value: try ObjectSerializer.serializeToString(value: self.getSrcStorageName()!)));

         #endif        
             }


             if (self.getDestStorageName() != nil) {

         #if os(Linux) 
                     queryItems.append(URLQueryItem(name: "destStorageName", value: try ObjectSerializer.serializeToString(value: self.getDestStorageName()!)));

         #else
                     queryItems.append(URLQueryItem(name: "destStorageName", value: try ObjectSerializer.serializeToString(value: self.getDestStorageName()!)));

         #endif        
             }


             if (self.getVersionId() != nil) {

         #if os(Linux) 
                     queryItems.append(URLQueryItem(name: "versionId", value: try ObjectSerializer.serializeToString(value: self.getVersionId()!)));

         #else
                     queryItems.append(URLQueryItem(name: "versionId", value: try ObjectSerializer.serializeToString(value: self.getVersionId()!)));

         #endif        
             }

         if (queryItems.count > 0) {
             urlBuilder.queryItems = queryItems;
         }
         var formParams = [RequestFormParam]();
         var requestFilesContent = [FileReference]();
         try apiInvoker.prepareFilesContent(&requestFilesContent);
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
        return nil;
    }
}
