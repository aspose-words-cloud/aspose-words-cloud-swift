/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="WordsAPI.swift">
 *   Copyright (c) 2019 Aspose.Words for Cloud
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

public class WordsAPI {
    private let configuration : Configuration;
    private let apiInvoker : ApiInvoker;
    
    public init(configuration : Configuration) {
        self.configuration = configuration;
        self.apiInvoker = ApiInvoker(configuration: configuration);
    }
    
    public func acceptAllRevisions(request : AcceptAllRevisionsRequest) throws -> RevisionsModificationResponse {
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent("/words/{name}/revisions/acceptAll");
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: "\(request.getFolder()!)"));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: "\(request.getStorage()!)"));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: "\(request.getLoadEncoding()!)"));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: "\(request.getPassword()!)"));
        }
        if (request.getDestFileName() != nil) {
            queryItems.append(URLQueryItem(name: "destFileName", value: "\(request.getDestFileName()!)"));
        }
        
        urlBuilder.queryItems = queryItems;
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: nil,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: RevisionsModificationResponse.self, from: response);
    }   
    
    public func appendDocument(request : AppendDocumentRequest) throws -> DocumentResponse {
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent("/words/{name}/appendDocument");
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: "\(request.getFolder()!)"));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: "\(request.getStorage()!)"));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: "\(request.getLoadEncoding()!)"));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: "\(request.getPassword()!)"));
        }
        if (request.getDestFileName() != nil) {
            queryItems.append(URLQueryItem(name: "destFileName", value: "\(request.getDestFileName()!)"));
        }
        if (request.getRevisionAuthor() != nil) {
            queryItems.append(URLQueryItem(name: "revisionAuthor", value: "\(request.getRevisionAuthor()!)"));
        }
        if (request.getRevisionDateTime() != nil) {
            queryItems.append(URLQueryItem(name: "revisionDateTime", value: "\(request.getRevisionDateTime()!)"));
        }
        
        urlBuilder.queryItems = queryItems;
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: nil,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: DocumentResponse.self, from: response);
    }   
    
    public func classify(request : ClassifyRequest) throws -> ClassificationResponse {
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent("/words/classify");
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        
        if (request.getBestClassesCount() != nil) {
            queryItems.append(URLQueryItem(name: "bestClassesCount", value: "\(request.getBestClassesCount()!)"));
        }
        
        urlBuilder.queryItems = queryItems;
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: nil,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: ClassificationResponse.self, from: response);
    }   
    
    public func classifyDocument(request : ClassifyDocumentRequest) throws -> ClassificationResponse {
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent("/words/{documentName}/classify");
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: "\(request.getFolder()!)"));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: "\(request.getStorage()!)"));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: "\(request.getLoadEncoding()!)"));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: "\(request.getPassword()!)"));
        }
        if (request.getBestClassesCount() != nil) {
            queryItems.append(URLQueryItem(name: "bestClassesCount", value: "\(request.getBestClassesCount()!)"));
        }
        if (request.getTaxonomy() != nil) {
            queryItems.append(URLQueryItem(name: "taxonomy", value: "\(request.getTaxonomy()!)"));
        }
        
        urlBuilder.queryItems = queryItems;
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: nil,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: ClassificationResponse.self, from: response);
    }   
    
    public func compareDocument(request : CompareDocumentRequest) throws -> DocumentResponse {
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent("/words/{name}/compareDocument");
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: "\(request.getFolder()!)"));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: "\(request.getStorage()!)"));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: "\(request.getLoadEncoding()!)"));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: "\(request.getPassword()!)"));
        }
        if (request.getDestFileName() != nil) {
            queryItems.append(URLQueryItem(name: "destFileName", value: "\(request.getDestFileName()!)"));
        }
        
        urlBuilder.queryItems = queryItems;
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: nil,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: DocumentResponse.self, from: response);
    }   
    
    public func convertDocument(request : ConvertDocumentRequest) throws -> URL {
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent("/words/convert");
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        
        if (request.getFormat() != nil) {
            queryItems.append(URLQueryItem(name: "format", value: "\(request.getFormat()!)"));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: "\(request.getStorage()!)"));
        }
        if (request.getOutPath() != nil) {
            queryItems.append(URLQueryItem(name: "outPath", value: "\(request.getOutPath()!)"));
        }
        if (request.getFileNameFieldValue() != nil) {
            queryItems.append(URLQueryItem(name: "fileNameFieldValue", value: "\(request.getFileNameFieldValue()!)"));
        }
        if (request.getFontsLocation() != nil) {
            queryItems.append(URLQueryItem(name: "fontsLocation", value: "\(request.getFontsLocation()!)"));
        }
        
        urlBuilder.queryItems = queryItems;
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: nil,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: URL.self, from: response);
    }   
    
    public func copyFile(request : CopyFileRequest) throws  {
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent("/words/storage/file/copy/{srcPath}");
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        
        if (request.getDestPath() != nil) {
            queryItems.append(URLQueryItem(name: "destPath", value: "\(request.getDestPath()!)"));
        }
        if (request.getSrcStorageName() != nil) {
            queryItems.append(URLQueryItem(name: "srcStorageName", value: "\(request.getSrcStorageName()!)"));
        }
        if (request.getDestStorageName() != nil) {
            queryItems.append(URLQueryItem(name: "destStorageName", value: "\(request.getDestStorageName()!)"));
        }
        if (request.getVersionId() != nil) {
            queryItems.append(URLQueryItem(name: "versionId", value: "\(request.getVersionId()!)"));
        }
        
        urlBuilder.queryItems = queryItems;
        
        _ = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: nil,
            headers: nil,
            formParams: nil
        );
        
    }   
    
    public func copyFolder(request : CopyFolderRequest) throws  {
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent("/words/storage/folder/copy/{srcPath}");
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        
        if (request.getDestPath() != nil) {
            queryItems.append(URLQueryItem(name: "destPath", value: "\(request.getDestPath()!)"));
        }
        if (request.getSrcStorageName() != nil) {
            queryItems.append(URLQueryItem(name: "srcStorageName", value: "\(request.getSrcStorageName()!)"));
        }
        if (request.getDestStorageName() != nil) {
            queryItems.append(URLQueryItem(name: "destStorageName", value: "\(request.getDestStorageName()!)"));
        }
        
        urlBuilder.queryItems = queryItems;
        
        _ = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: nil,
            headers: nil,
            formParams: nil
        );
        
    }   
    
    public func createDocument(request : CreateDocumentRequest) throws -> DocumentResponse {
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent("/words/create");
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: "\(request.getStorage()!)"));
        }
        if (request.getFileName() != nil) {
            queryItems.append(URLQueryItem(name: "fileName", value: "\(request.getFileName()!)"));
        }
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: "\(request.getFolder()!)"));
        }
        
        urlBuilder.queryItems = queryItems;
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: nil,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: DocumentResponse.self, from: response);
    }   
    
    public func createFolder(request : CreateFolderRequest) throws  {
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent("/words/storage/folder/{path}");
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        
        if (request.getStorageName() != nil) {
            queryItems.append(URLQueryItem(name: "storageName", value: "\(request.getStorageName()!)"));
        }
        
        urlBuilder.queryItems = queryItems;
        
        _ = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: nil,
            headers: nil,
            formParams: nil
        );
        
    }   
    
    public func createOrUpdateDocumentProperty(request : CreateOrUpdateDocumentPropertyRequest) throws -> DocumentPropertyResponse {
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent("/words/{name}/documentProperties/{propertyName}");
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: "\(request.getFolder()!)"));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: "\(request.getStorage()!)"));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: "\(request.getLoadEncoding()!)"));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: "\(request.getPassword()!)"));
        }
        if (request.getDestFileName() != nil) {
            queryItems.append(URLQueryItem(name: "destFileName", value: "\(request.getDestFileName()!)"));
        }
        if (request.getRevisionAuthor() != nil) {
            queryItems.append(URLQueryItem(name: "revisionAuthor", value: "\(request.getRevisionAuthor()!)"));
        }
        if (request.getRevisionDateTime() != nil) {
            queryItems.append(URLQueryItem(name: "revisionDateTime", value: "\(request.getRevisionDateTime()!)"));
        }
        
        urlBuilder.queryItems = queryItems;
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: nil,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: DocumentPropertyResponse.self, from: response);
    }   
    
    public func deleteBorder(request : DeleteBorderRequest) throws -> BorderResponse {
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent("/words/{name}/{nodePath}/borders/{borderType}");
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: "\(request.getFolder()!)"));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: "\(request.getStorage()!)"));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: "\(request.getLoadEncoding()!)"));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: "\(request.getPassword()!)"));
        }
        if (request.getDestFileName() != nil) {
            queryItems.append(URLQueryItem(name: "destFileName", value: "\(request.getDestFileName()!)"));
        }
        if (request.getRevisionAuthor() != nil) {
            queryItems.append(URLQueryItem(name: "revisionAuthor", value: "\(request.getRevisionAuthor()!)"));
        }
        if (request.getRevisionDateTime() != nil) {
            queryItems.append(URLQueryItem(name: "revisionDateTime", value: "\(request.getRevisionDateTime()!)"));
        }
        
        urlBuilder.queryItems = queryItems;
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: nil,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: BorderResponse.self, from: response);
    }   
    
    public func deleteBorders(request : DeleteBordersRequest) throws -> BordersResponse {
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent("/words/{name}/{nodePath}/borders");
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: "\(request.getFolder()!)"));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: "\(request.getStorage()!)"));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: "\(request.getLoadEncoding()!)"));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: "\(request.getPassword()!)"));
        }
        if (request.getDestFileName() != nil) {
            queryItems.append(URLQueryItem(name: "destFileName", value: "\(request.getDestFileName()!)"));
        }
        if (request.getRevisionAuthor() != nil) {
            queryItems.append(URLQueryItem(name: "revisionAuthor", value: "\(request.getRevisionAuthor()!)"));
        }
        if (request.getRevisionDateTime() != nil) {
            queryItems.append(URLQueryItem(name: "revisionDateTime", value: "\(request.getRevisionDateTime()!)"));
        }
        
        urlBuilder.queryItems = queryItems;
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: nil,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: BordersResponse.self, from: response);
    }   
    
    public func deleteComment(request : DeleteCommentRequest) throws  {
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent("/words/{name}/comments/{commentIndex}");
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: "\(request.getFolder()!)"));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: "\(request.getStorage()!)"));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: "\(request.getLoadEncoding()!)"));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: "\(request.getPassword()!)"));
        }
        if (request.getDestFileName() != nil) {
            queryItems.append(URLQueryItem(name: "destFileName", value: "\(request.getDestFileName()!)"));
        }
        if (request.getRevisionAuthor() != nil) {
            queryItems.append(URLQueryItem(name: "revisionAuthor", value: "\(request.getRevisionAuthor()!)"));
        }
        if (request.getRevisionDateTime() != nil) {
            queryItems.append(URLQueryItem(name: "revisionDateTime", value: "\(request.getRevisionDateTime()!)"));
        }
        
        urlBuilder.queryItems = queryItems;
        
        _ = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: nil,
            headers: nil,
            formParams: nil
        );
        
    }   
    
    public func deleteDocumentProperty(request : DeleteDocumentPropertyRequest) throws  {
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent("/words/{name}/documentProperties/{propertyName}");
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: "\(request.getFolder()!)"));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: "\(request.getStorage()!)"));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: "\(request.getLoadEncoding()!)"));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: "\(request.getPassword()!)"));
        }
        if (request.getDestFileName() != nil) {
            queryItems.append(URLQueryItem(name: "destFileName", value: "\(request.getDestFileName()!)"));
        }
        if (request.getRevisionAuthor() != nil) {
            queryItems.append(URLQueryItem(name: "revisionAuthor", value: "\(request.getRevisionAuthor()!)"));
        }
        if (request.getRevisionDateTime() != nil) {
            queryItems.append(URLQueryItem(name: "revisionDateTime", value: "\(request.getRevisionDateTime()!)"));
        }
        
        urlBuilder.queryItems = queryItems;
        
        _ = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: nil,
            headers: nil,
            formParams: nil
        );
        
    }   
    
    public func deleteDrawingObject(request : DeleteDrawingObjectRequest) throws  {
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent("/words/{name}/{nodePath}/drawingObjects/{index}");
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: "\(request.getFolder()!)"));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: "\(request.getStorage()!)"));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: "\(request.getLoadEncoding()!)"));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: "\(request.getPassword()!)"));
        }
        if (request.getDestFileName() != nil) {
            queryItems.append(URLQueryItem(name: "destFileName", value: "\(request.getDestFileName()!)"));
        }
        if (request.getRevisionAuthor() != nil) {
            queryItems.append(URLQueryItem(name: "revisionAuthor", value: "\(request.getRevisionAuthor()!)"));
        }
        if (request.getRevisionDateTime() != nil) {
            queryItems.append(URLQueryItem(name: "revisionDateTime", value: "\(request.getRevisionDateTime()!)"));
        }
        
        urlBuilder.queryItems = queryItems;
        
        _ = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: nil,
            headers: nil,
            formParams: nil
        );
        
    }   
    
    public func deleteDrawingObjectWithoutNodePath(request : DeleteDrawingObjectWithoutNodePathRequest) throws  {
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent("/words/{name}/drawingObjects/{index}");
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: "\(request.getFolder()!)"));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: "\(request.getStorage()!)"));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: "\(request.getLoadEncoding()!)"));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: "\(request.getPassword()!)"));
        }
        if (request.getDestFileName() != nil) {
            queryItems.append(URLQueryItem(name: "destFileName", value: "\(request.getDestFileName()!)"));
        }
        if (request.getRevisionAuthor() != nil) {
            queryItems.append(URLQueryItem(name: "revisionAuthor", value: "\(request.getRevisionAuthor()!)"));
        }
        if (request.getRevisionDateTime() != nil) {
            queryItems.append(URLQueryItem(name: "revisionDateTime", value: "\(request.getRevisionDateTime()!)"));
        }
        
        urlBuilder.queryItems = queryItems;
        
        _ = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: nil,
            headers: nil,
            formParams: nil
        );
        
    }   
    
    public func deleteField(request : DeleteFieldRequest) throws  {
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent("/words/{name}/{nodePath}/fields/{index}");
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: "\(request.getFolder()!)"));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: "\(request.getStorage()!)"));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: "\(request.getLoadEncoding()!)"));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: "\(request.getPassword()!)"));
        }
        if (request.getDestFileName() != nil) {
            queryItems.append(URLQueryItem(name: "destFileName", value: "\(request.getDestFileName()!)"));
        }
        if (request.getRevisionAuthor() != nil) {
            queryItems.append(URLQueryItem(name: "revisionAuthor", value: "\(request.getRevisionAuthor()!)"));
        }
        if (request.getRevisionDateTime() != nil) {
            queryItems.append(URLQueryItem(name: "revisionDateTime", value: "\(request.getRevisionDateTime()!)"));
        }
        
        urlBuilder.queryItems = queryItems;
        
        _ = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: nil,
            headers: nil,
            formParams: nil
        );
        
    }   
    
    public func deleteFieldWithoutNodePath(request : DeleteFieldWithoutNodePathRequest) throws  {
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent("/words/{name}/fields/{index}");
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: "\(request.getFolder()!)"));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: "\(request.getStorage()!)"));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: "\(request.getLoadEncoding()!)"));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: "\(request.getPassword()!)"));
        }
        if (request.getDestFileName() != nil) {
            queryItems.append(URLQueryItem(name: "destFileName", value: "\(request.getDestFileName()!)"));
        }
        if (request.getRevisionAuthor() != nil) {
            queryItems.append(URLQueryItem(name: "revisionAuthor", value: "\(request.getRevisionAuthor()!)"));
        }
        if (request.getRevisionDateTime() != nil) {
            queryItems.append(URLQueryItem(name: "revisionDateTime", value: "\(request.getRevisionDateTime()!)"));
        }
        
        urlBuilder.queryItems = queryItems;
        
        _ = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: nil,
            headers: nil,
            formParams: nil
        );
        
    }   
    
    public func deleteFields(request : DeleteFieldsRequest) throws  {
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent("/words/{name}/{nodePath}/fields");
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: "\(request.getFolder()!)"));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: "\(request.getStorage()!)"));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: "\(request.getLoadEncoding()!)"));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: "\(request.getPassword()!)"));
        }
        if (request.getDestFileName() != nil) {
            queryItems.append(URLQueryItem(name: "destFileName", value: "\(request.getDestFileName()!)"));
        }
        if (request.getRevisionAuthor() != nil) {
            queryItems.append(URLQueryItem(name: "revisionAuthor", value: "\(request.getRevisionAuthor()!)"));
        }
        if (request.getRevisionDateTime() != nil) {
            queryItems.append(URLQueryItem(name: "revisionDateTime", value: "\(request.getRevisionDateTime()!)"));
        }
        
        urlBuilder.queryItems = queryItems;
        
        _ = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: nil,
            headers: nil,
            formParams: nil
        );
        
    }   
    
    public func deleteFieldsWithoutNodePath(request : DeleteFieldsWithoutNodePathRequest) throws  {
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent("/words/{name}/fields");
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: "\(request.getFolder()!)"));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: "\(request.getStorage()!)"));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: "\(request.getLoadEncoding()!)"));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: "\(request.getPassword()!)"));
        }
        if (request.getDestFileName() != nil) {
            queryItems.append(URLQueryItem(name: "destFileName", value: "\(request.getDestFileName()!)"));
        }
        if (request.getRevisionAuthor() != nil) {
            queryItems.append(URLQueryItem(name: "revisionAuthor", value: "\(request.getRevisionAuthor()!)"));
        }
        if (request.getRevisionDateTime() != nil) {
            queryItems.append(URLQueryItem(name: "revisionDateTime", value: "\(request.getRevisionDateTime()!)"));
        }
        
        urlBuilder.queryItems = queryItems;
        
        _ = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: nil,
            headers: nil,
            formParams: nil
        );
        
    }   
    
    public func deleteFile(request : DeleteFileRequest) throws  {
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent("/words/storage/file/{path}");
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        
        if (request.getStorageName() != nil) {
            queryItems.append(URLQueryItem(name: "storageName", value: "\(request.getStorageName()!)"));
        }
        if (request.getVersionId() != nil) {
            queryItems.append(URLQueryItem(name: "versionId", value: "\(request.getVersionId()!)"));
        }
        
        urlBuilder.queryItems = queryItems;
        
        _ = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: nil,
            headers: nil,
            formParams: nil
        );
        
    }   
    
    public func deleteFolder(request : DeleteFolderRequest) throws  {
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent("/words/storage/folder/{path}");
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        
        if (request.getStorageName() != nil) {
            queryItems.append(URLQueryItem(name: "storageName", value: "\(request.getStorageName()!)"));
        }
        if (request.getRecursive() != nil) {
            queryItems.append(URLQueryItem(name: "recursive", value: "\(request.getRecursive()!)"));
        }
        
        urlBuilder.queryItems = queryItems;
        
        _ = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: nil,
            headers: nil,
            formParams: nil
        );
        
    }   
    
    public func deleteFootnote(request : DeleteFootnoteRequest) throws  {
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent("/words/{name}/{nodePath}/footnotes/{index}");
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: "\(request.getFolder()!)"));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: "\(request.getStorage()!)"));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: "\(request.getLoadEncoding()!)"));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: "\(request.getPassword()!)"));
        }
        if (request.getDestFileName() != nil) {
            queryItems.append(URLQueryItem(name: "destFileName", value: "\(request.getDestFileName()!)"));
        }
        if (request.getRevisionAuthor() != nil) {
            queryItems.append(URLQueryItem(name: "revisionAuthor", value: "\(request.getRevisionAuthor()!)"));
        }
        if (request.getRevisionDateTime() != nil) {
            queryItems.append(URLQueryItem(name: "revisionDateTime", value: "\(request.getRevisionDateTime()!)"));
        }
        
        urlBuilder.queryItems = queryItems;
        
        _ = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: nil,
            headers: nil,
            formParams: nil
        );
        
    }   
    
    public func deleteFootnoteWithoutNodePath(request : DeleteFootnoteWithoutNodePathRequest) throws  {
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent("/words/{name}/footnotes/{index}");
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: "\(request.getFolder()!)"));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: "\(request.getStorage()!)"));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: "\(request.getLoadEncoding()!)"));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: "\(request.getPassword()!)"));
        }
        if (request.getDestFileName() != nil) {
            queryItems.append(URLQueryItem(name: "destFileName", value: "\(request.getDestFileName()!)"));
        }
        if (request.getRevisionAuthor() != nil) {
            queryItems.append(URLQueryItem(name: "revisionAuthor", value: "\(request.getRevisionAuthor()!)"));
        }
        if (request.getRevisionDateTime() != nil) {
            queryItems.append(URLQueryItem(name: "revisionDateTime", value: "\(request.getRevisionDateTime()!)"));
        }
        
        urlBuilder.queryItems = queryItems;
        
        _ = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: nil,
            headers: nil,
            formParams: nil
        );
        
    }   
    
    public func deleteFormField(request : DeleteFormFieldRequest) throws  {
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent("/words/{name}/{nodePath}/formfields/{index}");
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: "\(request.getFolder()!)"));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: "\(request.getStorage()!)"));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: "\(request.getLoadEncoding()!)"));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: "\(request.getPassword()!)"));
        }
        if (request.getDestFileName() != nil) {
            queryItems.append(URLQueryItem(name: "destFileName", value: "\(request.getDestFileName()!)"));
        }
        if (request.getRevisionAuthor() != nil) {
            queryItems.append(URLQueryItem(name: "revisionAuthor", value: "\(request.getRevisionAuthor()!)"));
        }
        if (request.getRevisionDateTime() != nil) {
            queryItems.append(URLQueryItem(name: "revisionDateTime", value: "\(request.getRevisionDateTime()!)"));
        }
        
        urlBuilder.queryItems = queryItems;
        
        _ = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: nil,
            headers: nil,
            formParams: nil
        );
        
    }   
    
    public func deleteFormFieldWithoutNodePath(request : DeleteFormFieldWithoutNodePathRequest) throws  {
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent("/words/{name}/formfields/{index}");
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: "\(request.getFolder()!)"));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: "\(request.getStorage()!)"));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: "\(request.getLoadEncoding()!)"));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: "\(request.getPassword()!)"));
        }
        if (request.getDestFileName() != nil) {
            queryItems.append(URLQueryItem(name: "destFileName", value: "\(request.getDestFileName()!)"));
        }
        if (request.getRevisionAuthor() != nil) {
            queryItems.append(URLQueryItem(name: "revisionAuthor", value: "\(request.getRevisionAuthor()!)"));
        }
        if (request.getRevisionDateTime() != nil) {
            queryItems.append(URLQueryItem(name: "revisionDateTime", value: "\(request.getRevisionDateTime()!)"));
        }
        
        urlBuilder.queryItems = queryItems;
        
        _ = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: nil,
            headers: nil,
            formParams: nil
        );
        
    }   
    
    public func deleteHeaderFooter(request : DeleteHeaderFooterRequest) throws  {
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent("/words/{name}/{sectionPath}/headersfooters/{index}");
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: "\(request.getFolder()!)"));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: "\(request.getStorage()!)"));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: "\(request.getLoadEncoding()!)"));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: "\(request.getPassword()!)"));
        }
        if (request.getDestFileName() != nil) {
            queryItems.append(URLQueryItem(name: "destFileName", value: "\(request.getDestFileName()!)"));
        }
        if (request.getRevisionAuthor() != nil) {
            queryItems.append(URLQueryItem(name: "revisionAuthor", value: "\(request.getRevisionAuthor()!)"));
        }
        if (request.getRevisionDateTime() != nil) {
            queryItems.append(URLQueryItem(name: "revisionDateTime", value: "\(request.getRevisionDateTime()!)"));
        }
        
        urlBuilder.queryItems = queryItems;
        
        _ = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: nil,
            headers: nil,
            formParams: nil
        );
        
    }   
    
    public func deleteHeadersFooters(request : DeleteHeadersFootersRequest) throws  {
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent("/words/{name}/{sectionPath}/headersfooters");
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: "\(request.getFolder()!)"));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: "\(request.getStorage()!)"));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: "\(request.getLoadEncoding()!)"));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: "\(request.getPassword()!)"));
        }
        if (request.getDestFileName() != nil) {
            queryItems.append(URLQueryItem(name: "destFileName", value: "\(request.getDestFileName()!)"));
        }
        if (request.getRevisionAuthor() != nil) {
            queryItems.append(URLQueryItem(name: "revisionAuthor", value: "\(request.getRevisionAuthor()!)"));
        }
        if (request.getRevisionDateTime() != nil) {
            queryItems.append(URLQueryItem(name: "revisionDateTime", value: "\(request.getRevisionDateTime()!)"));
        }
        if (request.getHeadersFootersTypes() != nil) {
            queryItems.append(URLQueryItem(name: "headersFootersTypes", value: "\(request.getHeadersFootersTypes()!)"));
        }
        
        urlBuilder.queryItems = queryItems;
        
        _ = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: nil,
            headers: nil,
            formParams: nil
        );
        
    }   
    
    public func deleteMacros(request : DeleteMacrosRequest) throws  {
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent("/words/{name}/macros");
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: "\(request.getFolder()!)"));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: "\(request.getStorage()!)"));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: "\(request.getLoadEncoding()!)"));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: "\(request.getPassword()!)"));
        }
        if (request.getDestFileName() != nil) {
            queryItems.append(URLQueryItem(name: "destFileName", value: "\(request.getDestFileName()!)"));
        }
        if (request.getRevisionAuthor() != nil) {
            queryItems.append(URLQueryItem(name: "revisionAuthor", value: "\(request.getRevisionAuthor()!)"));
        }
        if (request.getRevisionDateTime() != nil) {
            queryItems.append(URLQueryItem(name: "revisionDateTime", value: "\(request.getRevisionDateTime()!)"));
        }
        
        urlBuilder.queryItems = queryItems;
        
        _ = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: nil,
            headers: nil,
            formParams: nil
        );
        
    }   
    
    public func deleteOfficeMathObject(request : DeleteOfficeMathObjectRequest) throws  {
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent("/words/{name}/{nodePath}/OfficeMathObjects/{index}");
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: "\(request.getFolder()!)"));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: "\(request.getStorage()!)"));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: "\(request.getLoadEncoding()!)"));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: "\(request.getPassword()!)"));
        }
        if (request.getDestFileName() != nil) {
            queryItems.append(URLQueryItem(name: "destFileName", value: "\(request.getDestFileName()!)"));
        }
        if (request.getRevisionAuthor() != nil) {
            queryItems.append(URLQueryItem(name: "revisionAuthor", value: "\(request.getRevisionAuthor()!)"));
        }
        if (request.getRevisionDateTime() != nil) {
            queryItems.append(URLQueryItem(name: "revisionDateTime", value: "\(request.getRevisionDateTime()!)"));
        }
        
        urlBuilder.queryItems = queryItems;
        
        _ = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: nil,
            headers: nil,
            formParams: nil
        );
        
    }   
    
    public func deleteOfficeMathObjectWithoutNodePath(request : DeleteOfficeMathObjectWithoutNodePathRequest) throws  {
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent("/words/{name}/OfficeMathObjects/{index}");
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: "\(request.getFolder()!)"));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: "\(request.getStorage()!)"));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: "\(request.getLoadEncoding()!)"));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: "\(request.getPassword()!)"));
        }
        if (request.getDestFileName() != nil) {
            queryItems.append(URLQueryItem(name: "destFileName", value: "\(request.getDestFileName()!)"));
        }
        if (request.getRevisionAuthor() != nil) {
            queryItems.append(URLQueryItem(name: "revisionAuthor", value: "\(request.getRevisionAuthor()!)"));
        }
        if (request.getRevisionDateTime() != nil) {
            queryItems.append(URLQueryItem(name: "revisionDateTime", value: "\(request.getRevisionDateTime()!)"));
        }
        
        urlBuilder.queryItems = queryItems;
        
        _ = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: nil,
            headers: nil,
            formParams: nil
        );
        
    }   
    
    public func deleteParagraph(request : DeleteParagraphRequest) throws  {
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent("/words/{name}/{nodePath}/paragraphs/{index}");
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: "\(request.getFolder()!)"));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: "\(request.getStorage()!)"));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: "\(request.getLoadEncoding()!)"));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: "\(request.getPassword()!)"));
        }
        if (request.getDestFileName() != nil) {
            queryItems.append(URLQueryItem(name: "destFileName", value: "\(request.getDestFileName()!)"));
        }
        if (request.getRevisionAuthor() != nil) {
            queryItems.append(URLQueryItem(name: "revisionAuthor", value: "\(request.getRevisionAuthor()!)"));
        }
        if (request.getRevisionDateTime() != nil) {
            queryItems.append(URLQueryItem(name: "revisionDateTime", value: "\(request.getRevisionDateTime()!)"));
        }
        
        urlBuilder.queryItems = queryItems;
        
        _ = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: nil,
            headers: nil,
            formParams: nil
        );
        
    }   
    
    public func deleteParagraphWithoutNodePath(request : DeleteParagraphWithoutNodePathRequest) throws  {
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent("/words/{name}/paragraphs/{index}");
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: "\(request.getFolder()!)"));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: "\(request.getStorage()!)"));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: "\(request.getLoadEncoding()!)"));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: "\(request.getPassword()!)"));
        }
        if (request.getDestFileName() != nil) {
            queryItems.append(URLQueryItem(name: "destFileName", value: "\(request.getDestFileName()!)"));
        }
        if (request.getRevisionAuthor() != nil) {
            queryItems.append(URLQueryItem(name: "revisionAuthor", value: "\(request.getRevisionAuthor()!)"));
        }
        if (request.getRevisionDateTime() != nil) {
            queryItems.append(URLQueryItem(name: "revisionDateTime", value: "\(request.getRevisionDateTime()!)"));
        }
        
        urlBuilder.queryItems = queryItems;
        
        _ = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: nil,
            headers: nil,
            formParams: nil
        );
        
    }   
    
    public func deleteRun(request : DeleteRunRequest) throws  {
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent("/words/{name}/{paragraphPath}/runs/{index}");
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: "\(request.getFolder()!)"));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: "\(request.getStorage()!)"));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: "\(request.getLoadEncoding()!)"));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: "\(request.getPassword()!)"));
        }
        if (request.getDestFileName() != nil) {
            queryItems.append(URLQueryItem(name: "destFileName", value: "\(request.getDestFileName()!)"));
        }
        if (request.getRevisionAuthor() != nil) {
            queryItems.append(URLQueryItem(name: "revisionAuthor", value: "\(request.getRevisionAuthor()!)"));
        }
        if (request.getRevisionDateTime() != nil) {
            queryItems.append(URLQueryItem(name: "revisionDateTime", value: "\(request.getRevisionDateTime()!)"));
        }
        
        urlBuilder.queryItems = queryItems;
        
        _ = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: nil,
            headers: nil,
            formParams: nil
        );
        
    }   
    
    public func deleteSection(request : DeleteSectionRequest) throws  {
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent("/words/{name}/sections/{sectionIndex}");
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: "\(request.getFolder()!)"));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: "\(request.getStorage()!)"));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: "\(request.getLoadEncoding()!)"));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: "\(request.getPassword()!)"));
        }
        if (request.getDestFileName() != nil) {
            queryItems.append(URLQueryItem(name: "destFileName", value: "\(request.getDestFileName()!)"));
        }
        if (request.getRevisionAuthor() != nil) {
            queryItems.append(URLQueryItem(name: "revisionAuthor", value: "\(request.getRevisionAuthor()!)"));
        }
        if (request.getRevisionDateTime() != nil) {
            queryItems.append(URLQueryItem(name: "revisionDateTime", value: "\(request.getRevisionDateTime()!)"));
        }
        
        urlBuilder.queryItems = queryItems;
        
        _ = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: nil,
            headers: nil,
            formParams: nil
        );
        
    }   
    
    public func deleteTable(request : DeleteTableRequest) throws  {
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent("/words/{name}/{nodePath}/tables/{index}");
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: "\(request.getFolder()!)"));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: "\(request.getStorage()!)"));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: "\(request.getLoadEncoding()!)"));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: "\(request.getPassword()!)"));
        }
        if (request.getDestFileName() != nil) {
            queryItems.append(URLQueryItem(name: "destFileName", value: "\(request.getDestFileName()!)"));
        }
        if (request.getRevisionAuthor() != nil) {
            queryItems.append(URLQueryItem(name: "revisionAuthor", value: "\(request.getRevisionAuthor()!)"));
        }
        if (request.getRevisionDateTime() != nil) {
            queryItems.append(URLQueryItem(name: "revisionDateTime", value: "\(request.getRevisionDateTime()!)"));
        }
        
        urlBuilder.queryItems = queryItems;
        
        _ = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: nil,
            headers: nil,
            formParams: nil
        );
        
    }   
    
    public func deleteTableCell(request : DeleteTableCellRequest) throws  {
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent("/words/{name}/{tableRowPath}/cells/{index}");
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: "\(request.getFolder()!)"));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: "\(request.getStorage()!)"));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: "\(request.getLoadEncoding()!)"));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: "\(request.getPassword()!)"));
        }
        if (request.getDestFileName() != nil) {
            queryItems.append(URLQueryItem(name: "destFileName", value: "\(request.getDestFileName()!)"));
        }
        if (request.getRevisionAuthor() != nil) {
            queryItems.append(URLQueryItem(name: "revisionAuthor", value: "\(request.getRevisionAuthor()!)"));
        }
        if (request.getRevisionDateTime() != nil) {
            queryItems.append(URLQueryItem(name: "revisionDateTime", value: "\(request.getRevisionDateTime()!)"));
        }
        
        urlBuilder.queryItems = queryItems;
        
        _ = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: nil,
            headers: nil,
            formParams: nil
        );
        
    }   
    
    public func deleteTableRow(request : DeleteTableRowRequest) throws  {
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent("/words/{name}/{tablePath}/rows/{index}");
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: "\(request.getFolder()!)"));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: "\(request.getStorage()!)"));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: "\(request.getLoadEncoding()!)"));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: "\(request.getPassword()!)"));
        }
        if (request.getDestFileName() != nil) {
            queryItems.append(URLQueryItem(name: "destFileName", value: "\(request.getDestFileName()!)"));
        }
        if (request.getRevisionAuthor() != nil) {
            queryItems.append(URLQueryItem(name: "revisionAuthor", value: "\(request.getRevisionAuthor()!)"));
        }
        if (request.getRevisionDateTime() != nil) {
            queryItems.append(URLQueryItem(name: "revisionDateTime", value: "\(request.getRevisionDateTime()!)"));
        }
        
        urlBuilder.queryItems = queryItems;
        
        _ = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: nil,
            headers: nil,
            formParams: nil
        );
        
    }   
    
    public func deleteTableWithoutNodePath(request : DeleteTableWithoutNodePathRequest) throws  {
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent("/words/{name}/tables/{index}");
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: "\(request.getFolder()!)"));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: "\(request.getStorage()!)"));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: "\(request.getLoadEncoding()!)"));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: "\(request.getPassword()!)"));
        }
        if (request.getDestFileName() != nil) {
            queryItems.append(URLQueryItem(name: "destFileName", value: "\(request.getDestFileName()!)"));
        }
        if (request.getRevisionAuthor() != nil) {
            queryItems.append(URLQueryItem(name: "revisionAuthor", value: "\(request.getRevisionAuthor()!)"));
        }
        if (request.getRevisionDateTime() != nil) {
            queryItems.append(URLQueryItem(name: "revisionDateTime", value: "\(request.getRevisionDateTime()!)"));
        }
        
        urlBuilder.queryItems = queryItems;
        
        _ = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: nil,
            headers: nil,
            formParams: nil
        );
        
    }   
    
    public func deleteWatermark(request : DeleteWatermarkRequest) throws -> DocumentResponse {
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent("/words/{name}/watermarks/deleteLast");
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: "\(request.getFolder()!)"));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: "\(request.getStorage()!)"));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: "\(request.getLoadEncoding()!)"));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: "\(request.getPassword()!)"));
        }
        if (request.getDestFileName() != nil) {
            queryItems.append(URLQueryItem(name: "destFileName", value: "\(request.getDestFileName()!)"));
        }
        if (request.getRevisionAuthor() != nil) {
            queryItems.append(URLQueryItem(name: "revisionAuthor", value: "\(request.getRevisionAuthor()!)"));
        }
        if (request.getRevisionDateTime() != nil) {
            queryItems.append(URLQueryItem(name: "revisionDateTime", value: "\(request.getRevisionDateTime()!)"));
        }
        
        urlBuilder.queryItems = queryItems;
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: nil,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: DocumentResponse.self, from: response);
    }   
    
    public func downloadFile(request : DownloadFileRequest) throws -> URL {
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent("/words/storage/file/{path}");
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        
        if (request.getStorageName() != nil) {
            queryItems.append(URLQueryItem(name: "storageName", value: "\(request.getStorageName()!)"));
        }
        if (request.getVersionId() != nil) {
            queryItems.append(URLQueryItem(name: "versionId", value: "\(request.getVersionId()!)"));
        }
        
        urlBuilder.queryItems = queryItems;
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: nil,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: URL.self, from: response);
    }   
    
    public func executeMailMerge(request : ExecuteMailMergeRequest) throws -> DocumentResponse {
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent("/words/{name}/MailMerge");
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: "\(request.getFolder()!)"));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: "\(request.getStorage()!)"));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: "\(request.getLoadEncoding()!)"));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: "\(request.getPassword()!)"));
        }
        if (request.getWithRegions() != nil) {
            queryItems.append(URLQueryItem(name: "withRegions", value: "\(request.getWithRegions()!)"));
        }
        if (request.getMailMergeDataFile() != nil) {
            queryItems.append(URLQueryItem(name: "mailMergeDataFile", value: "\(request.getMailMergeDataFile()!)"));
        }
        if (request.getCleanup() != nil) {
            queryItems.append(URLQueryItem(name: "cleanup", value: "\(request.getCleanup()!)"));
        }
        if (request.getUseWholeParagraphAsRegion() != nil) {
            queryItems.append(URLQueryItem(name: "useWholeParagraphAsRegion", value: "\(request.getUseWholeParagraphAsRegion()!)"));
        }
        if (request.getDestFileName() != nil) {
            queryItems.append(URLQueryItem(name: "destFileName", value: "\(request.getDestFileName()!)"));
        }
        
        urlBuilder.queryItems = queryItems;
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: nil,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: DocumentResponse.self, from: response);
    }   
    
    public func executeMailMergeOnline(request : ExecuteMailMergeOnlineRequest) throws -> URL {
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent("/words/MailMerge");
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        
        if (request.getWithRegions() != nil) {
            queryItems.append(URLQueryItem(name: "withRegions", value: "\(request.getWithRegions()!)"));
        }
        if (request.getCleanup() != nil) {
            queryItems.append(URLQueryItem(name: "cleanup", value: "\(request.getCleanup()!)"));
        }
        if (request.getDocumentFileName() != nil) {
            queryItems.append(URLQueryItem(name: "documentFileName", value: "\(request.getDocumentFileName()!)"));
        }
        
        urlBuilder.queryItems = queryItems;
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: nil,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: URL.self, from: response);
    }   
    
    public func getAvailableFonts(request : GetAvailableFontsRequest) throws -> AvailableFontsResponse {
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent("/words/fonts/available");
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        
        if (request.getFontsLocation() != nil) {
            queryItems.append(URLQueryItem(name: "fontsLocation", value: "\(request.getFontsLocation()!)"));
        }
        
        urlBuilder.queryItems = queryItems;
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: nil,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: AvailableFontsResponse.self, from: response);
    }   
    
    public func getBookmarkByName(request : GetBookmarkByNameRequest) throws -> BookmarkResponse {
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent("/words/{name}/bookmarks/{bookmarkName}");
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: "\(request.getFolder()!)"));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: "\(request.getStorage()!)"));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: "\(request.getLoadEncoding()!)"));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: "\(request.getPassword()!)"));
        }
        
        urlBuilder.queryItems = queryItems;
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: nil,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: BookmarkResponse.self, from: response);
    }   
    
    public func getBookmarks(request : GetBookmarksRequest) throws -> BookmarksResponse {
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent("/words/{name}/bookmarks");
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: "\(request.getFolder()!)"));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: "\(request.getStorage()!)"));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: "\(request.getLoadEncoding()!)"));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: "\(request.getPassword()!)"));
        }
        
        urlBuilder.queryItems = queryItems;
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: nil,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: BookmarksResponse.self, from: response);
    }   
    
    public func getBorder(request : GetBorderRequest) throws -> BorderResponse {
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent("/words/{name}/{nodePath}/borders/{borderType}");
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: "\(request.getFolder()!)"));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: "\(request.getStorage()!)"));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: "\(request.getLoadEncoding()!)"));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: "\(request.getPassword()!)"));
        }
        
        urlBuilder.queryItems = queryItems;
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: nil,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: BorderResponse.self, from: response);
    }   
    
    public func getBorders(request : GetBordersRequest) throws -> BordersResponse {
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent("/words/{name}/{nodePath}/borders");
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: "\(request.getFolder()!)"));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: "\(request.getStorage()!)"));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: "\(request.getLoadEncoding()!)"));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: "\(request.getPassword()!)"));
        }
        
        urlBuilder.queryItems = queryItems;
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: nil,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: BordersResponse.self, from: response);
    }   
    
    public func getComment(request : GetCommentRequest) throws -> CommentResponse {
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent("/words/{name}/comments/{commentIndex}");
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: "\(request.getFolder()!)"));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: "\(request.getStorage()!)"));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: "\(request.getLoadEncoding()!)"));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: "\(request.getPassword()!)"));
        }
        
        urlBuilder.queryItems = queryItems;
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: nil,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: CommentResponse.self, from: response);
    }   
    
    public func getComments(request : GetCommentsRequest) throws -> CommentsResponse {
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent("/words/{name}/comments");
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: "\(request.getFolder()!)"));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: "\(request.getStorage()!)"));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: "\(request.getLoadEncoding()!)"));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: "\(request.getPassword()!)"));
        }
        
        urlBuilder.queryItems = queryItems;
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: nil,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: CommentsResponse.self, from: response);
    }   
    
    public func getDocument(request : GetDocumentRequest) throws -> DocumentResponse {
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent("/words/{documentName}");
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: "\(request.getFolder()!)"));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: "\(request.getStorage()!)"));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: "\(request.getLoadEncoding()!)"));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: "\(request.getPassword()!)"));
        }
        
        urlBuilder.queryItems = queryItems;
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: nil,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: DocumentResponse.self, from: response);
    }   
    
    public func getDocumentDrawingObjectByIndex(request : GetDocumentDrawingObjectByIndexRequest) throws -> DrawingObjectResponse {
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent("/words/{name}/{nodePath}/drawingObjects/{index}");
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: "\(request.getFolder()!)"));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: "\(request.getStorage()!)"));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: "\(request.getLoadEncoding()!)"));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: "\(request.getPassword()!)"));
        }
        
        urlBuilder.queryItems = queryItems;
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: nil,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: DrawingObjectResponse.self, from: response);
    }   
    
    public func getDocumentDrawingObjectByIndexWithoutNodePath(request : GetDocumentDrawingObjectByIndexWithoutNodePathRequest) throws -> DrawingObjectResponse {
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent("/words/{name}/drawingObjects/{index}");
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: "\(request.getFolder()!)"));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: "\(request.getStorage()!)"));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: "\(request.getLoadEncoding()!)"));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: "\(request.getPassword()!)"));
        }
        
        urlBuilder.queryItems = queryItems;
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: nil,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: DrawingObjectResponse.self, from: response);
    }   
    
    public func getDocumentDrawingObjectImageData(request : GetDocumentDrawingObjectImageDataRequest) throws -> URL {
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent("/words/{name}/{nodePath}/drawingObjects/{index}/imageData");
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: "\(request.getFolder()!)"));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: "\(request.getStorage()!)"));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: "\(request.getLoadEncoding()!)"));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: "\(request.getPassword()!)"));
        }
        
        urlBuilder.queryItems = queryItems;
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: nil,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: URL.self, from: response);
    }   
    
    public func getDocumentDrawingObjectImageDataWithoutNodePath(request : GetDocumentDrawingObjectImageDataWithoutNodePathRequest) throws -> URL {
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent("/words/{name}/drawingObjects/{index}/imageData");
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: "\(request.getFolder()!)"));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: "\(request.getStorage()!)"));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: "\(request.getLoadEncoding()!)"));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: "\(request.getPassword()!)"));
        }
        
        urlBuilder.queryItems = queryItems;
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: nil,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: URL.self, from: response);
    }   
    
    public func getDocumentDrawingObjectOleData(request : GetDocumentDrawingObjectOleDataRequest) throws -> URL {
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent("/words/{name}/{nodePath}/drawingObjects/{index}/oleData");
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: "\(request.getFolder()!)"));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: "\(request.getStorage()!)"));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: "\(request.getLoadEncoding()!)"));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: "\(request.getPassword()!)"));
        }
        
        urlBuilder.queryItems = queryItems;
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: nil,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: URL.self, from: response);
    }   
    
    public func getDocumentDrawingObjectOleDataWithoutNodePath(request : GetDocumentDrawingObjectOleDataWithoutNodePathRequest) throws -> URL {
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent("/words/{name}/drawingObjects/{index}/oleData");
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: "\(request.getFolder()!)"));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: "\(request.getStorage()!)"));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: "\(request.getLoadEncoding()!)"));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: "\(request.getPassword()!)"));
        }
        
        urlBuilder.queryItems = queryItems;
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: nil,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: URL.self, from: response);
    }   
    
    public func getDocumentDrawingObjects(request : GetDocumentDrawingObjectsRequest) throws -> DrawingObjectsResponse {
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent("/words/{name}/{nodePath}/drawingObjects");
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: "\(request.getFolder()!)"));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: "\(request.getStorage()!)"));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: "\(request.getLoadEncoding()!)"));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: "\(request.getPassword()!)"));
        }
        
        urlBuilder.queryItems = queryItems;
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: nil,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: DrawingObjectsResponse.self, from: response);
    }   
    
    public func getDocumentDrawingObjectsWithoutNodePath(request : GetDocumentDrawingObjectsWithoutNodePathRequest) throws -> DrawingObjectsResponse {
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent("/words/{name}/drawingObjects");
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: "\(request.getFolder()!)"));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: "\(request.getStorage()!)"));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: "\(request.getLoadEncoding()!)"));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: "\(request.getPassword()!)"));
        }
        
        urlBuilder.queryItems = queryItems;
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: nil,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: DrawingObjectsResponse.self, from: response);
    }   
    
    public func getDocumentFieldNames(request : GetDocumentFieldNamesRequest) throws -> FieldNamesResponse {
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent("/words/{name}/mailMerge/FieldNames");
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: "\(request.getFolder()!)"));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: "\(request.getStorage()!)"));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: "\(request.getLoadEncoding()!)"));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: "\(request.getPassword()!)"));
        }
        if (request.getUseNonMergeFields() != nil) {
            queryItems.append(URLQueryItem(name: "useNonMergeFields", value: "\(request.getUseNonMergeFields()!)"));
        }
        
        urlBuilder.queryItems = queryItems;
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: nil,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: FieldNamesResponse.self, from: response);
    }   
    
    public func getDocumentFieldNamesOnline(request : GetDocumentFieldNamesOnlineRequest) throws -> FieldNamesResponse {
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent("/words/mailMerge/FieldNames");
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        
        if (request.getUseNonMergeFields() != nil) {
            queryItems.append(URLQueryItem(name: "useNonMergeFields", value: "\(request.getUseNonMergeFields()!)"));
        }
        
        urlBuilder.queryItems = queryItems;
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: nil,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: FieldNamesResponse.self, from: response);
    }   
    
    public func getDocumentHyperlinkByIndex(request : GetDocumentHyperlinkByIndexRequest) throws -> HyperlinkResponse {
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent("/words/{name}/hyperlinks/{hyperlinkIndex}");
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: "\(request.getFolder()!)"));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: "\(request.getStorage()!)"));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: "\(request.getLoadEncoding()!)"));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: "\(request.getPassword()!)"));
        }
        
        urlBuilder.queryItems = queryItems;
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: nil,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: HyperlinkResponse.self, from: response);
    }   
    
    public func getDocumentHyperlinks(request : GetDocumentHyperlinksRequest) throws -> HyperlinksResponse {
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent("/words/{name}/hyperlinks");
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: "\(request.getFolder()!)"));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: "\(request.getStorage()!)"));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: "\(request.getLoadEncoding()!)"));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: "\(request.getPassword()!)"));
        }
        
        urlBuilder.queryItems = queryItems;
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: nil,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: HyperlinksResponse.self, from: response);
    }   
    
    public func getDocumentProperties(request : GetDocumentPropertiesRequest) throws -> DocumentPropertiesResponse {
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent("/words/{name}/documentProperties");
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: "\(request.getFolder()!)"));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: "\(request.getStorage()!)"));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: "\(request.getLoadEncoding()!)"));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: "\(request.getPassword()!)"));
        }
        
        urlBuilder.queryItems = queryItems;
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: nil,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: DocumentPropertiesResponse.self, from: response);
    }   
    
    public func getDocumentProperty(request : GetDocumentPropertyRequest) throws -> DocumentPropertyResponse {
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent("/words/{name}/documentProperties/{propertyName}");
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: "\(request.getFolder()!)"));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: "\(request.getStorage()!)"));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: "\(request.getLoadEncoding()!)"));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: "\(request.getPassword()!)"));
        }
        
        urlBuilder.queryItems = queryItems;
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: nil,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: DocumentPropertyResponse.self, from: response);
    }   
    
    public func getDocumentProtection(request : GetDocumentProtectionRequest) throws -> ProtectionDataResponse {
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent("/words/{name}/protection");
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: "\(request.getFolder()!)"));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: "\(request.getStorage()!)"));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: "\(request.getLoadEncoding()!)"));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: "\(request.getPassword()!)"));
        }
        
        urlBuilder.queryItems = queryItems;
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: nil,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: ProtectionDataResponse.self, from: response);
    }   
    
    public func getDocumentStatistics(request : GetDocumentStatisticsRequest) throws -> StatDataResponse {
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent("/words/{name}/statistics");
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: "\(request.getFolder()!)"));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: "\(request.getStorage()!)"));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: "\(request.getLoadEncoding()!)"));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: "\(request.getPassword()!)"));
        }
        if (request.getIncludeComments() != nil) {
            queryItems.append(URLQueryItem(name: "includeComments", value: "\(request.getIncludeComments()!)"));
        }
        if (request.getIncludeFootnotes() != nil) {
            queryItems.append(URLQueryItem(name: "includeFootnotes", value: "\(request.getIncludeFootnotes()!)"));
        }
        if (request.getIncludeTextInShapes() != nil) {
            queryItems.append(URLQueryItem(name: "includeTextInShapes", value: "\(request.getIncludeTextInShapes()!)"));
        }
        
        urlBuilder.queryItems = queryItems;
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: nil,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: StatDataResponse.self, from: response);
    }   
    
    public func getDocumentWithFormat(request : GetDocumentWithFormatRequest) throws -> URL {
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent("/words/{name}");
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        
        if (request.getFormat() != nil) {
            queryItems.append(URLQueryItem(name: "format", value: "\(request.getFormat()!)"));
        }
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: "\(request.getFolder()!)"));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: "\(request.getStorage()!)"));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: "\(request.getLoadEncoding()!)"));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: "\(request.getPassword()!)"));
        }
        if (request.getOutPath() != nil) {
            queryItems.append(URLQueryItem(name: "outPath", value: "\(request.getOutPath()!)"));
        }
        if (request.getFontsLocation() != nil) {
            queryItems.append(URLQueryItem(name: "fontsLocation", value: "\(request.getFontsLocation()!)"));
        }
        
        urlBuilder.queryItems = queryItems;
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: nil,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: URL.self, from: response);
    }   
    
    public func getField(request : GetFieldRequest) throws -> FieldResponse {
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent("/words/{name}/{nodePath}/fields/{index}");
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: "\(request.getFolder()!)"));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: "\(request.getStorage()!)"));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: "\(request.getLoadEncoding()!)"));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: "\(request.getPassword()!)"));
        }
        
        urlBuilder.queryItems = queryItems;
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: nil,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: FieldResponse.self, from: response);
    }   
    
    public func getFieldWithoutNodePath(request : GetFieldWithoutNodePathRequest) throws -> FieldResponse {
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent("/words/{name}/fields/{index}");
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: "\(request.getFolder()!)"));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: "\(request.getStorage()!)"));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: "\(request.getLoadEncoding()!)"));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: "\(request.getPassword()!)"));
        }
        
        urlBuilder.queryItems = queryItems;
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: nil,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: FieldResponse.self, from: response);
    }   
    
    public func getFields(request : GetFieldsRequest) throws -> FieldsResponse {
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent("/words/{name}/{nodePath}/fields");
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: "\(request.getFolder()!)"));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: "\(request.getStorage()!)"));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: "\(request.getLoadEncoding()!)"));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: "\(request.getPassword()!)"));
        }
        
        urlBuilder.queryItems = queryItems;
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: nil,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: FieldsResponse.self, from: response);
    }   
    
    public func getFieldsWithoutNodePath(request : GetFieldsWithoutNodePathRequest) throws -> FieldsResponse {
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent("/words/{name}/fields");
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: "\(request.getFolder()!)"));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: "\(request.getStorage()!)"));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: "\(request.getLoadEncoding()!)"));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: "\(request.getPassword()!)"));
        }
        
        urlBuilder.queryItems = queryItems;
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: nil,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: FieldsResponse.self, from: response);
    }   
    
    public func getFilesList(request : GetFilesListRequest) throws -> FilesList {
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent("/words/storage/folder/{path}");
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        
        if (request.getStorageName() != nil) {
            queryItems.append(URLQueryItem(name: "storageName", value: "\(request.getStorageName()!)"));
        }
        
        urlBuilder.queryItems = queryItems;
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: nil,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: FilesList.self, from: response);
    }   
    
    public func getFootnote(request : GetFootnoteRequest) throws -> FootnoteResponse {
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent("/words/{name}/{nodePath}/footnotes/{index}");
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: "\(request.getFolder()!)"));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: "\(request.getStorage()!)"));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: "\(request.getLoadEncoding()!)"));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: "\(request.getPassword()!)"));
        }
        
        urlBuilder.queryItems = queryItems;
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: nil,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: FootnoteResponse.self, from: response);
    }   
    
    public func getFootnoteWithoutNodePath(request : GetFootnoteWithoutNodePathRequest) throws -> FootnoteResponse {
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent("/words/{name}/footnotes/{index}");
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: "\(request.getFolder()!)"));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: "\(request.getStorage()!)"));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: "\(request.getLoadEncoding()!)"));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: "\(request.getPassword()!)"));
        }
        
        urlBuilder.queryItems = queryItems;
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: nil,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: FootnoteResponse.self, from: response);
    }   
    
    public func getFootnotes(request : GetFootnotesRequest) throws -> FootnotesResponse {
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent("/words/{name}/{nodePath}/footnotes");
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: "\(request.getFolder()!)"));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: "\(request.getStorage()!)"));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: "\(request.getLoadEncoding()!)"));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: "\(request.getPassword()!)"));
        }
        
        urlBuilder.queryItems = queryItems;
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: nil,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: FootnotesResponse.self, from: response);
    }   
    
    public func getFootnotesWithoutNodePath(request : GetFootnotesWithoutNodePathRequest) throws -> FootnotesResponse {
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent("/words/{name}/footnotes");
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: "\(request.getFolder()!)"));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: "\(request.getStorage()!)"));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: "\(request.getLoadEncoding()!)"));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: "\(request.getPassword()!)"));
        }
        
        urlBuilder.queryItems = queryItems;
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: nil,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: FootnotesResponse.self, from: response);
    }   
    
    public func getFormField(request : GetFormFieldRequest) throws -> FormFieldResponse {
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent("/words/{name}/{nodePath}/formfields/{index}");
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: "\(request.getFolder()!)"));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: "\(request.getStorage()!)"));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: "\(request.getLoadEncoding()!)"));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: "\(request.getPassword()!)"));
        }
        
        urlBuilder.queryItems = queryItems;
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: nil,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: FormFieldResponse.self, from: response);
    }   
    
    public func getFormFieldWithoutNodePath(request : GetFormFieldWithoutNodePathRequest) throws -> FormFieldResponse {
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent("/words/{name}/formfields/{index}");
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: "\(request.getFolder()!)"));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: "\(request.getStorage()!)"));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: "\(request.getLoadEncoding()!)"));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: "\(request.getPassword()!)"));
        }
        
        urlBuilder.queryItems = queryItems;
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: nil,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: FormFieldResponse.self, from: response);
    }   
    
    public func getFormFields(request : GetFormFieldsRequest) throws -> FormFieldsResponse {
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent("/words/{name}/{nodePath}/formfields");
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: "\(request.getFolder()!)"));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: "\(request.getStorage()!)"));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: "\(request.getLoadEncoding()!)"));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: "\(request.getPassword()!)"));
        }
        
        urlBuilder.queryItems = queryItems;
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: nil,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: FormFieldsResponse.self, from: response);
    }   
    
    public func getFormFieldsWithoutNodePath(request : GetFormFieldsWithoutNodePathRequest) throws -> FormFieldsResponse {
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent("/words/{name}/formfields");
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: "\(request.getFolder()!)"));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: "\(request.getStorage()!)"));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: "\(request.getLoadEncoding()!)"));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: "\(request.getPassword()!)"));
        }
        
        urlBuilder.queryItems = queryItems;
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: nil,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: FormFieldsResponse.self, from: response);
    }   
    
    public func getHeaderFooter(request : GetHeaderFooterRequest) throws -> HeaderFooterResponse {
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent("/words/{name}/headersfooters/{headerFooterIndex}");
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: "\(request.getFolder()!)"));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: "\(request.getStorage()!)"));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: "\(request.getLoadEncoding()!)"));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: "\(request.getPassword()!)"));
        }
        if (request.getFilterByType() != nil) {
            queryItems.append(URLQueryItem(name: "filterByType", value: "\(request.getFilterByType()!)"));
        }
        
        urlBuilder.queryItems = queryItems;
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: nil,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: HeaderFooterResponse.self, from: response);
    }   
    
    public func getHeaderFooterOfSection(request : GetHeaderFooterOfSectionRequest) throws -> HeaderFooterResponse {
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent("/words/{name}/sections/{sectionIndex}/headersfooters/{headerFooterIndex}");
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: "\(request.getFolder()!)"));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: "\(request.getStorage()!)"));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: "\(request.getLoadEncoding()!)"));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: "\(request.getPassword()!)"));
        }
        if (request.getFilterByType() != nil) {
            queryItems.append(URLQueryItem(name: "filterByType", value: "\(request.getFilterByType()!)"));
        }
        
        urlBuilder.queryItems = queryItems;
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: nil,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: HeaderFooterResponse.self, from: response);
    }   
    
    public func getHeaderFooters(request : GetHeaderFootersRequest) throws -> HeaderFootersResponse {
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent("/words/{name}/{sectionPath}/headersfooters");
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: "\(request.getFolder()!)"));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: "\(request.getStorage()!)"));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: "\(request.getLoadEncoding()!)"));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: "\(request.getPassword()!)"));
        }
        if (request.getFilterByType() != nil) {
            queryItems.append(URLQueryItem(name: "filterByType", value: "\(request.getFilterByType()!)"));
        }
        
        urlBuilder.queryItems = queryItems;
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: nil,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: HeaderFootersResponse.self, from: response);
    }   
    
    public func getOfficeMathObject(request : GetOfficeMathObjectRequest) throws -> OfficeMathObjectResponse {
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent("/words/{name}/{nodePath}/OfficeMathObjects/{index}");
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: "\(request.getFolder()!)"));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: "\(request.getStorage()!)"));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: "\(request.getLoadEncoding()!)"));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: "\(request.getPassword()!)"));
        }
        
        urlBuilder.queryItems = queryItems;
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: nil,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: OfficeMathObjectResponse.self, from: response);
    }   
    
    public func getOfficeMathObjectWithoutNodePath(request : GetOfficeMathObjectWithoutNodePathRequest) throws -> OfficeMathObjectResponse {
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent("/words/{name}/OfficeMathObjects/{index}");
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: "\(request.getFolder()!)"));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: "\(request.getStorage()!)"));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: "\(request.getLoadEncoding()!)"));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: "\(request.getPassword()!)"));
        }
        
        urlBuilder.queryItems = queryItems;
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: nil,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: OfficeMathObjectResponse.self, from: response);
    }   
    
    public func getOfficeMathObjects(request : GetOfficeMathObjectsRequest) throws -> OfficeMathObjectsResponse {
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent("/words/{name}/{nodePath}/OfficeMathObjects");
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: "\(request.getFolder()!)"));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: "\(request.getStorage()!)"));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: "\(request.getLoadEncoding()!)"));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: "\(request.getPassword()!)"));
        }
        
        urlBuilder.queryItems = queryItems;
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: nil,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: OfficeMathObjectsResponse.self, from: response);
    }   
    
    public func getOfficeMathObjectsWithoutNodePath(request : GetOfficeMathObjectsWithoutNodePathRequest) throws -> OfficeMathObjectsResponse {
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent("/words/{name}/OfficeMathObjects");
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: "\(request.getFolder()!)"));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: "\(request.getStorage()!)"));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: "\(request.getLoadEncoding()!)"));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: "\(request.getPassword()!)"));
        }
        
        urlBuilder.queryItems = queryItems;
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: nil,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: OfficeMathObjectsResponse.self, from: response);
    }   
    
    public func getParagraph(request : GetParagraphRequest) throws -> ParagraphResponse {
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent("/words/{name}/{nodePath}/paragraphs/{index}");
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: "\(request.getFolder()!)"));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: "\(request.getStorage()!)"));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: "\(request.getLoadEncoding()!)"));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: "\(request.getPassword()!)"));
        }
        
        urlBuilder.queryItems = queryItems;
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: nil,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: ParagraphResponse.self, from: response);
    }   
    
    public func getParagraphFormat(request : GetParagraphFormatRequest) throws -> ParagraphFormatResponse {
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent("/words/{name}/{nodePath}/paragraphs/{index}/format");
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: "\(request.getFolder()!)"));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: "\(request.getStorage()!)"));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: "\(request.getLoadEncoding()!)"));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: "\(request.getPassword()!)"));
        }
        
        urlBuilder.queryItems = queryItems;
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: nil,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: ParagraphFormatResponse.self, from: response);
    }   
    
    public func getParagraphFormatWithoutNodePath(request : GetParagraphFormatWithoutNodePathRequest) throws -> ParagraphFormatResponse {
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent("/words/{name}/paragraphs/{index}/format");
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: "\(request.getFolder()!)"));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: "\(request.getStorage()!)"));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: "\(request.getLoadEncoding()!)"));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: "\(request.getPassword()!)"));
        }
        
        urlBuilder.queryItems = queryItems;
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: nil,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: ParagraphFormatResponse.self, from: response);
    }   
    
    public func getParagraphWithoutNodePath(request : GetParagraphWithoutNodePathRequest) throws -> ParagraphResponse {
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent("/words/{name}/paragraphs/{index}");
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: "\(request.getFolder()!)"));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: "\(request.getStorage()!)"));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: "\(request.getLoadEncoding()!)"));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: "\(request.getPassword()!)"));
        }
        
        urlBuilder.queryItems = queryItems;
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: nil,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: ParagraphResponse.self, from: response);
    }   
    
    public func getParagraphs(request : GetParagraphsRequest) throws -> ParagraphLinkCollectionResponse {
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent("/words/{name}/{nodePath}/paragraphs");
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: "\(request.getFolder()!)"));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: "\(request.getStorage()!)"));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: "\(request.getLoadEncoding()!)"));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: "\(request.getPassword()!)"));
        }
        
        urlBuilder.queryItems = queryItems;
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: nil,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: ParagraphLinkCollectionResponse.self, from: response);
    }   
    
    public func getParagraphsWithoutNodePath(request : GetParagraphsWithoutNodePathRequest) throws -> ParagraphLinkCollectionResponse {
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent("/words/{name}/paragraphs");
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: "\(request.getFolder()!)"));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: "\(request.getStorage()!)"));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: "\(request.getLoadEncoding()!)"));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: "\(request.getPassword()!)"));
        }
        
        urlBuilder.queryItems = queryItems;
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: nil,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: ParagraphLinkCollectionResponse.self, from: response);
    }   
    
    public func getRangeText(request : GetRangeTextRequest) throws -> RangeTextResponse {
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent("/words/{name}/range/{rangeStartIdentifier}/{rangeEndIdentifier}");
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: "\(request.getFolder()!)"));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: "\(request.getStorage()!)"));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: "\(request.getLoadEncoding()!)"));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: "\(request.getPassword()!)"));
        }
        
        urlBuilder.queryItems = queryItems;
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: nil,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: RangeTextResponse.self, from: response);
    }   
    
    public func getRun(request : GetRunRequest) throws -> RunResponse {
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent("/words/{name}/{paragraphPath}/runs/{index}");
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: "\(request.getFolder()!)"));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: "\(request.getStorage()!)"));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: "\(request.getLoadEncoding()!)"));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: "\(request.getPassword()!)"));
        }
        
        urlBuilder.queryItems = queryItems;
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: nil,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: RunResponse.self, from: response);
    }   
    
    public func getRunFont(request : GetRunFontRequest) throws -> FontResponse {
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent("/words/{name}/{paragraphPath}/runs/{index}/font");
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: "\(request.getFolder()!)"));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: "\(request.getStorage()!)"));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: "\(request.getLoadEncoding()!)"));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: "\(request.getPassword()!)"));
        }
        
        urlBuilder.queryItems = queryItems;
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: nil,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: FontResponse.self, from: response);
    }   
    
    public func getRuns(request : GetRunsRequest) throws -> RunsResponse {
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent("/words/{name}/{paragraphPath}/runs");
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: "\(request.getFolder()!)"));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: "\(request.getStorage()!)"));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: "\(request.getLoadEncoding()!)"));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: "\(request.getPassword()!)"));
        }
        
        urlBuilder.queryItems = queryItems;
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: nil,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: RunsResponse.self, from: response);
    }   
    
    public func getSection(request : GetSectionRequest) throws -> SectionResponse {
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent("/words/{name}/sections/{sectionIndex}");
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: "\(request.getFolder()!)"));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: "\(request.getStorage()!)"));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: "\(request.getLoadEncoding()!)"));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: "\(request.getPassword()!)"));
        }
        
        urlBuilder.queryItems = queryItems;
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: nil,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: SectionResponse.self, from: response);
    }   
    
    public func getSectionPageSetup(request : GetSectionPageSetupRequest) throws -> SectionPageSetupResponse {
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent("/words/{name}/sections/{sectionIndex}/pageSetup");
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: "\(request.getFolder()!)"));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: "\(request.getStorage()!)"));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: "\(request.getLoadEncoding()!)"));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: "\(request.getPassword()!)"));
        }
        
        urlBuilder.queryItems = queryItems;
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: nil,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: SectionPageSetupResponse.self, from: response);
    }   
    
    public func getSections(request : GetSectionsRequest) throws -> SectionLinkCollectionResponse {
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent("/words/{name}/sections");
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: "\(request.getFolder()!)"));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: "\(request.getStorage()!)"));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: "\(request.getLoadEncoding()!)"));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: "\(request.getPassword()!)"));
        }
        
        urlBuilder.queryItems = queryItems;
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: nil,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: SectionLinkCollectionResponse.self, from: response);
    }   
    
    public func getTable(request : GetTableRequest) throws -> TableResponse {
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent("/words/{name}/{nodePath}/tables/{index}");
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: "\(request.getFolder()!)"));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: "\(request.getStorage()!)"));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: "\(request.getLoadEncoding()!)"));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: "\(request.getPassword()!)"));
        }
        
        urlBuilder.queryItems = queryItems;
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: nil,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: TableResponse.self, from: response);
    }   
    
    public func getTableCell(request : GetTableCellRequest) throws -> TableCellResponse {
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent("/words/{name}/{tableRowPath}/cells/{index}");
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: "\(request.getFolder()!)"));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: "\(request.getStorage()!)"));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: "\(request.getLoadEncoding()!)"));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: "\(request.getPassword()!)"));
        }
        
        urlBuilder.queryItems = queryItems;
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: nil,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: TableCellResponse.self, from: response);
    }   
    
    public func getTableCellFormat(request : GetTableCellFormatRequest) throws -> TableCellFormatResponse {
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent("/words/{name}/{tableRowPath}/cells/{index}/cellformat");
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: "\(request.getFolder()!)"));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: "\(request.getStorage()!)"));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: "\(request.getLoadEncoding()!)"));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: "\(request.getPassword()!)"));
        }
        
        urlBuilder.queryItems = queryItems;
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: nil,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: TableCellFormatResponse.self, from: response);
    }   
    
    public func getTableProperties(request : GetTablePropertiesRequest) throws -> TablePropertiesResponse {
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent("/words/{name}/{nodePath}/tables/{index}/properties");
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: "\(request.getFolder()!)"));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: "\(request.getStorage()!)"));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: "\(request.getLoadEncoding()!)"));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: "\(request.getPassword()!)"));
        }
        
        urlBuilder.queryItems = queryItems;
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: nil,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: TablePropertiesResponse.self, from: response);
    }   
    
    public func getTablePropertiesWithoutNodePath(request : GetTablePropertiesWithoutNodePathRequest) throws -> TablePropertiesResponse {
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent("/words/{name}/tables/{index}/properties");
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: "\(request.getFolder()!)"));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: "\(request.getStorage()!)"));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: "\(request.getLoadEncoding()!)"));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: "\(request.getPassword()!)"));
        }
        
        urlBuilder.queryItems = queryItems;
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: nil,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: TablePropertiesResponse.self, from: response);
    }   
    
    public func getTableRow(request : GetTableRowRequest) throws -> TableRowResponse {
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent("/words/{name}/{tablePath}/rows/{index}");
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: "\(request.getFolder()!)"));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: "\(request.getStorage()!)"));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: "\(request.getLoadEncoding()!)"));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: "\(request.getPassword()!)"));
        }
        
        urlBuilder.queryItems = queryItems;
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: nil,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: TableRowResponse.self, from: response);
    }   
    
    public func getTableRowFormat(request : GetTableRowFormatRequest) throws -> TableRowFormatResponse {
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent("/words/{name}/{tablePath}/rows/{index}/rowformat");
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: "\(request.getFolder()!)"));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: "\(request.getStorage()!)"));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: "\(request.getLoadEncoding()!)"));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: "\(request.getPassword()!)"));
        }
        
        urlBuilder.queryItems = queryItems;
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: nil,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: TableRowFormatResponse.self, from: response);
    }   
    
    public func getTableWithoutNodePath(request : GetTableWithoutNodePathRequest) throws -> TableResponse {
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent("/words/{name}/tables/{index}");
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: "\(request.getFolder()!)"));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: "\(request.getStorage()!)"));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: "\(request.getLoadEncoding()!)"));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: "\(request.getPassword()!)"));
        }
        
        urlBuilder.queryItems = queryItems;
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: nil,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: TableResponse.self, from: response);
    }   
    
    public func getTables(request : GetTablesRequest) throws -> TableLinkCollectionResponse {
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent("/words/{name}/{nodePath}/tables");
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: "\(request.getFolder()!)"));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: "\(request.getStorage()!)"));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: "\(request.getLoadEncoding()!)"));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: "\(request.getPassword()!)"));
        }
        
        urlBuilder.queryItems = queryItems;
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: nil,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: TableLinkCollectionResponse.self, from: response);
    }   
    
    public func getTablesWithoutNodePath(request : GetTablesWithoutNodePathRequest) throws -> TableLinkCollectionResponse {
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent("/words/{name}/tables");
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: "\(request.getFolder()!)"));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: "\(request.getStorage()!)"));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: "\(request.getLoadEncoding()!)"));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: "\(request.getPassword()!)"));
        }
        
        urlBuilder.queryItems = queryItems;
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: nil,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: TableLinkCollectionResponse.self, from: response);
    }   
    
    public func insertComment(request : InsertCommentRequest) throws -> CommentResponse {
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent("/words/{name}/comments");
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: "\(request.getFolder()!)"));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: "\(request.getStorage()!)"));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: "\(request.getLoadEncoding()!)"));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: "\(request.getPassword()!)"));
        }
        if (request.getDestFileName() != nil) {
            queryItems.append(URLQueryItem(name: "destFileName", value: "\(request.getDestFileName()!)"));
        }
        if (request.getRevisionAuthor() != nil) {
            queryItems.append(URLQueryItem(name: "revisionAuthor", value: "\(request.getRevisionAuthor()!)"));
        }
        if (request.getRevisionDateTime() != nil) {
            queryItems.append(URLQueryItem(name: "revisionDateTime", value: "\(request.getRevisionDateTime()!)"));
        }
        
        urlBuilder.queryItems = queryItems;
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: nil,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: CommentResponse.self, from: response);
    }   
    
    public func insertDrawingObject(request : InsertDrawingObjectRequest) throws -> DrawingObjectResponse {
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent("/words/{name}/{nodePath}/drawingObjects");
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: "\(request.getFolder()!)"));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: "\(request.getStorage()!)"));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: "\(request.getLoadEncoding()!)"));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: "\(request.getPassword()!)"));
        }
        if (request.getDestFileName() != nil) {
            queryItems.append(URLQueryItem(name: "destFileName", value: "\(request.getDestFileName()!)"));
        }
        if (request.getRevisionAuthor() != nil) {
            queryItems.append(URLQueryItem(name: "revisionAuthor", value: "\(request.getRevisionAuthor()!)"));
        }
        if (request.getRevisionDateTime() != nil) {
            queryItems.append(URLQueryItem(name: "revisionDateTime", value: "\(request.getRevisionDateTime()!)"));
        }
        
        urlBuilder.queryItems = queryItems;
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: nil,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: DrawingObjectResponse.self, from: response);
    }   
    
    public func insertDrawingObjectWithoutNodePath(request : InsertDrawingObjectWithoutNodePathRequest) throws -> DrawingObjectResponse {
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent("/words/{name}/drawingObjects");
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: "\(request.getFolder()!)"));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: "\(request.getStorage()!)"));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: "\(request.getLoadEncoding()!)"));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: "\(request.getPassword()!)"));
        }
        if (request.getDestFileName() != nil) {
            queryItems.append(URLQueryItem(name: "destFileName", value: "\(request.getDestFileName()!)"));
        }
        if (request.getRevisionAuthor() != nil) {
            queryItems.append(URLQueryItem(name: "revisionAuthor", value: "\(request.getRevisionAuthor()!)"));
        }
        if (request.getRevisionDateTime() != nil) {
            queryItems.append(URLQueryItem(name: "revisionDateTime", value: "\(request.getRevisionDateTime()!)"));
        }
        
        urlBuilder.queryItems = queryItems;
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: nil,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: DrawingObjectResponse.self, from: response);
    }   
    
    public func insertField(request : InsertFieldRequest) throws -> FieldResponse {
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent("/words/{name}/{nodePath}/fields");
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: "\(request.getFolder()!)"));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: "\(request.getStorage()!)"));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: "\(request.getLoadEncoding()!)"));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: "\(request.getPassword()!)"));
        }
        if (request.getDestFileName() != nil) {
            queryItems.append(URLQueryItem(name: "destFileName", value: "\(request.getDestFileName()!)"));
        }
        if (request.getRevisionAuthor() != nil) {
            queryItems.append(URLQueryItem(name: "revisionAuthor", value: "\(request.getRevisionAuthor()!)"));
        }
        if (request.getRevisionDateTime() != nil) {
            queryItems.append(URLQueryItem(name: "revisionDateTime", value: "\(request.getRevisionDateTime()!)"));
        }
        if (request.getInsertBeforeNode() != nil) {
            queryItems.append(URLQueryItem(name: "insertBeforeNode", value: "\(request.getInsertBeforeNode()!)"));
        }
        
        urlBuilder.queryItems = queryItems;
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: nil,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: FieldResponse.self, from: response);
    }   
    
    public func insertFieldWithoutNodePath(request : InsertFieldWithoutNodePathRequest) throws -> FieldResponse {
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent("/words/{name}/fields");
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: "\(request.getFolder()!)"));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: "\(request.getStorage()!)"));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: "\(request.getLoadEncoding()!)"));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: "\(request.getPassword()!)"));
        }
        if (request.getDestFileName() != nil) {
            queryItems.append(URLQueryItem(name: "destFileName", value: "\(request.getDestFileName()!)"));
        }
        if (request.getRevisionAuthor() != nil) {
            queryItems.append(URLQueryItem(name: "revisionAuthor", value: "\(request.getRevisionAuthor()!)"));
        }
        if (request.getRevisionDateTime() != nil) {
            queryItems.append(URLQueryItem(name: "revisionDateTime", value: "\(request.getRevisionDateTime()!)"));
        }
        if (request.getInsertBeforeNode() != nil) {
            queryItems.append(URLQueryItem(name: "insertBeforeNode", value: "\(request.getInsertBeforeNode()!)"));
        }
        
        urlBuilder.queryItems = queryItems;
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: nil,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: FieldResponse.self, from: response);
    }   
    
    public func insertFootnote(request : InsertFootnoteRequest) throws -> FootnoteResponse {
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent("/words/{name}/{nodePath}/footnotes");
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: "\(request.getFolder()!)"));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: "\(request.getStorage()!)"));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: "\(request.getLoadEncoding()!)"));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: "\(request.getPassword()!)"));
        }
        if (request.getDestFileName() != nil) {
            queryItems.append(URLQueryItem(name: "destFileName", value: "\(request.getDestFileName()!)"));
        }
        if (request.getRevisionAuthor() != nil) {
            queryItems.append(URLQueryItem(name: "revisionAuthor", value: "\(request.getRevisionAuthor()!)"));
        }
        if (request.getRevisionDateTime() != nil) {
            queryItems.append(URLQueryItem(name: "revisionDateTime", value: "\(request.getRevisionDateTime()!)"));
        }
        
        urlBuilder.queryItems = queryItems;
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: nil,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: FootnoteResponse.self, from: response);
    }   
    
    public func insertFootnoteWithoutNodePath(request : InsertFootnoteWithoutNodePathRequest) throws -> FootnoteResponse {
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent("/words/{name}/footnotes");
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: "\(request.getFolder()!)"));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: "\(request.getStorage()!)"));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: "\(request.getLoadEncoding()!)"));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: "\(request.getPassword()!)"));
        }
        if (request.getDestFileName() != nil) {
            queryItems.append(URLQueryItem(name: "destFileName", value: "\(request.getDestFileName()!)"));
        }
        if (request.getRevisionAuthor() != nil) {
            queryItems.append(URLQueryItem(name: "revisionAuthor", value: "\(request.getRevisionAuthor()!)"));
        }
        if (request.getRevisionDateTime() != nil) {
            queryItems.append(URLQueryItem(name: "revisionDateTime", value: "\(request.getRevisionDateTime()!)"));
        }
        
        urlBuilder.queryItems = queryItems;
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: nil,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: FootnoteResponse.self, from: response);
    }   
    
    public func insertFormField(request : InsertFormFieldRequest) throws -> FormFieldResponse {
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent("/words/{name}/{nodePath}/formfields");
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: "\(request.getFolder()!)"));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: "\(request.getStorage()!)"));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: "\(request.getLoadEncoding()!)"));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: "\(request.getPassword()!)"));
        }
        if (request.getDestFileName() != nil) {
            queryItems.append(URLQueryItem(name: "destFileName", value: "\(request.getDestFileName()!)"));
        }
        if (request.getRevisionAuthor() != nil) {
            queryItems.append(URLQueryItem(name: "revisionAuthor", value: "\(request.getRevisionAuthor()!)"));
        }
        if (request.getRevisionDateTime() != nil) {
            queryItems.append(URLQueryItem(name: "revisionDateTime", value: "\(request.getRevisionDateTime()!)"));
        }
        if (request.getInsertBeforeNode() != nil) {
            queryItems.append(URLQueryItem(name: "insertBeforeNode", value: "\(request.getInsertBeforeNode()!)"));
        }
        
        urlBuilder.queryItems = queryItems;
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: nil,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: FormFieldResponse.self, from: response);
    }   
    
    public func insertFormFieldWithoutNodePath(request : InsertFormFieldWithoutNodePathRequest) throws -> FormFieldResponse {
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent("/words/{name}/formfields");
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: "\(request.getFolder()!)"));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: "\(request.getStorage()!)"));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: "\(request.getLoadEncoding()!)"));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: "\(request.getPassword()!)"));
        }
        if (request.getDestFileName() != nil) {
            queryItems.append(URLQueryItem(name: "destFileName", value: "\(request.getDestFileName()!)"));
        }
        if (request.getRevisionAuthor() != nil) {
            queryItems.append(URLQueryItem(name: "revisionAuthor", value: "\(request.getRevisionAuthor()!)"));
        }
        if (request.getRevisionDateTime() != nil) {
            queryItems.append(URLQueryItem(name: "revisionDateTime", value: "\(request.getRevisionDateTime()!)"));
        }
        if (request.getInsertBeforeNode() != nil) {
            queryItems.append(URLQueryItem(name: "insertBeforeNode", value: "\(request.getInsertBeforeNode()!)"));
        }
        
        urlBuilder.queryItems = queryItems;
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: nil,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: FormFieldResponse.self, from: response);
    }   
    
    public func insertHeaderFooter(request : InsertHeaderFooterRequest) throws -> HeaderFooterResponse {
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent("/words/{name}/{sectionPath}/headersfooters");
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: "\(request.getFolder()!)"));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: "\(request.getStorage()!)"));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: "\(request.getLoadEncoding()!)"));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: "\(request.getPassword()!)"));
        }
        if (request.getDestFileName() != nil) {
            queryItems.append(URLQueryItem(name: "destFileName", value: "\(request.getDestFileName()!)"));
        }
        if (request.getRevisionAuthor() != nil) {
            queryItems.append(URLQueryItem(name: "revisionAuthor", value: "\(request.getRevisionAuthor()!)"));
        }
        if (request.getRevisionDateTime() != nil) {
            queryItems.append(URLQueryItem(name: "revisionDateTime", value: "\(request.getRevisionDateTime()!)"));
        }
        
        urlBuilder.queryItems = queryItems;
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: nil,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: HeaderFooterResponse.self, from: response);
    }   
    
    public func insertPageNumbers(request : InsertPageNumbersRequest) throws -> DocumentResponse {
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent("/words/{name}/PageNumbers");
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: "\(request.getFolder()!)"));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: "\(request.getStorage()!)"));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: "\(request.getLoadEncoding()!)"));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: "\(request.getPassword()!)"));
        }
        if (request.getDestFileName() != nil) {
            queryItems.append(URLQueryItem(name: "destFileName", value: "\(request.getDestFileName()!)"));
        }
        if (request.getRevisionAuthor() != nil) {
            queryItems.append(URLQueryItem(name: "revisionAuthor", value: "\(request.getRevisionAuthor()!)"));
        }
        if (request.getRevisionDateTime() != nil) {
            queryItems.append(URLQueryItem(name: "revisionDateTime", value: "\(request.getRevisionDateTime()!)"));
        }
        
        urlBuilder.queryItems = queryItems;
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: nil,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: DocumentResponse.self, from: response);
    }   
    
    public func insertParagraph(request : InsertParagraphRequest) throws -> ParagraphResponse {
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent("/words/{name}/{nodePath}/paragraphs");
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: "\(request.getFolder()!)"));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: "\(request.getStorage()!)"));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: "\(request.getLoadEncoding()!)"));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: "\(request.getPassword()!)"));
        }
        if (request.getDestFileName() != nil) {
            queryItems.append(URLQueryItem(name: "destFileName", value: "\(request.getDestFileName()!)"));
        }
        if (request.getRevisionAuthor() != nil) {
            queryItems.append(URLQueryItem(name: "revisionAuthor", value: "\(request.getRevisionAuthor()!)"));
        }
        if (request.getRevisionDateTime() != nil) {
            queryItems.append(URLQueryItem(name: "revisionDateTime", value: "\(request.getRevisionDateTime()!)"));
        }
        if (request.getInsertBeforeNode() != nil) {
            queryItems.append(URLQueryItem(name: "insertBeforeNode", value: "\(request.getInsertBeforeNode()!)"));
        }
        
        urlBuilder.queryItems = queryItems;
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: nil,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: ParagraphResponse.self, from: response);
    }   
    
    public func insertRun(request : InsertRunRequest) throws -> RunResponse {
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent("/words/{name}/{paragraphPath}/runs");
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: "\(request.getFolder()!)"));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: "\(request.getStorage()!)"));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: "\(request.getLoadEncoding()!)"));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: "\(request.getPassword()!)"));
        }
        if (request.getDestFileName() != nil) {
            queryItems.append(URLQueryItem(name: "destFileName", value: "\(request.getDestFileName()!)"));
        }
        if (request.getRevisionAuthor() != nil) {
            queryItems.append(URLQueryItem(name: "revisionAuthor", value: "\(request.getRevisionAuthor()!)"));
        }
        if (request.getRevisionDateTime() != nil) {
            queryItems.append(URLQueryItem(name: "revisionDateTime", value: "\(request.getRevisionDateTime()!)"));
        }
        if (request.getInsertBeforeNode() != nil) {
            queryItems.append(URLQueryItem(name: "insertBeforeNode", value: "\(request.getInsertBeforeNode()!)"));
        }
        
        urlBuilder.queryItems = queryItems;
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: nil,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: RunResponse.self, from: response);
    }   
    
    public func insertTable(request : InsertTableRequest) throws -> TableResponse {
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent("/words/{name}/{nodePath}/tables");
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: "\(request.getFolder()!)"));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: "\(request.getStorage()!)"));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: "\(request.getLoadEncoding()!)"));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: "\(request.getPassword()!)"));
        }
        if (request.getDestFileName() != nil) {
            queryItems.append(URLQueryItem(name: "destFileName", value: "\(request.getDestFileName()!)"));
        }
        if (request.getRevisionAuthor() != nil) {
            queryItems.append(URLQueryItem(name: "revisionAuthor", value: "\(request.getRevisionAuthor()!)"));
        }
        if (request.getRevisionDateTime() != nil) {
            queryItems.append(URLQueryItem(name: "revisionDateTime", value: "\(request.getRevisionDateTime()!)"));
        }
        
        urlBuilder.queryItems = queryItems;
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: nil,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: TableResponse.self, from: response);
    }   
    
    public func insertTableCell(request : InsertTableCellRequest) throws -> TableCellResponse {
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent("/words/{name}/{tableRowPath}/cells");
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: "\(request.getFolder()!)"));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: "\(request.getStorage()!)"));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: "\(request.getLoadEncoding()!)"));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: "\(request.getPassword()!)"));
        }
        if (request.getDestFileName() != nil) {
            queryItems.append(URLQueryItem(name: "destFileName", value: "\(request.getDestFileName()!)"));
        }
        if (request.getRevisionAuthor() != nil) {
            queryItems.append(URLQueryItem(name: "revisionAuthor", value: "\(request.getRevisionAuthor()!)"));
        }
        if (request.getRevisionDateTime() != nil) {
            queryItems.append(URLQueryItem(name: "revisionDateTime", value: "\(request.getRevisionDateTime()!)"));
        }
        
        urlBuilder.queryItems = queryItems;
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: nil,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: TableCellResponse.self, from: response);
    }   
    
    public func insertTableRow(request : InsertTableRowRequest) throws -> TableRowResponse {
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent("/words/{name}/{tablePath}/rows");
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: "\(request.getFolder()!)"));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: "\(request.getStorage()!)"));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: "\(request.getLoadEncoding()!)"));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: "\(request.getPassword()!)"));
        }
        if (request.getDestFileName() != nil) {
            queryItems.append(URLQueryItem(name: "destFileName", value: "\(request.getDestFileName()!)"));
        }
        if (request.getRevisionAuthor() != nil) {
            queryItems.append(URLQueryItem(name: "revisionAuthor", value: "\(request.getRevisionAuthor()!)"));
        }
        if (request.getRevisionDateTime() != nil) {
            queryItems.append(URLQueryItem(name: "revisionDateTime", value: "\(request.getRevisionDateTime()!)"));
        }
        
        urlBuilder.queryItems = queryItems;
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: nil,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: TableRowResponse.self, from: response);
    }   
    
    public func insertTableWithoutNodePath(request : InsertTableWithoutNodePathRequest) throws -> TableResponse {
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent("/words/{name}/tables");
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: "\(request.getFolder()!)"));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: "\(request.getStorage()!)"));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: "\(request.getLoadEncoding()!)"));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: "\(request.getPassword()!)"));
        }
        if (request.getDestFileName() != nil) {
            queryItems.append(URLQueryItem(name: "destFileName", value: "\(request.getDestFileName()!)"));
        }
        if (request.getRevisionAuthor() != nil) {
            queryItems.append(URLQueryItem(name: "revisionAuthor", value: "\(request.getRevisionAuthor()!)"));
        }
        if (request.getRevisionDateTime() != nil) {
            queryItems.append(URLQueryItem(name: "revisionDateTime", value: "\(request.getRevisionDateTime()!)"));
        }
        
        urlBuilder.queryItems = queryItems;
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: nil,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: TableResponse.self, from: response);
    }   
    
    public func insertWatermarkImage(request : InsertWatermarkImageRequest) throws -> DocumentResponse {
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent("/words/{name}/watermarks/images");
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: "\(request.getFolder()!)"));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: "\(request.getStorage()!)"));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: "\(request.getLoadEncoding()!)"));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: "\(request.getPassword()!)"));
        }
        if (request.getDestFileName() != nil) {
            queryItems.append(URLQueryItem(name: "destFileName", value: "\(request.getDestFileName()!)"));
        }
        if (request.getRevisionAuthor() != nil) {
            queryItems.append(URLQueryItem(name: "revisionAuthor", value: "\(request.getRevisionAuthor()!)"));
        }
        if (request.getRevisionDateTime() != nil) {
            queryItems.append(URLQueryItem(name: "revisionDateTime", value: "\(request.getRevisionDateTime()!)"));
        }
        if (request.getRotationAngle() != nil) {
            queryItems.append(URLQueryItem(name: "rotationAngle", value: "\(request.getRotationAngle()!)"));
        }
        if (request.getImage() != nil) {
            queryItems.append(URLQueryItem(name: "image", value: "\(request.getImage()!)"));
        }
        
        urlBuilder.queryItems = queryItems;
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: nil,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: DocumentResponse.self, from: response);
    }   
    
    public func insertWatermarkText(request : InsertWatermarkTextRequest) throws -> DocumentResponse {
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent("/words/{name}/watermarks/texts");
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: "\(request.getFolder()!)"));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: "\(request.getStorage()!)"));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: "\(request.getLoadEncoding()!)"));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: "\(request.getPassword()!)"));
        }
        if (request.getDestFileName() != nil) {
            queryItems.append(URLQueryItem(name: "destFileName", value: "\(request.getDestFileName()!)"));
        }
        if (request.getRevisionAuthor() != nil) {
            queryItems.append(URLQueryItem(name: "revisionAuthor", value: "\(request.getRevisionAuthor()!)"));
        }
        if (request.getRevisionDateTime() != nil) {
            queryItems.append(URLQueryItem(name: "revisionDateTime", value: "\(request.getRevisionDateTime()!)"));
        }
        
        urlBuilder.queryItems = queryItems;
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: nil,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: DocumentResponse.self, from: response);
    }   
    
    public func loadWebDocument(request : LoadWebDocumentRequest) throws -> SaveResponse {
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent("/words/loadWebDocument");
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: "\(request.getStorage()!)"));
        }
        
        urlBuilder.queryItems = queryItems;
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: nil,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: SaveResponse.self, from: response);
    }   
    
    public func moveFile(request : MoveFileRequest) throws  {
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent("/words/storage/file/move/{srcPath}");
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        
        if (request.getDestPath() != nil) {
            queryItems.append(URLQueryItem(name: "destPath", value: "\(request.getDestPath()!)"));
        }
        if (request.getSrcStorageName() != nil) {
            queryItems.append(URLQueryItem(name: "srcStorageName", value: "\(request.getSrcStorageName()!)"));
        }
        if (request.getDestStorageName() != nil) {
            queryItems.append(URLQueryItem(name: "destStorageName", value: "\(request.getDestStorageName()!)"));
        }
        if (request.getVersionId() != nil) {
            queryItems.append(URLQueryItem(name: "versionId", value: "\(request.getVersionId()!)"));
        }
        
        urlBuilder.queryItems = queryItems;
        
        _ = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: nil,
            headers: nil,
            formParams: nil
        );
        
    }   
    
    public func moveFolder(request : MoveFolderRequest) throws  {
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent("/words/storage/folder/move/{srcPath}");
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        
        if (request.getDestPath() != nil) {
            queryItems.append(URLQueryItem(name: "destPath", value: "\(request.getDestPath()!)"));
        }
        if (request.getSrcStorageName() != nil) {
            queryItems.append(URLQueryItem(name: "srcStorageName", value: "\(request.getSrcStorageName()!)"));
        }
        if (request.getDestStorageName() != nil) {
            queryItems.append(URLQueryItem(name: "destStorageName", value: "\(request.getDestStorageName()!)"));
        }
        
        urlBuilder.queryItems = queryItems;
        
        _ = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: nil,
            headers: nil,
            formParams: nil
        );
        
    }   
    
    public func protectDocument(request : ProtectDocumentRequest) throws -> ProtectionDataResponse {
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent("/words/{name}/protection");
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: "\(request.getFolder()!)"));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: "\(request.getStorage()!)"));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: "\(request.getLoadEncoding()!)"));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: "\(request.getPassword()!)"));
        }
        if (request.getDestFileName() != nil) {
            queryItems.append(URLQueryItem(name: "destFileName", value: "\(request.getDestFileName()!)"));
        }
        
        urlBuilder.queryItems = queryItems;
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: nil,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: ProtectionDataResponse.self, from: response);
    }   
    
    public func rejectAllRevisions(request : RejectAllRevisionsRequest) throws -> RevisionsModificationResponse {
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent("/words/{name}/revisions/rejectAll");
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: "\(request.getFolder()!)"));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: "\(request.getStorage()!)"));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: "\(request.getLoadEncoding()!)"));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: "\(request.getPassword()!)"));
        }
        if (request.getDestFileName() != nil) {
            queryItems.append(URLQueryItem(name: "destFileName", value: "\(request.getDestFileName()!)"));
        }
        
        urlBuilder.queryItems = queryItems;
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: nil,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: RevisionsModificationResponse.self, from: response);
    }   
    
    public func removeRange(request : RemoveRangeRequest) throws -> DocumentResponse {
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent("/words/{name}/range/{rangeStartIdentifier}/{rangeEndIdentifier}");
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: "\(request.getFolder()!)"));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: "\(request.getStorage()!)"));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: "\(request.getLoadEncoding()!)"));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: "\(request.getPassword()!)"));
        }
        if (request.getDestFileName() != nil) {
            queryItems.append(URLQueryItem(name: "destFileName", value: "\(request.getDestFileName()!)"));
        }
        
        urlBuilder.queryItems = queryItems;
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: nil,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: DocumentResponse.self, from: response);
    }   
    
    public func renderDrawingObject(request : RenderDrawingObjectRequest) throws -> URL {
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent("/words/{name}/{nodePath}/drawingObjects/{index}/render");
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        
        if (request.getFormat() != nil) {
            queryItems.append(URLQueryItem(name: "format", value: "\(request.getFormat()!)"));
        }
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: "\(request.getFolder()!)"));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: "\(request.getStorage()!)"));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: "\(request.getLoadEncoding()!)"));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: "\(request.getPassword()!)"));
        }
        if (request.getFontsLocation() != nil) {
            queryItems.append(URLQueryItem(name: "fontsLocation", value: "\(request.getFontsLocation()!)"));
        }
        
        urlBuilder.queryItems = queryItems;
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: nil,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: URL.self, from: response);
    }   
    
    public func renderDrawingObjectWithoutNodePath(request : RenderDrawingObjectWithoutNodePathRequest) throws -> URL {
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent("/words/{name}/drawingObjects/{index}/render");
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        
        if (request.getFormat() != nil) {
            queryItems.append(URLQueryItem(name: "format", value: "\(request.getFormat()!)"));
        }
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: "\(request.getFolder()!)"));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: "\(request.getStorage()!)"));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: "\(request.getLoadEncoding()!)"));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: "\(request.getPassword()!)"));
        }
        if (request.getFontsLocation() != nil) {
            queryItems.append(URLQueryItem(name: "fontsLocation", value: "\(request.getFontsLocation()!)"));
        }
        
        urlBuilder.queryItems = queryItems;
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: nil,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: URL.self, from: response);
    }   
    
    public func renderMathObject(request : RenderMathObjectRequest) throws -> URL {
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent("/words/{name}/{nodePath}/OfficeMathObjects/{index}/render");
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        
        if (request.getFormat() != nil) {
            queryItems.append(URLQueryItem(name: "format", value: "\(request.getFormat()!)"));
        }
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: "\(request.getFolder()!)"));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: "\(request.getStorage()!)"));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: "\(request.getLoadEncoding()!)"));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: "\(request.getPassword()!)"));
        }
        if (request.getFontsLocation() != nil) {
            queryItems.append(URLQueryItem(name: "fontsLocation", value: "\(request.getFontsLocation()!)"));
        }
        
        urlBuilder.queryItems = queryItems;
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: nil,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: URL.self, from: response);
    }   
    
    public func renderMathObjectWithoutNodePath(request : RenderMathObjectWithoutNodePathRequest) throws -> URL {
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent("/words/{name}/OfficeMathObjects/{index}/render");
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        
        if (request.getFormat() != nil) {
            queryItems.append(URLQueryItem(name: "format", value: "\(request.getFormat()!)"));
        }
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: "\(request.getFolder()!)"));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: "\(request.getStorage()!)"));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: "\(request.getLoadEncoding()!)"));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: "\(request.getPassword()!)"));
        }
        if (request.getFontsLocation() != nil) {
            queryItems.append(URLQueryItem(name: "fontsLocation", value: "\(request.getFontsLocation()!)"));
        }
        
        urlBuilder.queryItems = queryItems;
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: nil,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: URL.self, from: response);
    }   
    
    public func renderPage(request : RenderPageRequest) throws -> URL {
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent("/words/{name}/pages/{pageIndex}/render");
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        
        if (request.getFormat() != nil) {
            queryItems.append(URLQueryItem(name: "format", value: "\(request.getFormat()!)"));
        }
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: "\(request.getFolder()!)"));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: "\(request.getStorage()!)"));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: "\(request.getLoadEncoding()!)"));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: "\(request.getPassword()!)"));
        }
        if (request.getFontsLocation() != nil) {
            queryItems.append(URLQueryItem(name: "fontsLocation", value: "\(request.getFontsLocation()!)"));
        }
        
        urlBuilder.queryItems = queryItems;
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: nil,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: URL.self, from: response);
    }   
    
    public func renderParagraph(request : RenderParagraphRequest) throws -> URL {
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent("/words/{name}/{nodePath}/paragraphs/{index}/render");
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        
        if (request.getFormat() != nil) {
            queryItems.append(URLQueryItem(name: "format", value: "\(request.getFormat()!)"));
        }
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: "\(request.getFolder()!)"));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: "\(request.getStorage()!)"));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: "\(request.getLoadEncoding()!)"));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: "\(request.getPassword()!)"));
        }
        if (request.getFontsLocation() != nil) {
            queryItems.append(URLQueryItem(name: "fontsLocation", value: "\(request.getFontsLocation()!)"));
        }
        
        urlBuilder.queryItems = queryItems;
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: nil,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: URL.self, from: response);
    }   
    
    public func renderParagraphWithoutNodePath(request : RenderParagraphWithoutNodePathRequest) throws -> URL {
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent("/words/{name}/paragraphs/{index}/render");
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        
        if (request.getFormat() != nil) {
            queryItems.append(URLQueryItem(name: "format", value: "\(request.getFormat()!)"));
        }
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: "\(request.getFolder()!)"));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: "\(request.getStorage()!)"));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: "\(request.getLoadEncoding()!)"));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: "\(request.getPassword()!)"));
        }
        if (request.getFontsLocation() != nil) {
            queryItems.append(URLQueryItem(name: "fontsLocation", value: "\(request.getFontsLocation()!)"));
        }
        
        urlBuilder.queryItems = queryItems;
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: nil,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: URL.self, from: response);
    }   
    
    public func renderTable(request : RenderTableRequest) throws -> URL {
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent("/words/{name}/{nodePath}/tables/{index}/render");
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        
        if (request.getFormat() != nil) {
            queryItems.append(URLQueryItem(name: "format", value: "\(request.getFormat()!)"));
        }
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: "\(request.getFolder()!)"));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: "\(request.getStorage()!)"));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: "\(request.getLoadEncoding()!)"));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: "\(request.getPassword()!)"));
        }
        if (request.getFontsLocation() != nil) {
            queryItems.append(URLQueryItem(name: "fontsLocation", value: "\(request.getFontsLocation()!)"));
        }
        
        urlBuilder.queryItems = queryItems;
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: nil,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: URL.self, from: response);
    }   
    
    public func renderTableWithoutNodePath(request : RenderTableWithoutNodePathRequest) throws -> URL {
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent("/words/{name}/tables/{index}/render");
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        
        if (request.getFormat() != nil) {
            queryItems.append(URLQueryItem(name: "format", value: "\(request.getFormat()!)"));
        }
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: "\(request.getFolder()!)"));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: "\(request.getStorage()!)"));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: "\(request.getLoadEncoding()!)"));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: "\(request.getPassword()!)"));
        }
        if (request.getFontsLocation() != nil) {
            queryItems.append(URLQueryItem(name: "fontsLocation", value: "\(request.getFontsLocation()!)"));
        }
        
        urlBuilder.queryItems = queryItems;
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: nil,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: URL.self, from: response);
    }   
    
    public func replaceText(request : ReplaceTextRequest) throws -> ReplaceTextResponse {
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent("/words/{name}/replaceText");
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: "\(request.getFolder()!)"));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: "\(request.getStorage()!)"));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: "\(request.getLoadEncoding()!)"));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: "\(request.getPassword()!)"));
        }
        if (request.getDestFileName() != nil) {
            queryItems.append(URLQueryItem(name: "destFileName", value: "\(request.getDestFileName()!)"));
        }
        if (request.getRevisionAuthor() != nil) {
            queryItems.append(URLQueryItem(name: "revisionAuthor", value: "\(request.getRevisionAuthor()!)"));
        }
        if (request.getRevisionDateTime() != nil) {
            queryItems.append(URLQueryItem(name: "revisionDateTime", value: "\(request.getRevisionDateTime()!)"));
        }
        
        urlBuilder.queryItems = queryItems;
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: nil,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: ReplaceTextResponse.self, from: response);
    }   
    
    public func replaceWithText(request : ReplaceWithTextRequest) throws -> DocumentResponse {
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent("/words/{name}/range/{rangeStartIdentifier}/{rangeEndIdentifier}");
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: "\(request.getFolder()!)"));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: "\(request.getStorage()!)"));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: "\(request.getLoadEncoding()!)"));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: "\(request.getPassword()!)"));
        }
        if (request.getDestFileName() != nil) {
            queryItems.append(URLQueryItem(name: "destFileName", value: "\(request.getDestFileName()!)"));
        }
        
        urlBuilder.queryItems = queryItems;
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: nil,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: DocumentResponse.self, from: response);
    }   
    
    public func resetCache(request : ResetCacheRequest) throws  {
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent("/words/fonts/cache");
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        
        
        urlBuilder.queryItems = queryItems;
        
        _ = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: nil,
            headers: nil,
            formParams: nil
        );
        
    }   
    
    public func saveAs(request : SaveAsRequest) throws -> SaveResponse {
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent("/words/{name}/saveAs");
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: "\(request.getFolder()!)"));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: "\(request.getStorage()!)"));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: "\(request.getLoadEncoding()!)"));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: "\(request.getPassword()!)"));
        }
        if (request.getFontsLocation() != nil) {
            queryItems.append(URLQueryItem(name: "fontsLocation", value: "\(request.getFontsLocation()!)"));
        }
        
        urlBuilder.queryItems = queryItems;
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: nil,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: SaveResponse.self, from: response);
    }   
    
    public func saveAsRange(request : SaveAsRangeRequest) throws -> DocumentResponse {
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent("/words/{name}/range/{rangeStartIdentifier}/{rangeEndIdentifier}/SaveAs");
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: "\(request.getFolder()!)"));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: "\(request.getStorage()!)"));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: "\(request.getLoadEncoding()!)"));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: "\(request.getPassword()!)"));
        }
        
        urlBuilder.queryItems = queryItems;
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: nil,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: DocumentResponse.self, from: response);
    }   
    
    public func saveAsTiff(request : SaveAsTiffRequest) throws -> SaveResponse {
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent("/words/{name}/saveAs/tiff");
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: "\(request.getFolder()!)"));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: "\(request.getStorage()!)"));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: "\(request.getLoadEncoding()!)"));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: "\(request.getPassword()!)"));
        }
        if (request.getUseAntiAliasing() != nil) {
            queryItems.append(URLQueryItem(name: "useAntiAliasing", value: "\(request.getUseAntiAliasing()!)"));
        }
        if (request.getUseHighQualityRendering() != nil) {
            queryItems.append(URLQueryItem(name: "useHighQualityRendering", value: "\(request.getUseHighQualityRendering()!)"));
        }
        if (request.getImageBrightness() != nil) {
            queryItems.append(URLQueryItem(name: "imageBrightness", value: "\(request.getImageBrightness()!)"));
        }
        if (request.getImageColorMode() != nil) {
            queryItems.append(URLQueryItem(name: "imageColorMode", value: "\(request.getImageColorMode()!)"));
        }
        if (request.getImageContrast() != nil) {
            queryItems.append(URLQueryItem(name: "imageContrast", value: "\(request.getImageContrast()!)"));
        }
        if (request.getNumeralFormat() != nil) {
            queryItems.append(URLQueryItem(name: "numeralFormat", value: "\(request.getNumeralFormat()!)"));
        }
        if (request.getPageCount() != nil) {
            queryItems.append(URLQueryItem(name: "pageCount", value: "\(request.getPageCount()!)"));
        }
        if (request.getPageIndex() != nil) {
            queryItems.append(URLQueryItem(name: "pageIndex", value: "\(request.getPageIndex()!)"));
        }
        if (request.getPaperColor() != nil) {
            queryItems.append(URLQueryItem(name: "paperColor", value: "\(request.getPaperColor()!)"));
        }
        if (request.getPixelFormat() != nil) {
            queryItems.append(URLQueryItem(name: "pixelFormat", value: "\(request.getPixelFormat()!)"));
        }
        if (request.getResolution() != nil) {
            queryItems.append(URLQueryItem(name: "resolution", value: "\(request.getResolution()!)"));
        }
        if (request.getScale() != nil) {
            queryItems.append(URLQueryItem(name: "scale", value: "\(request.getScale()!)"));
        }
        if (request.getTiffCompression() != nil) {
            queryItems.append(URLQueryItem(name: "tiffCompression", value: "\(request.getTiffCompression()!)"));
        }
        if (request.getDmlRenderingMode() != nil) {
            queryItems.append(URLQueryItem(name: "dmlRenderingMode", value: "\(request.getDmlRenderingMode()!)"));
        }
        if (request.getDmlEffectsRenderingMode() != nil) {
            queryItems.append(URLQueryItem(name: "dmlEffectsRenderingMode", value: "\(request.getDmlEffectsRenderingMode()!)"));
        }
        if (request.getTiffBinarizationMethod() != nil) {
            queryItems.append(URLQueryItem(name: "tiffBinarizationMethod", value: "\(request.getTiffBinarizationMethod()!)"));
        }
        if (request.getZipOutput() != nil) {
            queryItems.append(URLQueryItem(name: "zipOutput", value: "\(request.getZipOutput()!)"));
        }
        if (request.getFontsLocation() != nil) {
            queryItems.append(URLQueryItem(name: "fontsLocation", value: "\(request.getFontsLocation()!)"));
        }
        
        urlBuilder.queryItems = queryItems;
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: nil,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: SaveResponse.self, from: response);
    }   
    
    public func search(request : SearchRequest) throws -> SearchResponse {
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent("/words/{name}/search");
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        
        if (request.getPattern() != nil) {
            queryItems.append(URLQueryItem(name: "pattern", value: "\(request.getPattern()!)"));
        }
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: "\(request.getFolder()!)"));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: "\(request.getStorage()!)"));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: "\(request.getLoadEncoding()!)"));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: "\(request.getPassword()!)"));
        }
        
        urlBuilder.queryItems = queryItems;
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: nil,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: SearchResponse.self, from: response);
    }   
    
    public func splitDocument(request : SplitDocumentRequest) throws -> SplitDocumentResponse {
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent("/words/{name}/split");
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: "\(request.getFolder()!)"));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: "\(request.getStorage()!)"));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: "\(request.getLoadEncoding()!)"));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: "\(request.getPassword()!)"));
        }
        if (request.getDestFileName() != nil) {
            queryItems.append(URLQueryItem(name: "destFileName", value: "\(request.getDestFileName()!)"));
        }
        if (request.getFormat() != nil) {
            queryItems.append(URLQueryItem(name: "format", value: "\(request.getFormat()!)"));
        }
        if (request.getFrom() != nil) {
            queryItems.append(URLQueryItem(name: "from", value: "\(request.getFrom()!)"));
        }
        if (request.getTo() != nil) {
            queryItems.append(URLQueryItem(name: "to", value: "\(request.getTo()!)"));
        }
        if (request.getZipOutput() != nil) {
            queryItems.append(URLQueryItem(name: "zipOutput", value: "\(request.getZipOutput()!)"));
        }
        if (request.getFontsLocation() != nil) {
            queryItems.append(URLQueryItem(name: "fontsLocation", value: "\(request.getFontsLocation()!)"));
        }
        
        urlBuilder.queryItems = queryItems;
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: nil,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: SplitDocumentResponse.self, from: response);
    }   
    
    public func unprotectDocument(request : UnprotectDocumentRequest) throws -> ProtectionDataResponse {
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent("/words/{name}/protection");
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: "\(request.getFolder()!)"));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: "\(request.getStorage()!)"));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: "\(request.getLoadEncoding()!)"));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: "\(request.getPassword()!)"));
        }
        if (request.getDestFileName() != nil) {
            queryItems.append(URLQueryItem(name: "destFileName", value: "\(request.getDestFileName()!)"));
        }
        
        urlBuilder.queryItems = queryItems;
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: nil,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: ProtectionDataResponse.self, from: response);
    }   
    
    public func updateBookmark(request : UpdateBookmarkRequest) throws -> BookmarkResponse {
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent("/words/{name}/bookmarks/{bookmarkName}");
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: "\(request.getFolder()!)"));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: "\(request.getStorage()!)"));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: "\(request.getLoadEncoding()!)"));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: "\(request.getPassword()!)"));
        }
        if (request.getDestFileName() != nil) {
            queryItems.append(URLQueryItem(name: "destFileName", value: "\(request.getDestFileName()!)"));
        }
        if (request.getRevisionAuthor() != nil) {
            queryItems.append(URLQueryItem(name: "revisionAuthor", value: "\(request.getRevisionAuthor()!)"));
        }
        if (request.getRevisionDateTime() != nil) {
            queryItems.append(URLQueryItem(name: "revisionDateTime", value: "\(request.getRevisionDateTime()!)"));
        }
        
        urlBuilder.queryItems = queryItems;
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: nil,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: BookmarkResponse.self, from: response);
    }   
    
    public func updateBorder(request : UpdateBorderRequest) throws -> BorderResponse {
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent("/words/{name}/{nodePath}/borders/{borderType}");
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: "\(request.getFolder()!)"));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: "\(request.getStorage()!)"));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: "\(request.getLoadEncoding()!)"));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: "\(request.getPassword()!)"));
        }
        if (request.getDestFileName() != nil) {
            queryItems.append(URLQueryItem(name: "destFileName", value: "\(request.getDestFileName()!)"));
        }
        if (request.getRevisionAuthor() != nil) {
            queryItems.append(URLQueryItem(name: "revisionAuthor", value: "\(request.getRevisionAuthor()!)"));
        }
        if (request.getRevisionDateTime() != nil) {
            queryItems.append(URLQueryItem(name: "revisionDateTime", value: "\(request.getRevisionDateTime()!)"));
        }
        
        urlBuilder.queryItems = queryItems;
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: nil,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: BorderResponse.self, from: response);
    }   
    
    public func updateComment(request : UpdateCommentRequest) throws -> CommentResponse {
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent("/words/{name}/comments/{commentIndex}");
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: "\(request.getFolder()!)"));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: "\(request.getStorage()!)"));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: "\(request.getLoadEncoding()!)"));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: "\(request.getPassword()!)"));
        }
        if (request.getDestFileName() != nil) {
            queryItems.append(URLQueryItem(name: "destFileName", value: "\(request.getDestFileName()!)"));
        }
        if (request.getRevisionAuthor() != nil) {
            queryItems.append(URLQueryItem(name: "revisionAuthor", value: "\(request.getRevisionAuthor()!)"));
        }
        if (request.getRevisionDateTime() != nil) {
            queryItems.append(URLQueryItem(name: "revisionDateTime", value: "\(request.getRevisionDateTime()!)"));
        }
        
        urlBuilder.queryItems = queryItems;
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: nil,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: CommentResponse.self, from: response);
    }   
    
    public func updateDrawingObject(request : UpdateDrawingObjectRequest) throws -> DrawingObjectResponse {
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent("/words/{name}/{nodePath}/drawingObjects/{index}");
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: "\(request.getFolder()!)"));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: "\(request.getStorage()!)"));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: "\(request.getLoadEncoding()!)"));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: "\(request.getPassword()!)"));
        }
        if (request.getDestFileName() != nil) {
            queryItems.append(URLQueryItem(name: "destFileName", value: "\(request.getDestFileName()!)"));
        }
        if (request.getRevisionAuthor() != nil) {
            queryItems.append(URLQueryItem(name: "revisionAuthor", value: "\(request.getRevisionAuthor()!)"));
        }
        if (request.getRevisionDateTime() != nil) {
            queryItems.append(URLQueryItem(name: "revisionDateTime", value: "\(request.getRevisionDateTime()!)"));
        }
        
        urlBuilder.queryItems = queryItems;
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: nil,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: DrawingObjectResponse.self, from: response);
    }   
    
    public func updateDrawingObjectWithoutNodePath(request : UpdateDrawingObjectWithoutNodePathRequest) throws -> DrawingObjectResponse {
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent("/words/{name}/drawingObjects/{index}");
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: "\(request.getFolder()!)"));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: "\(request.getStorage()!)"));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: "\(request.getLoadEncoding()!)"));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: "\(request.getPassword()!)"));
        }
        if (request.getDestFileName() != nil) {
            queryItems.append(URLQueryItem(name: "destFileName", value: "\(request.getDestFileName()!)"));
        }
        if (request.getRevisionAuthor() != nil) {
            queryItems.append(URLQueryItem(name: "revisionAuthor", value: "\(request.getRevisionAuthor()!)"));
        }
        if (request.getRevisionDateTime() != nil) {
            queryItems.append(URLQueryItem(name: "revisionDateTime", value: "\(request.getRevisionDateTime()!)"));
        }
        
        urlBuilder.queryItems = queryItems;
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: nil,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: DrawingObjectResponse.self, from: response);
    }   
    
    public func updateField(request : UpdateFieldRequest) throws -> FieldResponse {
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent("/words/{name}/{nodePath}/fields/{index}");
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: "\(request.getFolder()!)"));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: "\(request.getStorage()!)"));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: "\(request.getLoadEncoding()!)"));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: "\(request.getPassword()!)"));
        }
        if (request.getDestFileName() != nil) {
            queryItems.append(URLQueryItem(name: "destFileName", value: "\(request.getDestFileName()!)"));
        }
        if (request.getRevisionAuthor() != nil) {
            queryItems.append(URLQueryItem(name: "revisionAuthor", value: "\(request.getRevisionAuthor()!)"));
        }
        if (request.getRevisionDateTime() != nil) {
            queryItems.append(URLQueryItem(name: "revisionDateTime", value: "\(request.getRevisionDateTime()!)"));
        }
        
        urlBuilder.queryItems = queryItems;
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: nil,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: FieldResponse.self, from: response);
    }   
    
    public func updateFields(request : UpdateFieldsRequest) throws -> DocumentResponse {
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent("/words/{name}/updateFields");
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: "\(request.getFolder()!)"));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: "\(request.getStorage()!)"));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: "\(request.getLoadEncoding()!)"));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: "\(request.getPassword()!)"));
        }
        if (request.getDestFileName() != nil) {
            queryItems.append(URLQueryItem(name: "destFileName", value: "\(request.getDestFileName()!)"));
        }
        
        urlBuilder.queryItems = queryItems;
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: nil,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: DocumentResponse.self, from: response);
    }   
    
    public func updateFootnote(request : UpdateFootnoteRequest) throws -> FootnoteResponse {
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent("/words/{name}/{nodePath}/footnotes/{index}");
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: "\(request.getFolder()!)"));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: "\(request.getStorage()!)"));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: "\(request.getLoadEncoding()!)"));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: "\(request.getPassword()!)"));
        }
        if (request.getDestFileName() != nil) {
            queryItems.append(URLQueryItem(name: "destFileName", value: "\(request.getDestFileName()!)"));
        }
        if (request.getRevisionAuthor() != nil) {
            queryItems.append(URLQueryItem(name: "revisionAuthor", value: "\(request.getRevisionAuthor()!)"));
        }
        if (request.getRevisionDateTime() != nil) {
            queryItems.append(URLQueryItem(name: "revisionDateTime", value: "\(request.getRevisionDateTime()!)"));
        }
        
        urlBuilder.queryItems = queryItems;
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: nil,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: FootnoteResponse.self, from: response);
    }   
    
    public func updateFootnoteWithoutNodePath(request : UpdateFootnoteWithoutNodePathRequest) throws -> FootnoteResponse {
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent("/words/{name}/footnotes/{index}");
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: "\(request.getFolder()!)"));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: "\(request.getStorage()!)"));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: "\(request.getLoadEncoding()!)"));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: "\(request.getPassword()!)"));
        }
        if (request.getDestFileName() != nil) {
            queryItems.append(URLQueryItem(name: "destFileName", value: "\(request.getDestFileName()!)"));
        }
        if (request.getRevisionAuthor() != nil) {
            queryItems.append(URLQueryItem(name: "revisionAuthor", value: "\(request.getRevisionAuthor()!)"));
        }
        if (request.getRevisionDateTime() != nil) {
            queryItems.append(URLQueryItem(name: "revisionDateTime", value: "\(request.getRevisionDateTime()!)"));
        }
        
        urlBuilder.queryItems = queryItems;
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: nil,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: FootnoteResponse.self, from: response);
    }   
    
    public func updateFormField(request : UpdateFormFieldRequest) throws -> FormFieldResponse {
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent("/words/{name}/{nodePath}/formfields/{index}");
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: "\(request.getFolder()!)"));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: "\(request.getStorage()!)"));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: "\(request.getLoadEncoding()!)"));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: "\(request.getPassword()!)"));
        }
        if (request.getDestFileName() != nil) {
            queryItems.append(URLQueryItem(name: "destFileName", value: "\(request.getDestFileName()!)"));
        }
        if (request.getRevisionAuthor() != nil) {
            queryItems.append(URLQueryItem(name: "revisionAuthor", value: "\(request.getRevisionAuthor()!)"));
        }
        if (request.getRevisionDateTime() != nil) {
            queryItems.append(URLQueryItem(name: "revisionDateTime", value: "\(request.getRevisionDateTime()!)"));
        }
        
        urlBuilder.queryItems = queryItems;
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: nil,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: FormFieldResponse.self, from: response);
    }   
    
    public func updateFormFieldWithoutNodePath(request : UpdateFormFieldWithoutNodePathRequest) throws -> FormFieldResponse {
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent("/words/{name}/formfields/{index}");
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: "\(request.getFolder()!)"));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: "\(request.getStorage()!)"));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: "\(request.getLoadEncoding()!)"));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: "\(request.getPassword()!)"));
        }
        if (request.getDestFileName() != nil) {
            queryItems.append(URLQueryItem(name: "destFileName", value: "\(request.getDestFileName()!)"));
        }
        if (request.getRevisionAuthor() != nil) {
            queryItems.append(URLQueryItem(name: "revisionAuthor", value: "\(request.getRevisionAuthor()!)"));
        }
        if (request.getRevisionDateTime() != nil) {
            queryItems.append(URLQueryItem(name: "revisionDateTime", value: "\(request.getRevisionDateTime()!)"));
        }
        
        urlBuilder.queryItems = queryItems;
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: nil,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: FormFieldResponse.self, from: response);
    }   
    
    public func updateParagraphFormat(request : UpdateParagraphFormatRequest) throws -> ParagraphFormatResponse {
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent("/words/{name}/{nodePath}/paragraphs/{index}/format");
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: "\(request.getFolder()!)"));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: "\(request.getStorage()!)"));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: "\(request.getLoadEncoding()!)"));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: "\(request.getPassword()!)"));
        }
        if (request.getDestFileName() != nil) {
            queryItems.append(URLQueryItem(name: "destFileName", value: "\(request.getDestFileName()!)"));
        }
        if (request.getRevisionAuthor() != nil) {
            queryItems.append(URLQueryItem(name: "revisionAuthor", value: "\(request.getRevisionAuthor()!)"));
        }
        if (request.getRevisionDateTime() != nil) {
            queryItems.append(URLQueryItem(name: "revisionDateTime", value: "\(request.getRevisionDateTime()!)"));
        }
        
        urlBuilder.queryItems = queryItems;
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: nil,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: ParagraphFormatResponse.self, from: response);
    }   
    
    public func updateRun(request : UpdateRunRequest) throws -> RunResponse {
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent("/words/{name}/{paragraphPath}/runs/{index}");
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: "\(request.getFolder()!)"));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: "\(request.getStorage()!)"));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: "\(request.getLoadEncoding()!)"));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: "\(request.getPassword()!)"));
        }
        if (request.getDestFileName() != nil) {
            queryItems.append(URLQueryItem(name: "destFileName", value: "\(request.getDestFileName()!)"));
        }
        if (request.getRevisionAuthor() != nil) {
            queryItems.append(URLQueryItem(name: "revisionAuthor", value: "\(request.getRevisionAuthor()!)"));
        }
        if (request.getRevisionDateTime() != nil) {
            queryItems.append(URLQueryItem(name: "revisionDateTime", value: "\(request.getRevisionDateTime()!)"));
        }
        
        urlBuilder.queryItems = queryItems;
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: nil,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: RunResponse.self, from: response);
    }   
    
    public func updateRunFont(request : UpdateRunFontRequest) throws -> FontResponse {
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent("/words/{name}/{paragraphPath}/runs/{index}/font");
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: "\(request.getFolder()!)"));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: "\(request.getStorage()!)"));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: "\(request.getLoadEncoding()!)"));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: "\(request.getPassword()!)"));
        }
        if (request.getDestFileName() != nil) {
            queryItems.append(URLQueryItem(name: "destFileName", value: "\(request.getDestFileName()!)"));
        }
        if (request.getRevisionAuthor() != nil) {
            queryItems.append(URLQueryItem(name: "revisionAuthor", value: "\(request.getRevisionAuthor()!)"));
        }
        if (request.getRevisionDateTime() != nil) {
            queryItems.append(URLQueryItem(name: "revisionDateTime", value: "\(request.getRevisionDateTime()!)"));
        }
        
        urlBuilder.queryItems = queryItems;
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: nil,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: FontResponse.self, from: response);
    }   
    
    public func updateSectionPageSetup(request : UpdateSectionPageSetupRequest) throws -> SectionPageSetupResponse {
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent("/words/{name}/sections/{sectionIndex}/pageSetup");
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: "\(request.getFolder()!)"));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: "\(request.getStorage()!)"));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: "\(request.getLoadEncoding()!)"));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: "\(request.getPassword()!)"));
        }
        if (request.getDestFileName() != nil) {
            queryItems.append(URLQueryItem(name: "destFileName", value: "\(request.getDestFileName()!)"));
        }
        if (request.getRevisionAuthor() != nil) {
            queryItems.append(URLQueryItem(name: "revisionAuthor", value: "\(request.getRevisionAuthor()!)"));
        }
        if (request.getRevisionDateTime() != nil) {
            queryItems.append(URLQueryItem(name: "revisionDateTime", value: "\(request.getRevisionDateTime()!)"));
        }
        
        urlBuilder.queryItems = queryItems;
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: nil,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: SectionPageSetupResponse.self, from: response);
    }   
    
    public func updateTableCellFormat(request : UpdateTableCellFormatRequest) throws -> TableCellFormatResponse {
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent("/words/{name}/{tableRowPath}/cells/{index}/cellformat");
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: "\(request.getFolder()!)"));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: "\(request.getStorage()!)"));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: "\(request.getLoadEncoding()!)"));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: "\(request.getPassword()!)"));
        }
        if (request.getDestFileName() != nil) {
            queryItems.append(URLQueryItem(name: "destFileName", value: "\(request.getDestFileName()!)"));
        }
        if (request.getRevisionAuthor() != nil) {
            queryItems.append(URLQueryItem(name: "revisionAuthor", value: "\(request.getRevisionAuthor()!)"));
        }
        if (request.getRevisionDateTime() != nil) {
            queryItems.append(URLQueryItem(name: "revisionDateTime", value: "\(request.getRevisionDateTime()!)"));
        }
        
        urlBuilder.queryItems = queryItems;
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: nil,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: TableCellFormatResponse.self, from: response);
    }   
    
    public func updateTableProperties(request : UpdateTablePropertiesRequest) throws -> TablePropertiesResponse {
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent("/words/{name}/{nodePath}/tables/{index}/properties");
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: "\(request.getFolder()!)"));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: "\(request.getStorage()!)"));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: "\(request.getLoadEncoding()!)"));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: "\(request.getPassword()!)"));
        }
        if (request.getDestFileName() != nil) {
            queryItems.append(URLQueryItem(name: "destFileName", value: "\(request.getDestFileName()!)"));
        }
        if (request.getRevisionAuthor() != nil) {
            queryItems.append(URLQueryItem(name: "revisionAuthor", value: "\(request.getRevisionAuthor()!)"));
        }
        if (request.getRevisionDateTime() != nil) {
            queryItems.append(URLQueryItem(name: "revisionDateTime", value: "\(request.getRevisionDateTime()!)"));
        }
        
        urlBuilder.queryItems = queryItems;
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: nil,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: TablePropertiesResponse.self, from: response);
    }   
    
    public func updateTablePropertiesWithoutNodePath(request : UpdateTablePropertiesWithoutNodePathRequest) throws -> TablePropertiesResponse {
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent("/words/{name}/tables/{index}/properties");
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: "\(request.getFolder()!)"));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: "\(request.getStorage()!)"));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: "\(request.getLoadEncoding()!)"));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: "\(request.getPassword()!)"));
        }
        if (request.getDestFileName() != nil) {
            queryItems.append(URLQueryItem(name: "destFileName", value: "\(request.getDestFileName()!)"));
        }
        if (request.getRevisionAuthor() != nil) {
            queryItems.append(URLQueryItem(name: "revisionAuthor", value: "\(request.getRevisionAuthor()!)"));
        }
        if (request.getRevisionDateTime() != nil) {
            queryItems.append(URLQueryItem(name: "revisionDateTime", value: "\(request.getRevisionDateTime()!)"));
        }
        
        urlBuilder.queryItems = queryItems;
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: nil,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: TablePropertiesResponse.self, from: response);
    }   
    
    public func updateTableRowFormat(request : UpdateTableRowFormatRequest) throws -> TableRowFormatResponse {
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent("/words/{name}/{tablePath}/rows/{index}/rowformat");
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: "\(request.getFolder()!)"));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: "\(request.getStorage()!)"));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: "\(request.getLoadEncoding()!)"));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: "\(request.getPassword()!)"));
        }
        if (request.getDestFileName() != nil) {
            queryItems.append(URLQueryItem(name: "destFileName", value: "\(request.getDestFileName()!)"));
        }
        if (request.getRevisionAuthor() != nil) {
            queryItems.append(URLQueryItem(name: "revisionAuthor", value: "\(request.getRevisionAuthor()!)"));
        }
        if (request.getRevisionDateTime() != nil) {
            queryItems.append(URLQueryItem(name: "revisionDateTime", value: "\(request.getRevisionDateTime()!)"));
        }
        
        urlBuilder.queryItems = queryItems;
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: nil,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: TableRowFormatResponse.self, from: response);
    }   
    
    public func uploadFile(request : UploadFileRequest) throws -> FilesUploadResult {
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent("/words/storage/file/{path}");
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        
        if (request.getStorageName() != nil) {
            queryItems.append(URLQueryItem(name: "storageName", value: "\(request.getStorageName()!)"));
        }
        
        urlBuilder.queryItems = queryItems;
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: nil,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: FilesUploadResult.self, from: response);
    }   
}

