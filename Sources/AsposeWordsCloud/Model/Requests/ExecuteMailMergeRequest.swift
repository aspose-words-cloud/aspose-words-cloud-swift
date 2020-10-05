/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="ExecuteMailMergeRequest.swift">
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

// Request model for executeMailMerge operation.
public class ExecuteMailMergeRequest {
    private let name : String;
    private let data : String?;
    private let folder : String?;
    private let storage : String?;
    private let loadEncoding : String?;
    private let password : String?;
    private let withRegions : Bool?;
    private let mailMergeDataFile : String?;
    private let cleanup : String?;
    private let useWholeParagraphAsRegion : Bool?;
    private let destFileName : String?;

    private enum CodingKeys: String, CodingKey {
        case name;
        case data;
        case folder;
        case storage;
        case loadEncoding;
        case password;
        case withRegions;
        case mailMergeDataFile;
        case cleanup;
        case useWholeParagraphAsRegion;
        case destFileName;
        case invalidCodingKey;
    }

    // Initializes a new instance of the ExecuteMailMergeRequest class.
    public init(name : String, data : String? = nil, folder : String? = nil, storage : String? = nil, loadEncoding : String? = nil, password : String? = nil, withRegions : Bool? = nil, mailMergeDataFile : String? = nil, cleanup : String? = nil, useWholeParagraphAsRegion : Bool? = nil, destFileName : String? = nil) {
        self.name = name;
        self.data = data;
        self.folder = folder;
        self.storage = storage;
        self.loadEncoding = loadEncoding;
        self.password = password;
        self.withRegions = withRegions;
        self.mailMergeDataFile = mailMergeDataFile;
        self.cleanup = cleanup;
        self.useWholeParagraphAsRegion = useWholeParagraphAsRegion;
        self.destFileName = destFileName;
    }

    // Creates the api request data
    public createApiRequest() throws -> ApiRequest {
         var rawPath = "/words/{name}/MailMerge";
         rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));

         rawPath = rawPath.replacingOccurrences(of: "//", with: "/");

         let urlPath = (try self.configuration.getApiRootUrl()).appendingPathComponent(rawPath);
         var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
         var queryItems : [URLQueryItem] = [];
         if (request.getFolder() != nil) {
             queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serializeToString(value: request.getFolder()!)));
         }

         if (request.getStorage() != nil) {
             queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serializeToString(value: request.getStorage()!)));
         }

         if (request.getLoadEncoding() != nil) {
             queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serializeToString(value: request.getLoadEncoding()!)));
         }

         if (request.getPassword() != nil) {
             queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serializeToString(value: request.getPassword()!)));
         }

         if (request.getWithRegions() != nil) {
             queryItems.append(URLQueryItem(name: "withRegions", value: try ObjectSerializer.serializeToString(value: request.getWithRegions()!)));
         }

         if (request.getMailMergeDataFile() != nil) {
             queryItems.append(URLQueryItem(name: "mailMergeDataFile", value: try ObjectSerializer.serializeToString(value: request.getMailMergeDataFile()!)));
         }

         if (request.getCleanup() != nil) {
             queryItems.append(URLQueryItem(name: "cleanup", value: try ObjectSerializer.serializeToString(value: request.getCleanup()!)));
         }

         if (request.getUseWholeParagraphAsRegion() != nil) {
             queryItems.append(URLQueryItem(name: "useWholeParagraphAsRegion", value: try ObjectSerializer.serializeToString(value: request.getUseWholeParagraphAsRegion()!)));
         }

         if (request.getDestFileName() != nil) {
             queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serializeToString(value: request.getDestFileName()!)));
         }

         if (queryItems.count > 0) {
             urlBuilder.queryItems = queryItems;
         }
         var formParams : [RequestFormParam] = [];
         if (request.getData() != nil) {
             formParams.append(RequestFormParam(name: "data", body: try ObjectSerializer.serialize(value: request.getData()!), contentType: "application/json"));
         }


         var result = ApiRequest(url: urlBuilder.url!, method: "PUT");
         result.setBody(formParams: formParams);
         return result;
    }

    // The template name.
    public func getName() -> String {
        return self.name;
    }

    // Mail merge data.
    public func getData() -> String? {
        return self.data;
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

    // With regions flag.
    public func getWithRegions() -> Bool? {
        return self.withRegions;
    }

    // Mail merge data file.
    public func getMailMergeDataFile() -> String? {
        return self.mailMergeDataFile;
    }

    // Clean up options.
    public func getCleanup() -> String? {
        return self.cleanup;
    }

    // Gets or sets a value indicating whether paragraph with TableStart or.
    // TableEnd field should be fully included into mail merge region or particular range between TableStart and TableEnd fields.
    // The default value is true.
    public func getUseWholeParagraphAsRegion() -> Bool? {
        return self.useWholeParagraphAsRegion;
    }

    // Result name of the document after the operation. If this parameter is omitted then result of the operation will be saved with autogenerated name.
    public func getDestFileName() -> String? {
        return self.destFileName;
    }
}
