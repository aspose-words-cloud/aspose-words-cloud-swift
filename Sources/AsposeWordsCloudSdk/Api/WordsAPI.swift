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
        var rawPath = "/words/{name}/revisions/acceptAll";
        rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serialize(String.self, request.getName()));
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
        
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serialize(String.self, request.getFolder()!)));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serialize(String.self, request.getStorage()!)));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serialize(String.self, request.getLoadEncoding()!)));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serialize(String.self, request.getPassword()!)));
        }
        if (request.getDestFileName() != nil) {
            queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serialize(String.self, request.getDestFileName()!)));
        }
        urlBuilder.queryItems = queryItems;
        
        
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: ,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: RevisionsModificationResponse.self, from: response);
    }   
    
    public func appendDocument(request : AppendDocumentRequest) throws -> DocumentResponse {
        var rawPath = "/words/{name}/appendDocument";
        rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serialize(String.self, request.getName()));
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
        
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serialize(String.self, request.getFolder()!)));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serialize(String.self, request.getStorage()!)));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serialize(String.self, request.getLoadEncoding()!)));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serialize(String.self, request.getPassword()!)));
        }
        if (request.getDestFileName() != nil) {
            queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serialize(String.self, request.getDestFileName()!)));
        }
        if (request.getRevisionAuthor() != nil) {
            queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serialize(String.self, request.getRevisionAuthor()!)));
        }
        if (request.getRevisionDateTime() != nil) {
            queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serialize(String.self, request.getRevisionDateTime()!)));
        }
        urlBuilder.queryItems = queryItems;
        
        
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: ,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: DocumentResponse.self, from: response);
    }   
    
    public func classify(request : ClassifyRequest) throws -> ClassificationResponse {
        let rawPath = "/words/classify";
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
        
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        if (request.getBestClassesCount() != nil) {
            queryItems.append(URLQueryItem(name: "bestClassesCount", value: try ObjectSerializer.serialize(String.self, request.getBestClassesCount()!)));
        }
        urlBuilder.queryItems = queryItems;
        
        
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: ,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: ClassificationResponse.self, from: response);
    }   
    
    public func classifyDocument(request : ClassifyDocumentRequest) throws -> ClassificationResponse {
        var rawPath = "/words/{documentName}/classify";
        rawPath = rawPath.replacingOccurrences(of: "{documentName}", with: try ObjectSerializer.serialize(String.self, request.getDocumentName()));
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
        
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serialize(String.self, request.getFolder()!)));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serialize(String.self, request.getStorage()!)));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serialize(String.self, request.getLoadEncoding()!)));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serialize(String.self, request.getPassword()!)));
        }
        if (request.getBestClassesCount() != nil) {
            queryItems.append(URLQueryItem(name: "bestClassesCount", value: try ObjectSerializer.serialize(String.self, request.getBestClassesCount()!)));
        }
        if (request.getTaxonomy() != nil) {
            queryItems.append(URLQueryItem(name: "taxonomy", value: try ObjectSerializer.serialize(String.self, request.getTaxonomy()!)));
        }
        urlBuilder.queryItems = queryItems;
        
        
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: ,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: ClassificationResponse.self, from: response);
    }   
    
    public func compareDocument(request : CompareDocumentRequest) throws -> DocumentResponse {
        var rawPath = "/words/{name}/compareDocument";
        rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serialize(String.self, request.getName()));
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
        
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serialize(String.self, request.getFolder()!)));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serialize(String.self, request.getStorage()!)));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serialize(String.self, request.getLoadEncoding()!)));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serialize(String.self, request.getPassword()!)));
        }
        if (request.getDestFileName() != nil) {
            queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serialize(String.self, request.getDestFileName()!)));
        }
        urlBuilder.queryItems = queryItems;
        
        
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: ,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: DocumentResponse.self, from: response);
    }   
    
    public func convertDocument(request : ConvertDocumentRequest) throws -> URL {
        let rawPath = "/words/convert";
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
        
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        queryItems.append(URLQueryItem(name: "format", value: try ObjectSerializer.serialize(String.self, request.getFormat())));
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serialize(String.self, request.getStorage()!)));
        }
        if (request.getOutPath() != nil) {
            queryItems.append(URLQueryItem(name: "outPath", value: try ObjectSerializer.serialize(String.self, request.getOutPath()!)));
        }
        if (request.getFileNameFieldValue() != nil) {
            queryItems.append(URLQueryItem(name: "fileNameFieldValue", value: try ObjectSerializer.serialize(String.self, request.getFileNameFieldValue()!)));
        }
        if (request.getFontsLocation() != nil) {
            queryItems.append(URLQueryItem(name: "fontsLocation", value: try ObjectSerializer.serialize(String.self, request.getFontsLocation()!)));
        }
        urlBuilder.queryItems = queryItems;
        
        
        var formParams : Dictionary<String, Data>();
        formParams["document", try ObjectSerializer.serialize(URL.self, request.getDocument())];
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: ,
            headers: nil,
            formParams: formParams
        );
        return try ObjectSerializer.deserialize(type: URL.self, from: response);
    }   
    
    public func copyFile(request : CopyFileRequest) throws  {
        var rawPath = "/words/storage/file/copy/{srcPath}";
        rawPath = rawPath.replacingOccurrences(of: "{srcPath}", with: try ObjectSerializer.serialize(String.self, request.getSrcPath()));
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
        
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        queryItems.append(URLQueryItem(name: "destPath", value: try ObjectSerializer.serialize(String.self, request.getDestPath())));
        if (request.getSrcStorageName() != nil) {
            queryItems.append(URLQueryItem(name: "srcStorageName", value: try ObjectSerializer.serialize(String.self, request.getSrcStorageName()!)));
        }
        if (request.getDestStorageName() != nil) {
            queryItems.append(URLQueryItem(name: "destStorageName", value: try ObjectSerializer.serialize(String.self, request.getDestStorageName()!)));
        }
        if (request.getVersionId() != nil) {
            queryItems.append(URLQueryItem(name: "versionId", value: try ObjectSerializer.serialize(String.self, request.getVersionId()!)));
        }
        urlBuilder.queryItems = queryItems;
        
        
        
        _ = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: ,
            headers: nil,
            formParams: nil
        );
        
    }   
    
    public func copyFolder(request : CopyFolderRequest) throws  {
        var rawPath = "/words/storage/folder/copy/{srcPath}";
        rawPath = rawPath.replacingOccurrences(of: "{srcPath}", with: try ObjectSerializer.serialize(String.self, request.getSrcPath()));
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
        
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        queryItems.append(URLQueryItem(name: "destPath", value: try ObjectSerializer.serialize(String.self, request.getDestPath())));
        if (request.getSrcStorageName() != nil) {
            queryItems.append(URLQueryItem(name: "srcStorageName", value: try ObjectSerializer.serialize(String.self, request.getSrcStorageName()!)));
        }
        if (request.getDestStorageName() != nil) {
            queryItems.append(URLQueryItem(name: "destStorageName", value: try ObjectSerializer.serialize(String.self, request.getDestStorageName()!)));
        }
        urlBuilder.queryItems = queryItems;
        
        
        
        _ = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: ,
            headers: nil,
            formParams: nil
        );
        
    }   
    
    public func createDocument(request : CreateDocumentRequest) throws -> DocumentResponse {
        let rawPath = "/words/create";
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
        
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serialize(String.self, request.getStorage()!)));
        }
        if (request.getFileName() != nil) {
            queryItems.append(URLQueryItem(name: "fileName", value: try ObjectSerializer.serialize(String.self, request.getFileName()!)));
        }
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serialize(String.self, request.getFolder()!)));
        }
        urlBuilder.queryItems = queryItems;
        
        
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: ,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: DocumentResponse.self, from: response);
    }   
    
    public func createFolder(request : CreateFolderRequest) throws  {
        var rawPath = "/words/storage/folder/{path}";
        rawPath = rawPath.replacingOccurrences(of: "{path}", with: try ObjectSerializer.serialize(String.self, request.getPath()));
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
        
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        if (request.getStorageName() != nil) {
            queryItems.append(URLQueryItem(name: "storageName", value: try ObjectSerializer.serialize(String.self, request.getStorageName()!)));
        }
        urlBuilder.queryItems = queryItems;
        
        
        
        _ = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: ,
            headers: nil,
            formParams: nil
        );
        
    }   
    
    public func createOrUpdateDocumentProperty(request : CreateOrUpdateDocumentPropertyRequest) throws -> DocumentPropertyResponse {
        var rawPath = "/words/{name}/documentProperties/{propertyName}";
        rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serialize(String.self, request.getName()));
        rawPath = rawPath.replacingOccurrences(of: "{propertyName}", with: try ObjectSerializer.serialize(String.self, request.getPropertyName()));
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
        
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serialize(String.self, request.getFolder()!)));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serialize(String.self, request.getStorage()!)));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serialize(String.self, request.getLoadEncoding()!)));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serialize(String.self, request.getPassword()!)));
        }
        if (request.getDestFileName() != nil) {
            queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serialize(String.self, request.getDestFileName()!)));
        }
        if (request.getRevisionAuthor() != nil) {
            queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serialize(String.self, request.getRevisionAuthor()!)));
        }
        if (request.getRevisionDateTime() != nil) {
            queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serialize(String.self, request.getRevisionDateTime()!)));
        }
        urlBuilder.queryItems = queryItems;
        
        
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: ,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: DocumentPropertyResponse.self, from: response);
    }   
    
    public func deleteBorder(request : DeleteBorderRequest) throws -> BorderResponse {
        var rawPath = "/words/{name}/{nodePath}/borders/{borderType}";
        rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serialize(String.self, request.getName()));
        rawPath = rawPath.replacingOccurrences(of: "{nodePath}", with: try ObjectSerializer.serialize(String.self, request.getNodePath()));
        rawPath = rawPath.replacingOccurrences(of: "{borderType}", with: try ObjectSerializer.serialize(String.self, request.getBorderType()));
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
        
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serialize(String.self, request.getFolder()!)));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serialize(String.self, request.getStorage()!)));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serialize(String.self, request.getLoadEncoding()!)));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serialize(String.self, request.getPassword()!)));
        }
        if (request.getDestFileName() != nil) {
            queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serialize(String.self, request.getDestFileName()!)));
        }
        if (request.getRevisionAuthor() != nil) {
            queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serialize(String.self, request.getRevisionAuthor()!)));
        }
        if (request.getRevisionDateTime() != nil) {
            queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serialize(String.self, request.getRevisionDateTime()!)));
        }
        urlBuilder.queryItems = queryItems;
        
        
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: ,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: BorderResponse.self, from: response);
    }   
    
    public func deleteBorders(request : DeleteBordersRequest) throws -> BordersResponse {
        var rawPath = "/words/{name}/{nodePath}/borders";
        rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serialize(String.self, request.getName()));
        rawPath = rawPath.replacingOccurrences(of: "{nodePath}", with: try ObjectSerializer.serialize(String.self, request.getNodePath()));
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
        
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serialize(String.self, request.getFolder()!)));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serialize(String.self, request.getStorage()!)));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serialize(String.self, request.getLoadEncoding()!)));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serialize(String.self, request.getPassword()!)));
        }
        if (request.getDestFileName() != nil) {
            queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serialize(String.self, request.getDestFileName()!)));
        }
        if (request.getRevisionAuthor() != nil) {
            queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serialize(String.self, request.getRevisionAuthor()!)));
        }
        if (request.getRevisionDateTime() != nil) {
            queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serialize(String.self, request.getRevisionDateTime()!)));
        }
        urlBuilder.queryItems = queryItems;
        
        
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: ,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: BordersResponse.self, from: response);
    }   
    
    public func deleteComment(request : DeleteCommentRequest) throws  {
        var rawPath = "/words/{name}/comments/{commentIndex}";
        rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serialize(String.self, request.getName()));
        rawPath = rawPath.replacingOccurrences(of: "{commentIndex}", with: try ObjectSerializer.serialize(Int.self, request.getCommentIndex()));
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
        
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serialize(String.self, request.getFolder()!)));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serialize(String.self, request.getStorage()!)));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serialize(String.self, request.getLoadEncoding()!)));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serialize(String.self, request.getPassword()!)));
        }
        if (request.getDestFileName() != nil) {
            queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serialize(String.self, request.getDestFileName()!)));
        }
        if (request.getRevisionAuthor() != nil) {
            queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serialize(String.self, request.getRevisionAuthor()!)));
        }
        if (request.getRevisionDateTime() != nil) {
            queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serialize(String.self, request.getRevisionDateTime()!)));
        }
        urlBuilder.queryItems = queryItems;
        
        
        
        _ = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: ,
            headers: nil,
            formParams: nil
        );
        
    }   
    
    public func deleteDocumentProperty(request : DeleteDocumentPropertyRequest) throws  {
        var rawPath = "/words/{name}/documentProperties/{propertyName}";
        rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serialize(String.self, request.getName()));
        rawPath = rawPath.replacingOccurrences(of: "{propertyName}", with: try ObjectSerializer.serialize(String.self, request.getPropertyName()));
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
        
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serialize(String.self, request.getFolder()!)));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serialize(String.self, request.getStorage()!)));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serialize(String.self, request.getLoadEncoding()!)));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serialize(String.self, request.getPassword()!)));
        }
        if (request.getDestFileName() != nil) {
            queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serialize(String.self, request.getDestFileName()!)));
        }
        if (request.getRevisionAuthor() != nil) {
            queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serialize(String.self, request.getRevisionAuthor()!)));
        }
        if (request.getRevisionDateTime() != nil) {
            queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serialize(String.self, request.getRevisionDateTime()!)));
        }
        urlBuilder.queryItems = queryItems;
        
        
        
        _ = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: ,
            headers: nil,
            formParams: nil
        );
        
    }   
    
    public func deleteDrawingObject(request : DeleteDrawingObjectRequest) throws  {
        var rawPath = "/words/{name}/{nodePath}/drawingObjects/{index}";
        rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serialize(String.self, request.getName()));
        rawPath = rawPath.replacingOccurrences(of: "{nodePath}", with: try ObjectSerializer.serialize(String.self, request.getNodePath()));
        rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serialize(Int.self, request.getIndex()));
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
        
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serialize(String.self, request.getFolder()!)));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serialize(String.self, request.getStorage()!)));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serialize(String.self, request.getLoadEncoding()!)));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serialize(String.self, request.getPassword()!)));
        }
        if (request.getDestFileName() != nil) {
            queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serialize(String.self, request.getDestFileName()!)));
        }
        if (request.getRevisionAuthor() != nil) {
            queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serialize(String.self, request.getRevisionAuthor()!)));
        }
        if (request.getRevisionDateTime() != nil) {
            queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serialize(String.self, request.getRevisionDateTime()!)));
        }
        urlBuilder.queryItems = queryItems;
        
        
        
        _ = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: ,
            headers: nil,
            formParams: nil
        );
        
    }   
    
    public func deleteDrawingObjectWithoutNodePath(request : DeleteDrawingObjectWithoutNodePathRequest) throws  {
        var rawPath = "/words/{name}/drawingObjects/{index}";
        rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serialize(String.self, request.getName()));
        rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serialize(Int.self, request.getIndex()));
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
        
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serialize(String.self, request.getFolder()!)));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serialize(String.self, request.getStorage()!)));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serialize(String.self, request.getLoadEncoding()!)));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serialize(String.self, request.getPassword()!)));
        }
        if (request.getDestFileName() != nil) {
            queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serialize(String.self, request.getDestFileName()!)));
        }
        if (request.getRevisionAuthor() != nil) {
            queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serialize(String.self, request.getRevisionAuthor()!)));
        }
        if (request.getRevisionDateTime() != nil) {
            queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serialize(String.self, request.getRevisionDateTime()!)));
        }
        urlBuilder.queryItems = queryItems;
        
        
        
        _ = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: ,
            headers: nil,
            formParams: nil
        );
        
    }   
    
    public func deleteField(request : DeleteFieldRequest) throws  {
        var rawPath = "/words/{name}/{nodePath}/fields/{index}";
        rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serialize(String.self, request.getName()));
        rawPath = rawPath.replacingOccurrences(of: "{nodePath}", with: try ObjectSerializer.serialize(String.self, request.getNodePath()));
        rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serialize(Int.self, request.getIndex()));
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
        
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serialize(String.self, request.getFolder()!)));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serialize(String.self, request.getStorage()!)));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serialize(String.self, request.getLoadEncoding()!)));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serialize(String.self, request.getPassword()!)));
        }
        if (request.getDestFileName() != nil) {
            queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serialize(String.self, request.getDestFileName()!)));
        }
        if (request.getRevisionAuthor() != nil) {
            queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serialize(String.self, request.getRevisionAuthor()!)));
        }
        if (request.getRevisionDateTime() != nil) {
            queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serialize(String.self, request.getRevisionDateTime()!)));
        }
        urlBuilder.queryItems = queryItems;
        
        
        
        _ = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: ,
            headers: nil,
            formParams: nil
        );
        
    }   
    
    public func deleteFieldWithoutNodePath(request : DeleteFieldWithoutNodePathRequest) throws  {
        var rawPath = "/words/{name}/fields/{index}";
        rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serialize(String.self, request.getName()));
        rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serialize(Int.self, request.getIndex()));
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
        
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serialize(String.self, request.getFolder()!)));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serialize(String.self, request.getStorage()!)));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serialize(String.self, request.getLoadEncoding()!)));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serialize(String.self, request.getPassword()!)));
        }
        if (request.getDestFileName() != nil) {
            queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serialize(String.self, request.getDestFileName()!)));
        }
        if (request.getRevisionAuthor() != nil) {
            queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serialize(String.self, request.getRevisionAuthor()!)));
        }
        if (request.getRevisionDateTime() != nil) {
            queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serialize(String.self, request.getRevisionDateTime()!)));
        }
        urlBuilder.queryItems = queryItems;
        
        
        
        _ = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: ,
            headers: nil,
            formParams: nil
        );
        
    }   
    
    public func deleteFields(request : DeleteFieldsRequest) throws  {
        var rawPath = "/words/{name}/{nodePath}/fields";
        rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serialize(String.self, request.getName()));
        rawPath = rawPath.replacingOccurrences(of: "{nodePath}", with: try ObjectSerializer.serialize(String.self, request.getNodePath()));
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
        
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serialize(String.self, request.getFolder()!)));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serialize(String.self, request.getStorage()!)));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serialize(String.self, request.getLoadEncoding()!)));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serialize(String.self, request.getPassword()!)));
        }
        if (request.getDestFileName() != nil) {
            queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serialize(String.self, request.getDestFileName()!)));
        }
        if (request.getRevisionAuthor() != nil) {
            queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serialize(String.self, request.getRevisionAuthor()!)));
        }
        if (request.getRevisionDateTime() != nil) {
            queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serialize(String.self, request.getRevisionDateTime()!)));
        }
        urlBuilder.queryItems = queryItems;
        
        
        
        _ = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: ,
            headers: nil,
            formParams: nil
        );
        
    }   
    
    public func deleteFieldsWithoutNodePath(request : DeleteFieldsWithoutNodePathRequest) throws  {
        var rawPath = "/words/{name}/fields";
        rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serialize(String.self, request.getName()));
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
        
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serialize(String.self, request.getFolder()!)));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serialize(String.self, request.getStorage()!)));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serialize(String.self, request.getLoadEncoding()!)));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serialize(String.self, request.getPassword()!)));
        }
        if (request.getDestFileName() != nil) {
            queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serialize(String.self, request.getDestFileName()!)));
        }
        if (request.getRevisionAuthor() != nil) {
            queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serialize(String.self, request.getRevisionAuthor()!)));
        }
        if (request.getRevisionDateTime() != nil) {
            queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serialize(String.self, request.getRevisionDateTime()!)));
        }
        urlBuilder.queryItems = queryItems;
        
        
        
        _ = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: ,
            headers: nil,
            formParams: nil
        );
        
    }   
    
    public func deleteFile(request : DeleteFileRequest) throws  {
        var rawPath = "/words/storage/file/{path}";
        rawPath = rawPath.replacingOccurrences(of: "{path}", with: try ObjectSerializer.serialize(String.self, request.getPath()));
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
        
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        if (request.getStorageName() != nil) {
            queryItems.append(URLQueryItem(name: "storageName", value: try ObjectSerializer.serialize(String.self, request.getStorageName()!)));
        }
        if (request.getVersionId() != nil) {
            queryItems.append(URLQueryItem(name: "versionId", value: try ObjectSerializer.serialize(String.self, request.getVersionId()!)));
        }
        urlBuilder.queryItems = queryItems;
        
        
        
        _ = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: ,
            headers: nil,
            formParams: nil
        );
        
    }   
    
    public func deleteFolder(request : DeleteFolderRequest) throws  {
        var rawPath = "/words/storage/folder/{path}";
        rawPath = rawPath.replacingOccurrences(of: "{path}", with: try ObjectSerializer.serialize(String.self, request.getPath()));
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
        
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        if (request.getStorageName() != nil) {
            queryItems.append(URLQueryItem(name: "storageName", value: try ObjectSerializer.serialize(String.self, request.getStorageName()!)));
        }
        if (request.getRecursive() != nil) {
            queryItems.append(URLQueryItem(name: "recursive", value: try ObjectSerializer.serialize(Bool.self, request.getRecursive()!)));
        }
        urlBuilder.queryItems = queryItems;
        
        
        
        _ = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: ,
            headers: nil,
            formParams: nil
        );
        
    }   
    
    public func deleteFootnote(request : DeleteFootnoteRequest) throws  {
        var rawPath = "/words/{name}/{nodePath}/footnotes/{index}";
        rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serialize(String.self, request.getName()));
        rawPath = rawPath.replacingOccurrences(of: "{nodePath}", with: try ObjectSerializer.serialize(String.self, request.getNodePath()));
        rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serialize(Int.self, request.getIndex()));
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
        
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serialize(String.self, request.getFolder()!)));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serialize(String.self, request.getStorage()!)));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serialize(String.self, request.getLoadEncoding()!)));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serialize(String.self, request.getPassword()!)));
        }
        if (request.getDestFileName() != nil) {
            queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serialize(String.self, request.getDestFileName()!)));
        }
        if (request.getRevisionAuthor() != nil) {
            queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serialize(String.self, request.getRevisionAuthor()!)));
        }
        if (request.getRevisionDateTime() != nil) {
            queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serialize(String.self, request.getRevisionDateTime()!)));
        }
        urlBuilder.queryItems = queryItems;
        
        
        
        _ = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: ,
            headers: nil,
            formParams: nil
        );
        
    }   
    
    public func deleteFootnoteWithoutNodePath(request : DeleteFootnoteWithoutNodePathRequest) throws  {
        var rawPath = "/words/{name}/footnotes/{index}";
        rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serialize(String.self, request.getName()));
        rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serialize(Int.self, request.getIndex()));
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
        
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serialize(String.self, request.getFolder()!)));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serialize(String.self, request.getStorage()!)));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serialize(String.self, request.getLoadEncoding()!)));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serialize(String.self, request.getPassword()!)));
        }
        if (request.getDestFileName() != nil) {
            queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serialize(String.self, request.getDestFileName()!)));
        }
        if (request.getRevisionAuthor() != nil) {
            queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serialize(String.self, request.getRevisionAuthor()!)));
        }
        if (request.getRevisionDateTime() != nil) {
            queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serialize(String.self, request.getRevisionDateTime()!)));
        }
        urlBuilder.queryItems = queryItems;
        
        
        
        _ = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: ,
            headers: nil,
            formParams: nil
        );
        
    }   
    
    public func deleteFormField(request : DeleteFormFieldRequest) throws  {
        var rawPath = "/words/{name}/{nodePath}/formfields/{index}";
        rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serialize(String.self, request.getName()));
        rawPath = rawPath.replacingOccurrences(of: "{nodePath}", with: try ObjectSerializer.serialize(String.self, request.getNodePath()));
        rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serialize(Int.self, request.getIndex()));
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
        
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serialize(String.self, request.getFolder()!)));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serialize(String.self, request.getStorage()!)));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serialize(String.self, request.getLoadEncoding()!)));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serialize(String.self, request.getPassword()!)));
        }
        if (request.getDestFileName() != nil) {
            queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serialize(String.self, request.getDestFileName()!)));
        }
        if (request.getRevisionAuthor() != nil) {
            queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serialize(String.self, request.getRevisionAuthor()!)));
        }
        if (request.getRevisionDateTime() != nil) {
            queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serialize(String.self, request.getRevisionDateTime()!)));
        }
        urlBuilder.queryItems = queryItems;
        
        
        
        _ = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: ,
            headers: nil,
            formParams: nil
        );
        
    }   
    
    public func deleteFormFieldWithoutNodePath(request : DeleteFormFieldWithoutNodePathRequest) throws  {
        var rawPath = "/words/{name}/formfields/{index}";
        rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serialize(String.self, request.getName()));
        rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serialize(Int.self, request.getIndex()));
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
        
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serialize(String.self, request.getFolder()!)));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serialize(String.self, request.getStorage()!)));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serialize(String.self, request.getLoadEncoding()!)));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serialize(String.self, request.getPassword()!)));
        }
        if (request.getDestFileName() != nil) {
            queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serialize(String.self, request.getDestFileName()!)));
        }
        if (request.getRevisionAuthor() != nil) {
            queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serialize(String.self, request.getRevisionAuthor()!)));
        }
        if (request.getRevisionDateTime() != nil) {
            queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serialize(String.self, request.getRevisionDateTime()!)));
        }
        urlBuilder.queryItems = queryItems;
        
        
        
        _ = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: ,
            headers: nil,
            formParams: nil
        );
        
    }   
    
    public func deleteHeaderFooter(request : DeleteHeaderFooterRequest) throws  {
        var rawPath = "/words/{name}/{sectionPath}/headersfooters/{index}";
        rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serialize(String.self, request.getName()));
        rawPath = rawPath.replacingOccurrences(of: "{sectionPath}", with: try ObjectSerializer.serialize(String.self, request.getSectionPath()));
        rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serialize(Int.self, request.getIndex()));
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
        
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serialize(String.self, request.getFolder()!)));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serialize(String.self, request.getStorage()!)));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serialize(String.self, request.getLoadEncoding()!)));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serialize(String.self, request.getPassword()!)));
        }
        if (request.getDestFileName() != nil) {
            queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serialize(String.self, request.getDestFileName()!)));
        }
        if (request.getRevisionAuthor() != nil) {
            queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serialize(String.self, request.getRevisionAuthor()!)));
        }
        if (request.getRevisionDateTime() != nil) {
            queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serialize(String.self, request.getRevisionDateTime()!)));
        }
        urlBuilder.queryItems = queryItems;
        
        
        
        _ = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: ,
            headers: nil,
            formParams: nil
        );
        
    }   
    
    public func deleteHeadersFooters(request : DeleteHeadersFootersRequest) throws  {
        var rawPath = "/words/{name}/{sectionPath}/headersfooters";
        rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serialize(String.self, request.getName()));
        rawPath = rawPath.replacingOccurrences(of: "{sectionPath}", with: try ObjectSerializer.serialize(String.self, request.getSectionPath()));
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
        
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serialize(String.self, request.getFolder()!)));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serialize(String.self, request.getStorage()!)));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serialize(String.self, request.getLoadEncoding()!)));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serialize(String.self, request.getPassword()!)));
        }
        if (request.getDestFileName() != nil) {
            queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serialize(String.self, request.getDestFileName()!)));
        }
        if (request.getRevisionAuthor() != nil) {
            queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serialize(String.self, request.getRevisionAuthor()!)));
        }
        if (request.getRevisionDateTime() != nil) {
            queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serialize(String.self, request.getRevisionDateTime()!)));
        }
        if (request.getHeadersFootersTypes() != nil) {
            queryItems.append(URLQueryItem(name: "headersFootersTypes", value: try ObjectSerializer.serialize(String.self, request.getHeadersFootersTypes()!)));
        }
        urlBuilder.queryItems = queryItems;
        
        
        
        _ = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: ,
            headers: nil,
            formParams: nil
        );
        
    }   
    
    public func deleteMacros(request : DeleteMacrosRequest) throws  {
        var rawPath = "/words/{name}/macros";
        rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serialize(String.self, request.getName()));
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
        
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serialize(String.self, request.getFolder()!)));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serialize(String.self, request.getStorage()!)));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serialize(String.self, request.getLoadEncoding()!)));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serialize(String.self, request.getPassword()!)));
        }
        if (request.getDestFileName() != nil) {
            queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serialize(String.self, request.getDestFileName()!)));
        }
        if (request.getRevisionAuthor() != nil) {
            queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serialize(String.self, request.getRevisionAuthor()!)));
        }
        if (request.getRevisionDateTime() != nil) {
            queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serialize(String.self, request.getRevisionDateTime()!)));
        }
        urlBuilder.queryItems = queryItems;
        
        
        
        _ = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: ,
            headers: nil,
            formParams: nil
        );
        
    }   
    
    public func deleteOfficeMathObject(request : DeleteOfficeMathObjectRequest) throws  {
        var rawPath = "/words/{name}/{nodePath}/OfficeMathObjects/{index}";
        rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serialize(String.self, request.getName()));
        rawPath = rawPath.replacingOccurrences(of: "{nodePath}", with: try ObjectSerializer.serialize(String.self, request.getNodePath()));
        rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serialize(Int.self, request.getIndex()));
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
        
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serialize(String.self, request.getFolder()!)));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serialize(String.self, request.getStorage()!)));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serialize(String.self, request.getLoadEncoding()!)));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serialize(String.self, request.getPassword()!)));
        }
        if (request.getDestFileName() != nil) {
            queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serialize(String.self, request.getDestFileName()!)));
        }
        if (request.getRevisionAuthor() != nil) {
            queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serialize(String.self, request.getRevisionAuthor()!)));
        }
        if (request.getRevisionDateTime() != nil) {
            queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serialize(String.self, request.getRevisionDateTime()!)));
        }
        urlBuilder.queryItems = queryItems;
        
        
        
        _ = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: ,
            headers: nil,
            formParams: nil
        );
        
    }   
    
    public func deleteOfficeMathObjectWithoutNodePath(request : DeleteOfficeMathObjectWithoutNodePathRequest) throws  {
        var rawPath = "/words/{name}/OfficeMathObjects/{index}";
        rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serialize(String.self, request.getName()));
        rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serialize(Int.self, request.getIndex()));
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
        
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serialize(String.self, request.getFolder()!)));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serialize(String.self, request.getStorage()!)));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serialize(String.self, request.getLoadEncoding()!)));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serialize(String.self, request.getPassword()!)));
        }
        if (request.getDestFileName() != nil) {
            queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serialize(String.self, request.getDestFileName()!)));
        }
        if (request.getRevisionAuthor() != nil) {
            queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serialize(String.self, request.getRevisionAuthor()!)));
        }
        if (request.getRevisionDateTime() != nil) {
            queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serialize(String.self, request.getRevisionDateTime()!)));
        }
        urlBuilder.queryItems = queryItems;
        
        
        
        _ = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: ,
            headers: nil,
            formParams: nil
        );
        
    }   
    
    public func deleteParagraph(request : DeleteParagraphRequest) throws  {
        var rawPath = "/words/{name}/{nodePath}/paragraphs/{index}";
        rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serialize(String.self, request.getName()));
        rawPath = rawPath.replacingOccurrences(of: "{nodePath}", with: try ObjectSerializer.serialize(String.self, request.getNodePath()));
        rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serialize(Int.self, request.getIndex()));
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
        
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serialize(String.self, request.getFolder()!)));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serialize(String.self, request.getStorage()!)));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serialize(String.self, request.getLoadEncoding()!)));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serialize(String.self, request.getPassword()!)));
        }
        if (request.getDestFileName() != nil) {
            queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serialize(String.self, request.getDestFileName()!)));
        }
        if (request.getRevisionAuthor() != nil) {
            queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serialize(String.self, request.getRevisionAuthor()!)));
        }
        if (request.getRevisionDateTime() != nil) {
            queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serialize(String.self, request.getRevisionDateTime()!)));
        }
        urlBuilder.queryItems = queryItems;
        
        
        
        _ = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: ,
            headers: nil,
            formParams: nil
        );
        
    }   
    
    public func deleteParagraphWithoutNodePath(request : DeleteParagraphWithoutNodePathRequest) throws  {
        var rawPath = "/words/{name}/paragraphs/{index}";
        rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serialize(String.self, request.getName()));
        rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serialize(Int.self, request.getIndex()));
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
        
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serialize(String.self, request.getFolder()!)));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serialize(String.self, request.getStorage()!)));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serialize(String.self, request.getLoadEncoding()!)));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serialize(String.self, request.getPassword()!)));
        }
        if (request.getDestFileName() != nil) {
            queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serialize(String.self, request.getDestFileName()!)));
        }
        if (request.getRevisionAuthor() != nil) {
            queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serialize(String.self, request.getRevisionAuthor()!)));
        }
        if (request.getRevisionDateTime() != nil) {
            queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serialize(String.self, request.getRevisionDateTime()!)));
        }
        urlBuilder.queryItems = queryItems;
        
        
        
        _ = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: ,
            headers: nil,
            formParams: nil
        );
        
    }   
    
    public func deleteRun(request : DeleteRunRequest) throws  {
        var rawPath = "/words/{name}/{paragraphPath}/runs/{index}";
        rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serialize(String.self, request.getName()));
        rawPath = rawPath.replacingOccurrences(of: "{paragraphPath}", with: try ObjectSerializer.serialize(String.self, request.getParagraphPath()));
        rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serialize(Int.self, request.getIndex()));
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
        
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serialize(String.self, request.getFolder()!)));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serialize(String.self, request.getStorage()!)));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serialize(String.self, request.getLoadEncoding()!)));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serialize(String.self, request.getPassword()!)));
        }
        if (request.getDestFileName() != nil) {
            queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serialize(String.self, request.getDestFileName()!)));
        }
        if (request.getRevisionAuthor() != nil) {
            queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serialize(String.self, request.getRevisionAuthor()!)));
        }
        if (request.getRevisionDateTime() != nil) {
            queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serialize(String.self, request.getRevisionDateTime()!)));
        }
        urlBuilder.queryItems = queryItems;
        
        
        
        _ = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: ,
            headers: nil,
            formParams: nil
        );
        
    }   
    
    public func deleteSection(request : DeleteSectionRequest) throws  {
        var rawPath = "/words/{name}/sections/{sectionIndex}";
        rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serialize(String.self, request.getName()));
        rawPath = rawPath.replacingOccurrences(of: "{sectionIndex}", with: try ObjectSerializer.serialize(Int.self, request.getSectionIndex()));
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
        
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serialize(String.self, request.getFolder()!)));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serialize(String.self, request.getStorage()!)));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serialize(String.self, request.getLoadEncoding()!)));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serialize(String.self, request.getPassword()!)));
        }
        if (request.getDestFileName() != nil) {
            queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serialize(String.self, request.getDestFileName()!)));
        }
        if (request.getRevisionAuthor() != nil) {
            queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serialize(String.self, request.getRevisionAuthor()!)));
        }
        if (request.getRevisionDateTime() != nil) {
            queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serialize(String.self, request.getRevisionDateTime()!)));
        }
        urlBuilder.queryItems = queryItems;
        
        
        
        _ = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: ,
            headers: nil,
            formParams: nil
        );
        
    }   
    
    public func deleteTable(request : DeleteTableRequest) throws  {
        var rawPath = "/words/{name}/{nodePath}/tables/{index}";
        rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serialize(String.self, request.getName()));
        rawPath = rawPath.replacingOccurrences(of: "{nodePath}", with: try ObjectSerializer.serialize(String.self, request.getNodePath()));
        rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serialize(Int.self, request.getIndex()));
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
        
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serialize(String.self, request.getFolder()!)));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serialize(String.self, request.getStorage()!)));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serialize(String.self, request.getLoadEncoding()!)));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serialize(String.self, request.getPassword()!)));
        }
        if (request.getDestFileName() != nil) {
            queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serialize(String.self, request.getDestFileName()!)));
        }
        if (request.getRevisionAuthor() != nil) {
            queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serialize(String.self, request.getRevisionAuthor()!)));
        }
        if (request.getRevisionDateTime() != nil) {
            queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serialize(String.self, request.getRevisionDateTime()!)));
        }
        urlBuilder.queryItems = queryItems;
        
        
        
        _ = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: ,
            headers: nil,
            formParams: nil
        );
        
    }   
    
    public func deleteTableCell(request : DeleteTableCellRequest) throws  {
        var rawPath = "/words/{name}/{tableRowPath}/cells/{index}";
        rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serialize(String.self, request.getName()));
        rawPath = rawPath.replacingOccurrences(of: "{tableRowPath}", with: try ObjectSerializer.serialize(String.self, request.getTableRowPath()));
        rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serialize(Int.self, request.getIndex()));
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
        
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serialize(String.self, request.getFolder()!)));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serialize(String.self, request.getStorage()!)));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serialize(String.self, request.getLoadEncoding()!)));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serialize(String.self, request.getPassword()!)));
        }
        if (request.getDestFileName() != nil) {
            queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serialize(String.self, request.getDestFileName()!)));
        }
        if (request.getRevisionAuthor() != nil) {
            queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serialize(String.self, request.getRevisionAuthor()!)));
        }
        if (request.getRevisionDateTime() != nil) {
            queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serialize(String.self, request.getRevisionDateTime()!)));
        }
        urlBuilder.queryItems = queryItems;
        
        
        
        _ = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: ,
            headers: nil,
            formParams: nil
        );
        
    }   
    
    public func deleteTableRow(request : DeleteTableRowRequest) throws  {
        var rawPath = "/words/{name}/{tablePath}/rows/{index}";
        rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serialize(String.self, request.getName()));
        rawPath = rawPath.replacingOccurrences(of: "{tablePath}", with: try ObjectSerializer.serialize(String.self, request.getTablePath()));
        rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serialize(Int.self, request.getIndex()));
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
        
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serialize(String.self, request.getFolder()!)));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serialize(String.self, request.getStorage()!)));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serialize(String.self, request.getLoadEncoding()!)));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serialize(String.self, request.getPassword()!)));
        }
        if (request.getDestFileName() != nil) {
            queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serialize(String.self, request.getDestFileName()!)));
        }
        if (request.getRevisionAuthor() != nil) {
            queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serialize(String.self, request.getRevisionAuthor()!)));
        }
        if (request.getRevisionDateTime() != nil) {
            queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serialize(String.self, request.getRevisionDateTime()!)));
        }
        urlBuilder.queryItems = queryItems;
        
        
        
        _ = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: ,
            headers: nil,
            formParams: nil
        );
        
    }   
    
    public func deleteTableWithoutNodePath(request : DeleteTableWithoutNodePathRequest) throws  {
        var rawPath = "/words/{name}/tables/{index}";
        rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serialize(String.self, request.getName()));
        rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serialize(Int.self, request.getIndex()));
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
        
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serialize(String.self, request.getFolder()!)));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serialize(String.self, request.getStorage()!)));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serialize(String.self, request.getLoadEncoding()!)));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serialize(String.self, request.getPassword()!)));
        }
        if (request.getDestFileName() != nil) {
            queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serialize(String.self, request.getDestFileName()!)));
        }
        if (request.getRevisionAuthor() != nil) {
            queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serialize(String.self, request.getRevisionAuthor()!)));
        }
        if (request.getRevisionDateTime() != nil) {
            queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serialize(String.self, request.getRevisionDateTime()!)));
        }
        urlBuilder.queryItems = queryItems;
        
        
        
        _ = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: ,
            headers: nil,
            formParams: nil
        );
        
    }   
    
    public func deleteWatermark(request : DeleteWatermarkRequest) throws -> DocumentResponse {
        var rawPath = "/words/{name}/watermarks/deleteLast";
        rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serialize(String.self, request.getName()));
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
        
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serialize(String.self, request.getFolder()!)));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serialize(String.self, request.getStorage()!)));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serialize(String.self, request.getLoadEncoding()!)));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serialize(String.self, request.getPassword()!)));
        }
        if (request.getDestFileName() != nil) {
            queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serialize(String.self, request.getDestFileName()!)));
        }
        if (request.getRevisionAuthor() != nil) {
            queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serialize(String.self, request.getRevisionAuthor()!)));
        }
        if (request.getRevisionDateTime() != nil) {
            queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serialize(String.self, request.getRevisionDateTime()!)));
        }
        urlBuilder.queryItems = queryItems;
        
        
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: ,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: DocumentResponse.self, from: response);
    }   
    
    public func downloadFile(request : DownloadFileRequest) throws -> URL {
        var rawPath = "/words/storage/file/{path}";
        rawPath = rawPath.replacingOccurrences(of: "{path}", with: try ObjectSerializer.serialize(String.self, request.getPath()));
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
        
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        if (request.getStorageName() != nil) {
            queryItems.append(URLQueryItem(name: "storageName", value: try ObjectSerializer.serialize(String.self, request.getStorageName()!)));
        }
        if (request.getVersionId() != nil) {
            queryItems.append(URLQueryItem(name: "versionId", value: try ObjectSerializer.serialize(String.self, request.getVersionId()!)));
        }
        urlBuilder.queryItems = queryItems;
        
        
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: ,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: URL.self, from: response);
    }   
    
    public func executeMailMerge(request : ExecuteMailMergeRequest) throws -> DocumentResponse {
        var rawPath = "/words/{name}/MailMerge";
        rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serialize(String.self, request.getName()));
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
        
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serialize(String.self, request.getFolder()!)));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serialize(String.self, request.getStorage()!)));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serialize(String.self, request.getLoadEncoding()!)));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serialize(String.self, request.getPassword()!)));
        }
        if (request.getWithRegions() != nil) {
            queryItems.append(URLQueryItem(name: "withRegions", value: try ObjectSerializer.serialize(Bool.self, request.getWithRegions()!)));
        }
        if (request.getMailMergeDataFile() != nil) {
            queryItems.append(URLQueryItem(name: "mailMergeDataFile", value: try ObjectSerializer.serialize(String.self, request.getMailMergeDataFile()!)));
        }
        if (request.getCleanup() != nil) {
            queryItems.append(URLQueryItem(name: "cleanup", value: try ObjectSerializer.serialize(String.self, request.getCleanup()!)));
        }
        if (request.getUseWholeParagraphAsRegion() != nil) {
            queryItems.append(URLQueryItem(name: "useWholeParagraphAsRegion", value: try ObjectSerializer.serialize(Bool.self, request.getUseWholeParagraphAsRegion()!)));
        }
        if (request.getDestFileName() != nil) {
            queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serialize(String.self, request.getDestFileName()!)));
        }
        urlBuilder.queryItems = queryItems;
        
        
        var formParams : Dictionary<String, Data>();
        if (request.getData() != nil) {
            formParams["data", try ObjectSerializer.serialize(String.self, request.getData()!)];
        }
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: ,
            headers: nil,
            formParams: formParams
        );
        return try ObjectSerializer.deserialize(type: DocumentResponse.self, from: response);
    }   
    
    public func executeMailMergeOnline(request : ExecuteMailMergeOnlineRequest) throws -> URL {
        let rawPath = "/words/MailMerge";
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
        
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        if (request.getWithRegions() != nil) {
            queryItems.append(URLQueryItem(name: "withRegions", value: try ObjectSerializer.serialize(Bool.self, request.getWithRegions()!)));
        }
        if (request.getCleanup() != nil) {
            queryItems.append(URLQueryItem(name: "cleanup", value: try ObjectSerializer.serialize(String.self, request.getCleanup()!)));
        }
        if (request.getDocumentFileName() != nil) {
            queryItems.append(URLQueryItem(name: "documentFileName", value: try ObjectSerializer.serialize(String.self, request.getDocumentFileName()!)));
        }
        urlBuilder.queryItems = queryItems;
        
        
        var formParams : Dictionary<String, Data>();
        formParams["template", try ObjectSerializer.serialize(URL.self, request.getTemplate())];
        formParams["data", try ObjectSerializer.serialize(URL.self, request.getData())];
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: ,
            headers: nil,
            formParams: formParams
        );
        return try ObjectSerializer.deserialize(type: URL.self, from: response);
    }   
    
    public func getAvailableFonts(request : GetAvailableFontsRequest) throws -> AvailableFontsResponse {
        let rawPath = "/words/fonts/available";
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
        
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        if (request.getFontsLocation() != nil) {
            queryItems.append(URLQueryItem(name: "fontsLocation", value: try ObjectSerializer.serialize(String.self, request.getFontsLocation()!)));
        }
        urlBuilder.queryItems = queryItems;
        
        
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: ,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: AvailableFontsResponse.self, from: response);
    }   
    
    public func getBookmarkByName(request : GetBookmarkByNameRequest) throws -> BookmarkResponse {
        var rawPath = "/words/{name}/bookmarks/{bookmarkName}";
        rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serialize(String.self, request.getName()));
        rawPath = rawPath.replacingOccurrences(of: "{bookmarkName}", with: try ObjectSerializer.serialize(String.self, request.getBookmarkName()));
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
        
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serialize(String.self, request.getFolder()!)));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serialize(String.self, request.getStorage()!)));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serialize(String.self, request.getLoadEncoding()!)));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serialize(String.self, request.getPassword()!)));
        }
        urlBuilder.queryItems = queryItems;
        
        
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: ,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: BookmarkResponse.self, from: response);
    }   
    
    public func getBookmarks(request : GetBookmarksRequest) throws -> BookmarksResponse {
        var rawPath = "/words/{name}/bookmarks";
        rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serialize(String.self, request.getName()));
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
        
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serialize(String.self, request.getFolder()!)));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serialize(String.self, request.getStorage()!)));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serialize(String.self, request.getLoadEncoding()!)));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serialize(String.self, request.getPassword()!)));
        }
        urlBuilder.queryItems = queryItems;
        
        
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: ,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: BookmarksResponse.self, from: response);
    }   
    
    public func getBorder(request : GetBorderRequest) throws -> BorderResponse {
        var rawPath = "/words/{name}/{nodePath}/borders/{borderType}";
        rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serialize(String.self, request.getName()));
        rawPath = rawPath.replacingOccurrences(of: "{nodePath}", with: try ObjectSerializer.serialize(String.self, request.getNodePath()));
        rawPath = rawPath.replacingOccurrences(of: "{borderType}", with: try ObjectSerializer.serialize(String.self, request.getBorderType()));
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
        
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serialize(String.self, request.getFolder()!)));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serialize(String.self, request.getStorage()!)));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serialize(String.self, request.getLoadEncoding()!)));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serialize(String.self, request.getPassword()!)));
        }
        urlBuilder.queryItems = queryItems;
        
        
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: ,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: BorderResponse.self, from: response);
    }   
    
    public func getBorders(request : GetBordersRequest) throws -> BordersResponse {
        var rawPath = "/words/{name}/{nodePath}/borders";
        rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serialize(String.self, request.getName()));
        rawPath = rawPath.replacingOccurrences(of: "{nodePath}", with: try ObjectSerializer.serialize(String.self, request.getNodePath()));
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
        
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serialize(String.self, request.getFolder()!)));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serialize(String.self, request.getStorage()!)));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serialize(String.self, request.getLoadEncoding()!)));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serialize(String.self, request.getPassword()!)));
        }
        urlBuilder.queryItems = queryItems;
        
        
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: ,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: BordersResponse.self, from: response);
    }   
    
    public func getComment(request : GetCommentRequest) throws -> CommentResponse {
        var rawPath = "/words/{name}/comments/{commentIndex}";
        rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serialize(String.self, request.getName()));
        rawPath = rawPath.replacingOccurrences(of: "{commentIndex}", with: try ObjectSerializer.serialize(Int.self, request.getCommentIndex()));
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
        
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serialize(String.self, request.getFolder()!)));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serialize(String.self, request.getStorage()!)));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serialize(String.self, request.getLoadEncoding()!)));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serialize(String.self, request.getPassword()!)));
        }
        urlBuilder.queryItems = queryItems;
        
        
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: ,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: CommentResponse.self, from: response);
    }   
    
    public func getComments(request : GetCommentsRequest) throws -> CommentsResponse {
        var rawPath = "/words/{name}/comments";
        rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serialize(String.self, request.getName()));
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
        
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serialize(String.self, request.getFolder()!)));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serialize(String.self, request.getStorage()!)));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serialize(String.self, request.getLoadEncoding()!)));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serialize(String.self, request.getPassword()!)));
        }
        urlBuilder.queryItems = queryItems;
        
        
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: ,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: CommentsResponse.self, from: response);
    }   
    
    public func getDocument(request : GetDocumentRequest) throws -> DocumentResponse {
        var rawPath = "/words/{documentName}";
        rawPath = rawPath.replacingOccurrences(of: "{documentName}", with: try ObjectSerializer.serialize(String.self, request.getDocumentName()));
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
        
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serialize(String.self, request.getFolder()!)));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serialize(String.self, request.getStorage()!)));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serialize(String.self, request.getLoadEncoding()!)));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serialize(String.self, request.getPassword()!)));
        }
        urlBuilder.queryItems = queryItems;
        
        
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: ,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: DocumentResponse.self, from: response);
    }   
    
    public func getDocumentDrawingObjectByIndex(request : GetDocumentDrawingObjectByIndexRequest) throws -> DrawingObjectResponse {
        var rawPath = "/words/{name}/{nodePath}/drawingObjects/{index}";
        rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serialize(String.self, request.getName()));
        rawPath = rawPath.replacingOccurrences(of: "{nodePath}", with: try ObjectSerializer.serialize(String.self, request.getNodePath()));
        rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serialize(Int.self, request.getIndex()));
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
        
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serialize(String.self, request.getFolder()!)));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serialize(String.self, request.getStorage()!)));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serialize(String.self, request.getLoadEncoding()!)));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serialize(String.self, request.getPassword()!)));
        }
        urlBuilder.queryItems = queryItems;
        
        
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: ,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: DrawingObjectResponse.self, from: response);
    }   
    
    public func getDocumentDrawingObjectByIndexWithoutNodePath(request : GetDocumentDrawingObjectByIndexWithoutNodePathRequest) throws -> DrawingObjectResponse {
        var rawPath = "/words/{name}/drawingObjects/{index}";
        rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serialize(String.self, request.getName()));
        rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serialize(Int.self, request.getIndex()));
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
        
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serialize(String.self, request.getFolder()!)));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serialize(String.self, request.getStorage()!)));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serialize(String.self, request.getLoadEncoding()!)));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serialize(String.self, request.getPassword()!)));
        }
        urlBuilder.queryItems = queryItems;
        
        
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: ,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: DrawingObjectResponse.self, from: response);
    }   
    
    public func getDocumentDrawingObjectImageData(request : GetDocumentDrawingObjectImageDataRequest) throws -> URL {
        var rawPath = "/words/{name}/{nodePath}/drawingObjects/{index}/imageData";
        rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serialize(String.self, request.getName()));
        rawPath = rawPath.replacingOccurrences(of: "{nodePath}", with: try ObjectSerializer.serialize(String.self, request.getNodePath()));
        rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serialize(Int.self, request.getIndex()));
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
        
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serialize(String.self, request.getFolder()!)));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serialize(String.self, request.getStorage()!)));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serialize(String.self, request.getLoadEncoding()!)));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serialize(String.self, request.getPassword()!)));
        }
        urlBuilder.queryItems = queryItems;
        
        
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: ,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: URL.self, from: response);
    }   
    
    public func getDocumentDrawingObjectImageDataWithoutNodePath(request : GetDocumentDrawingObjectImageDataWithoutNodePathRequest) throws -> URL {
        var rawPath = "/words/{name}/drawingObjects/{index}/imageData";
        rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serialize(String.self, request.getName()));
        rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serialize(Int.self, request.getIndex()));
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
        
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serialize(String.self, request.getFolder()!)));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serialize(String.self, request.getStorage()!)));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serialize(String.self, request.getLoadEncoding()!)));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serialize(String.self, request.getPassword()!)));
        }
        urlBuilder.queryItems = queryItems;
        
        
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: ,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: URL.self, from: response);
    }   
    
    public func getDocumentDrawingObjectOleData(request : GetDocumentDrawingObjectOleDataRequest) throws -> URL {
        var rawPath = "/words/{name}/{nodePath}/drawingObjects/{index}/oleData";
        rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serialize(String.self, request.getName()));
        rawPath = rawPath.replacingOccurrences(of: "{nodePath}", with: try ObjectSerializer.serialize(String.self, request.getNodePath()));
        rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serialize(Int.self, request.getIndex()));
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
        
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serialize(String.self, request.getFolder()!)));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serialize(String.self, request.getStorage()!)));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serialize(String.self, request.getLoadEncoding()!)));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serialize(String.self, request.getPassword()!)));
        }
        urlBuilder.queryItems = queryItems;
        
        
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: ,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: URL.self, from: response);
    }   
    
    public func getDocumentDrawingObjectOleDataWithoutNodePath(request : GetDocumentDrawingObjectOleDataWithoutNodePathRequest) throws -> URL {
        var rawPath = "/words/{name}/drawingObjects/{index}/oleData";
        rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serialize(String.self, request.getName()));
        rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serialize(Int.self, request.getIndex()));
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
        
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serialize(String.self, request.getFolder()!)));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serialize(String.self, request.getStorage()!)));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serialize(String.self, request.getLoadEncoding()!)));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serialize(String.self, request.getPassword()!)));
        }
        urlBuilder.queryItems = queryItems;
        
        
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: ,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: URL.self, from: response);
    }   
    
    public func getDocumentDrawingObjects(request : GetDocumentDrawingObjectsRequest) throws -> DrawingObjectsResponse {
        var rawPath = "/words/{name}/{nodePath}/drawingObjects";
        rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serialize(String.self, request.getName()));
        rawPath = rawPath.replacingOccurrences(of: "{nodePath}", with: try ObjectSerializer.serialize(String.self, request.getNodePath()));
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
        
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serialize(String.self, request.getFolder()!)));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serialize(String.self, request.getStorage()!)));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serialize(String.self, request.getLoadEncoding()!)));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serialize(String.self, request.getPassword()!)));
        }
        urlBuilder.queryItems = queryItems;
        
        
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: ,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: DrawingObjectsResponse.self, from: response);
    }   
    
    public func getDocumentDrawingObjectsWithoutNodePath(request : GetDocumentDrawingObjectsWithoutNodePathRequest) throws -> DrawingObjectsResponse {
        var rawPath = "/words/{name}/drawingObjects";
        rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serialize(String.self, request.getName()));
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
        
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serialize(String.self, request.getFolder()!)));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serialize(String.self, request.getStorage()!)));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serialize(String.self, request.getLoadEncoding()!)));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serialize(String.self, request.getPassword()!)));
        }
        urlBuilder.queryItems = queryItems;
        
        
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: ,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: DrawingObjectsResponse.self, from: response);
    }   
    
    public func getDocumentFieldNames(request : GetDocumentFieldNamesRequest) throws -> FieldNamesResponse {
        var rawPath = "/words/{name}/mailMerge/FieldNames";
        rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serialize(String.self, request.getName()));
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
        
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serialize(String.self, request.getFolder()!)));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serialize(String.self, request.getStorage()!)));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serialize(String.self, request.getLoadEncoding()!)));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serialize(String.self, request.getPassword()!)));
        }
        if (request.getUseNonMergeFields() != nil) {
            queryItems.append(URLQueryItem(name: "useNonMergeFields", value: try ObjectSerializer.serialize(Bool.self, request.getUseNonMergeFields()!)));
        }
        urlBuilder.queryItems = queryItems;
        
        
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: ,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: FieldNamesResponse.self, from: response);
    }   
    
    public func getDocumentFieldNamesOnline(request : GetDocumentFieldNamesOnlineRequest) throws -> FieldNamesResponse {
        let rawPath = "/words/mailMerge/FieldNames";
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
        
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        if (request.getUseNonMergeFields() != nil) {
            queryItems.append(URLQueryItem(name: "useNonMergeFields", value: try ObjectSerializer.serialize(Bool.self, request.getUseNonMergeFields()!)));
        }
        urlBuilder.queryItems = queryItems;
        
        
        var formParams : Dictionary<String, Data>();
        formParams["template", try ObjectSerializer.serialize(URL.self, request.getTemplate())];
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: ,
            headers: nil,
            formParams: formParams
        );
        return try ObjectSerializer.deserialize(type: FieldNamesResponse.self, from: response);
    }   
    
    public func getDocumentHyperlinkByIndex(request : GetDocumentHyperlinkByIndexRequest) throws -> HyperlinkResponse {
        var rawPath = "/words/{name}/hyperlinks/{hyperlinkIndex}";
        rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serialize(String.self, request.getName()));
        rawPath = rawPath.replacingOccurrences(of: "{hyperlinkIndex}", with: try ObjectSerializer.serialize(Int.self, request.getHyperlinkIndex()));
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
        
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serialize(String.self, request.getFolder()!)));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serialize(String.self, request.getStorage()!)));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serialize(String.self, request.getLoadEncoding()!)));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serialize(String.self, request.getPassword()!)));
        }
        urlBuilder.queryItems = queryItems;
        
        
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: ,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: HyperlinkResponse.self, from: response);
    }   
    
    public func getDocumentHyperlinks(request : GetDocumentHyperlinksRequest) throws -> HyperlinksResponse {
        var rawPath = "/words/{name}/hyperlinks";
        rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serialize(String.self, request.getName()));
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
        
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serialize(String.self, request.getFolder()!)));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serialize(String.self, request.getStorage()!)));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serialize(String.self, request.getLoadEncoding()!)));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serialize(String.self, request.getPassword()!)));
        }
        urlBuilder.queryItems = queryItems;
        
        
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: ,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: HyperlinksResponse.self, from: response);
    }   
    
    public func getDocumentProperties(request : GetDocumentPropertiesRequest) throws -> DocumentPropertiesResponse {
        var rawPath = "/words/{name}/documentProperties";
        rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serialize(String.self, request.getName()));
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
        
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serialize(String.self, request.getFolder()!)));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serialize(String.self, request.getStorage()!)));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serialize(String.self, request.getLoadEncoding()!)));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serialize(String.self, request.getPassword()!)));
        }
        urlBuilder.queryItems = queryItems;
        
        
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: ,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: DocumentPropertiesResponse.self, from: response);
    }   
    
    public func getDocumentProperty(request : GetDocumentPropertyRequest) throws -> DocumentPropertyResponse {
        var rawPath = "/words/{name}/documentProperties/{propertyName}";
        rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serialize(String.self, request.getName()));
        rawPath = rawPath.replacingOccurrences(of: "{propertyName}", with: try ObjectSerializer.serialize(String.self, request.getPropertyName()));
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
        
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serialize(String.self, request.getFolder()!)));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serialize(String.self, request.getStorage()!)));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serialize(String.self, request.getLoadEncoding()!)));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serialize(String.self, request.getPassword()!)));
        }
        urlBuilder.queryItems = queryItems;
        
        
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: ,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: DocumentPropertyResponse.self, from: response);
    }   
    
    public func getDocumentProtection(request : GetDocumentProtectionRequest) throws -> ProtectionDataResponse {
        var rawPath = "/words/{name}/protection";
        rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serialize(String.self, request.getName()));
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
        
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serialize(String.self, request.getFolder()!)));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serialize(String.self, request.getStorage()!)));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serialize(String.self, request.getLoadEncoding()!)));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serialize(String.self, request.getPassword()!)));
        }
        urlBuilder.queryItems = queryItems;
        
        
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: ,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: ProtectionDataResponse.self, from: response);
    }   
    
    public func getDocumentStatistics(request : GetDocumentStatisticsRequest) throws -> StatDataResponse {
        var rawPath = "/words/{name}/statistics";
        rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serialize(String.self, request.getName()));
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
        
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serialize(String.self, request.getFolder()!)));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serialize(String.self, request.getStorage()!)));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serialize(String.self, request.getLoadEncoding()!)));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serialize(String.self, request.getPassword()!)));
        }
        if (request.getIncludeComments() != nil) {
            queryItems.append(URLQueryItem(name: "includeComments", value: try ObjectSerializer.serialize(Bool.self, request.getIncludeComments()!)));
        }
        if (request.getIncludeFootnotes() != nil) {
            queryItems.append(URLQueryItem(name: "includeFootnotes", value: try ObjectSerializer.serialize(Bool.self, request.getIncludeFootnotes()!)));
        }
        if (request.getIncludeTextInShapes() != nil) {
            queryItems.append(URLQueryItem(name: "includeTextInShapes", value: try ObjectSerializer.serialize(Bool.self, request.getIncludeTextInShapes()!)));
        }
        urlBuilder.queryItems = queryItems;
        
        
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: ,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: StatDataResponse.self, from: response);
    }   
    
    public func getDocumentWithFormat(request : GetDocumentWithFormatRequest) throws -> URL {
        var rawPath = "/words/{name}";
        rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serialize(String.self, request.getName()));
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
        
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        queryItems.append(URLQueryItem(name: "format", value: try ObjectSerializer.serialize(String.self, request.getFormat())));
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serialize(String.self, request.getFolder()!)));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serialize(String.self, request.getStorage()!)));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serialize(String.self, request.getLoadEncoding()!)));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serialize(String.self, request.getPassword()!)));
        }
        if (request.getOutPath() != nil) {
            queryItems.append(URLQueryItem(name: "outPath", value: try ObjectSerializer.serialize(String.self, request.getOutPath()!)));
        }
        if (request.getFontsLocation() != nil) {
            queryItems.append(URLQueryItem(name: "fontsLocation", value: try ObjectSerializer.serialize(String.self, request.getFontsLocation()!)));
        }
        urlBuilder.queryItems = queryItems;
        
        
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: ,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: URL.self, from: response);
    }   
    
    public func getField(request : GetFieldRequest) throws -> FieldResponse {
        var rawPath = "/words/{name}/{nodePath}/fields/{index}";
        rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serialize(String.self, request.getName()));
        rawPath = rawPath.replacingOccurrences(of: "{nodePath}", with: try ObjectSerializer.serialize(String.self, request.getNodePath()));
        rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serialize(Int.self, request.getIndex()));
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
        
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serialize(String.self, request.getFolder()!)));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serialize(String.self, request.getStorage()!)));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serialize(String.self, request.getLoadEncoding()!)));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serialize(String.self, request.getPassword()!)));
        }
        urlBuilder.queryItems = queryItems;
        
        
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: ,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: FieldResponse.self, from: response);
    }   
    
    public func getFieldWithoutNodePath(request : GetFieldWithoutNodePathRequest) throws -> FieldResponse {
        var rawPath = "/words/{name}/fields/{index}";
        rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serialize(String.self, request.getName()));
        rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serialize(Int.self, request.getIndex()));
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
        
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serialize(String.self, request.getFolder()!)));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serialize(String.self, request.getStorage()!)));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serialize(String.self, request.getLoadEncoding()!)));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serialize(String.self, request.getPassword()!)));
        }
        urlBuilder.queryItems = queryItems;
        
        
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: ,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: FieldResponse.self, from: response);
    }   
    
    public func getFields(request : GetFieldsRequest) throws -> FieldsResponse {
        var rawPath = "/words/{name}/{nodePath}/fields";
        rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serialize(String.self, request.getName()));
        rawPath = rawPath.replacingOccurrences(of: "{nodePath}", with: try ObjectSerializer.serialize(String.self, request.getNodePath()));
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
        
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serialize(String.self, request.getFolder()!)));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serialize(String.self, request.getStorage()!)));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serialize(String.self, request.getLoadEncoding()!)));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serialize(String.self, request.getPassword()!)));
        }
        urlBuilder.queryItems = queryItems;
        
        
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: ,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: FieldsResponse.self, from: response);
    }   
    
    public func getFieldsWithoutNodePath(request : GetFieldsWithoutNodePathRequest) throws -> FieldsResponse {
        var rawPath = "/words/{name}/fields";
        rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serialize(String.self, request.getName()));
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
        
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serialize(String.self, request.getFolder()!)));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serialize(String.self, request.getStorage()!)));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serialize(String.self, request.getLoadEncoding()!)));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serialize(String.self, request.getPassword()!)));
        }
        urlBuilder.queryItems = queryItems;
        
        
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: ,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: FieldsResponse.self, from: response);
    }   
    
    public func getFilesList(request : GetFilesListRequest) throws -> FilesList {
        var rawPath = "/words/storage/folder/{path}";
        rawPath = rawPath.replacingOccurrences(of: "{path}", with: try ObjectSerializer.serialize(String.self, request.getPath()));
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
        
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        if (request.getStorageName() != nil) {
            queryItems.append(URLQueryItem(name: "storageName", value: try ObjectSerializer.serialize(String.self, request.getStorageName()!)));
        }
        urlBuilder.queryItems = queryItems;
        
        
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: ,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: FilesList.self, from: response);
    }   
    
    public func getFootnote(request : GetFootnoteRequest) throws -> FootnoteResponse {
        var rawPath = "/words/{name}/{nodePath}/footnotes/{index}";
        rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serialize(String.self, request.getName()));
        rawPath = rawPath.replacingOccurrences(of: "{nodePath}", with: try ObjectSerializer.serialize(String.self, request.getNodePath()));
        rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serialize(Int.self, request.getIndex()));
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
        
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serialize(String.self, request.getFolder()!)));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serialize(String.self, request.getStorage()!)));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serialize(String.self, request.getLoadEncoding()!)));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serialize(String.self, request.getPassword()!)));
        }
        urlBuilder.queryItems = queryItems;
        
        
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: ,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: FootnoteResponse.self, from: response);
    }   
    
    public func getFootnoteWithoutNodePath(request : GetFootnoteWithoutNodePathRequest) throws -> FootnoteResponse {
        var rawPath = "/words/{name}/footnotes/{index}";
        rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serialize(String.self, request.getName()));
        rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serialize(Int.self, request.getIndex()));
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
        
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serialize(String.self, request.getFolder()!)));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serialize(String.self, request.getStorage()!)));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serialize(String.self, request.getLoadEncoding()!)));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serialize(String.self, request.getPassword()!)));
        }
        urlBuilder.queryItems = queryItems;
        
        
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: ,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: FootnoteResponse.self, from: response);
    }   
    
    public func getFootnotes(request : GetFootnotesRequest) throws -> FootnotesResponse {
        var rawPath = "/words/{name}/{nodePath}/footnotes";
        rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serialize(String.self, request.getName()));
        rawPath = rawPath.replacingOccurrences(of: "{nodePath}", with: try ObjectSerializer.serialize(String.self, request.getNodePath()));
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
        
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serialize(String.self, request.getFolder()!)));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serialize(String.self, request.getStorage()!)));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serialize(String.self, request.getLoadEncoding()!)));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serialize(String.self, request.getPassword()!)));
        }
        urlBuilder.queryItems = queryItems;
        
        
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: ,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: FootnotesResponse.self, from: response);
    }   
    
    public func getFootnotesWithoutNodePath(request : GetFootnotesWithoutNodePathRequest) throws -> FootnotesResponse {
        var rawPath = "/words/{name}/footnotes";
        rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serialize(String.self, request.getName()));
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
        
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serialize(String.self, request.getFolder()!)));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serialize(String.self, request.getStorage()!)));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serialize(String.self, request.getLoadEncoding()!)));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serialize(String.self, request.getPassword()!)));
        }
        urlBuilder.queryItems = queryItems;
        
        
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: ,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: FootnotesResponse.self, from: response);
    }   
    
    public func getFormField(request : GetFormFieldRequest) throws -> FormFieldResponse {
        var rawPath = "/words/{name}/{nodePath}/formfields/{index}";
        rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serialize(String.self, request.getName()));
        rawPath = rawPath.replacingOccurrences(of: "{nodePath}", with: try ObjectSerializer.serialize(String.self, request.getNodePath()));
        rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serialize(Int.self, request.getIndex()));
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
        
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serialize(String.self, request.getFolder()!)));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serialize(String.self, request.getStorage()!)));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serialize(String.self, request.getLoadEncoding()!)));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serialize(String.self, request.getPassword()!)));
        }
        urlBuilder.queryItems = queryItems;
        
        
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: ,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: FormFieldResponse.self, from: response);
    }   
    
    public func getFormFieldWithoutNodePath(request : GetFormFieldWithoutNodePathRequest) throws -> FormFieldResponse {
        var rawPath = "/words/{name}/formfields/{index}";
        rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serialize(String.self, request.getName()));
        rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serialize(Int.self, request.getIndex()));
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
        
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serialize(String.self, request.getFolder()!)));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serialize(String.self, request.getStorage()!)));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serialize(String.self, request.getLoadEncoding()!)));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serialize(String.self, request.getPassword()!)));
        }
        urlBuilder.queryItems = queryItems;
        
        
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: ,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: FormFieldResponse.self, from: response);
    }   
    
    public func getFormFields(request : GetFormFieldsRequest) throws -> FormFieldsResponse {
        var rawPath = "/words/{name}/{nodePath}/formfields";
        rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serialize(String.self, request.getName()));
        rawPath = rawPath.replacingOccurrences(of: "{nodePath}", with: try ObjectSerializer.serialize(String.self, request.getNodePath()));
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
        
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serialize(String.self, request.getFolder()!)));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serialize(String.self, request.getStorage()!)));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serialize(String.self, request.getLoadEncoding()!)));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serialize(String.self, request.getPassword()!)));
        }
        urlBuilder.queryItems = queryItems;
        
        
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: ,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: FormFieldsResponse.self, from: response);
    }   
    
    public func getFormFieldsWithoutNodePath(request : GetFormFieldsWithoutNodePathRequest) throws -> FormFieldsResponse {
        var rawPath = "/words/{name}/formfields";
        rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serialize(String.self, request.getName()));
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
        
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serialize(String.self, request.getFolder()!)));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serialize(String.self, request.getStorage()!)));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serialize(String.self, request.getLoadEncoding()!)));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serialize(String.self, request.getPassword()!)));
        }
        urlBuilder.queryItems = queryItems;
        
        
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: ,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: FormFieldsResponse.self, from: response);
    }   
    
    public func getHeaderFooter(request : GetHeaderFooterRequest) throws -> HeaderFooterResponse {
        var rawPath = "/words/{name}/headersfooters/{headerFooterIndex}";
        rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serialize(String.self, request.getName()));
        rawPath = rawPath.replacingOccurrences(of: "{headerFooterIndex}", with: try ObjectSerializer.serialize(Int.self, request.getHeaderFooterIndex()));
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
        
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serialize(String.self, request.getFolder()!)));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serialize(String.self, request.getStorage()!)));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serialize(String.self, request.getLoadEncoding()!)));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serialize(String.self, request.getPassword()!)));
        }
        if (request.getFilterByType() != nil) {
            queryItems.append(URLQueryItem(name: "filterByType", value: try ObjectSerializer.serialize(String.self, request.getFilterByType()!)));
        }
        urlBuilder.queryItems = queryItems;
        
        
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: ,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: HeaderFooterResponse.self, from: response);
    }   
    
    public func getHeaderFooterOfSection(request : GetHeaderFooterOfSectionRequest) throws -> HeaderFooterResponse {
        var rawPath = "/words/{name}/sections/{sectionIndex}/headersfooters/{headerFooterIndex}";
        rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serialize(String.self, request.getName()));
        rawPath = rawPath.replacingOccurrences(of: "{headerFooterIndex}", with: try ObjectSerializer.serialize(Int.self, request.getHeaderFooterIndex()));
        rawPath = rawPath.replacingOccurrences(of: "{sectionIndex}", with: try ObjectSerializer.serialize(Int.self, request.getSectionIndex()));
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
        
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serialize(String.self, request.getFolder()!)));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serialize(String.self, request.getStorage()!)));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serialize(String.self, request.getLoadEncoding()!)));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serialize(String.self, request.getPassword()!)));
        }
        if (request.getFilterByType() != nil) {
            queryItems.append(URLQueryItem(name: "filterByType", value: try ObjectSerializer.serialize(String.self, request.getFilterByType()!)));
        }
        urlBuilder.queryItems = queryItems;
        
        
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: ,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: HeaderFooterResponse.self, from: response);
    }   
    
    public func getHeaderFooters(request : GetHeaderFootersRequest) throws -> HeaderFootersResponse {
        var rawPath = "/words/{name}/{sectionPath}/headersfooters";
        rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serialize(String.self, request.getName()));
        rawPath = rawPath.replacingOccurrences(of: "{sectionPath}", with: try ObjectSerializer.serialize(String.self, request.getSectionPath()));
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
        
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serialize(String.self, request.getFolder()!)));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serialize(String.self, request.getStorage()!)));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serialize(String.self, request.getLoadEncoding()!)));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serialize(String.self, request.getPassword()!)));
        }
        if (request.getFilterByType() != nil) {
            queryItems.append(URLQueryItem(name: "filterByType", value: try ObjectSerializer.serialize(String.self, request.getFilterByType()!)));
        }
        urlBuilder.queryItems = queryItems;
        
        
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: ,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: HeaderFootersResponse.self, from: response);
    }   
    
    public func getOfficeMathObject(request : GetOfficeMathObjectRequest) throws -> OfficeMathObjectResponse {
        var rawPath = "/words/{name}/{nodePath}/OfficeMathObjects/{index}";
        rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serialize(String.self, request.getName()));
        rawPath = rawPath.replacingOccurrences(of: "{nodePath}", with: try ObjectSerializer.serialize(String.self, request.getNodePath()));
        rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serialize(Int.self, request.getIndex()));
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
        
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serialize(String.self, request.getFolder()!)));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serialize(String.self, request.getStorage()!)));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serialize(String.self, request.getLoadEncoding()!)));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serialize(String.self, request.getPassword()!)));
        }
        urlBuilder.queryItems = queryItems;
        
        
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: ,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: OfficeMathObjectResponse.self, from: response);
    }   
    
    public func getOfficeMathObjectWithoutNodePath(request : GetOfficeMathObjectWithoutNodePathRequest) throws -> OfficeMathObjectResponse {
        var rawPath = "/words/{name}/OfficeMathObjects/{index}";
        rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serialize(String.self, request.getName()));
        rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serialize(Int.self, request.getIndex()));
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
        
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serialize(String.self, request.getFolder()!)));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serialize(String.self, request.getStorage()!)));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serialize(String.self, request.getLoadEncoding()!)));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serialize(String.self, request.getPassword()!)));
        }
        urlBuilder.queryItems = queryItems;
        
        
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: ,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: OfficeMathObjectResponse.self, from: response);
    }   
    
    public func getOfficeMathObjects(request : GetOfficeMathObjectsRequest) throws -> OfficeMathObjectsResponse {
        var rawPath = "/words/{name}/{nodePath}/OfficeMathObjects";
        rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serialize(String.self, request.getName()));
        rawPath = rawPath.replacingOccurrences(of: "{nodePath}", with: try ObjectSerializer.serialize(String.self, request.getNodePath()));
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
        
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serialize(String.self, request.getFolder()!)));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serialize(String.self, request.getStorage()!)));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serialize(String.self, request.getLoadEncoding()!)));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serialize(String.self, request.getPassword()!)));
        }
        urlBuilder.queryItems = queryItems;
        
        
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: ,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: OfficeMathObjectsResponse.self, from: response);
    }   
    
    public func getOfficeMathObjectsWithoutNodePath(request : GetOfficeMathObjectsWithoutNodePathRequest) throws -> OfficeMathObjectsResponse {
        var rawPath = "/words/{name}/OfficeMathObjects";
        rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serialize(String.self, request.getName()));
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
        
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serialize(String.self, request.getFolder()!)));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serialize(String.self, request.getStorage()!)));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serialize(String.self, request.getLoadEncoding()!)));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serialize(String.self, request.getPassword()!)));
        }
        urlBuilder.queryItems = queryItems;
        
        
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: ,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: OfficeMathObjectsResponse.self, from: response);
    }   
    
    public func getParagraph(request : GetParagraphRequest) throws -> ParagraphResponse {
        var rawPath = "/words/{name}/{nodePath}/paragraphs/{index}";
        rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serialize(String.self, request.getName()));
        rawPath = rawPath.replacingOccurrences(of: "{nodePath}", with: try ObjectSerializer.serialize(String.self, request.getNodePath()));
        rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serialize(Int.self, request.getIndex()));
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
        
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serialize(String.self, request.getFolder()!)));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serialize(String.self, request.getStorage()!)));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serialize(String.self, request.getLoadEncoding()!)));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serialize(String.self, request.getPassword()!)));
        }
        urlBuilder.queryItems = queryItems;
        
        
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: ,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: ParagraphResponse.self, from: response);
    }   
    
    public func getParagraphFormat(request : GetParagraphFormatRequest) throws -> ParagraphFormatResponse {
        var rawPath = "/words/{name}/{nodePath}/paragraphs/{index}/format";
        rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serialize(String.self, request.getName()));
        rawPath = rawPath.replacingOccurrences(of: "{nodePath}", with: try ObjectSerializer.serialize(String.self, request.getNodePath()));
        rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serialize(Int.self, request.getIndex()));
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
        
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serialize(String.self, request.getFolder()!)));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serialize(String.self, request.getStorage()!)));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serialize(String.self, request.getLoadEncoding()!)));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serialize(String.self, request.getPassword()!)));
        }
        urlBuilder.queryItems = queryItems;
        
        
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: ,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: ParagraphFormatResponse.self, from: response);
    }   
    
    public func getParagraphFormatWithoutNodePath(request : GetParagraphFormatWithoutNodePathRequest) throws -> ParagraphFormatResponse {
        var rawPath = "/words/{name}/paragraphs/{index}/format";
        rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serialize(String.self, request.getName()));
        rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serialize(Int.self, request.getIndex()));
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
        
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serialize(String.self, request.getFolder()!)));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serialize(String.self, request.getStorage()!)));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serialize(String.self, request.getLoadEncoding()!)));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serialize(String.self, request.getPassword()!)));
        }
        urlBuilder.queryItems = queryItems;
        
        
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: ,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: ParagraphFormatResponse.self, from: response);
    }   
    
    public func getParagraphWithoutNodePath(request : GetParagraphWithoutNodePathRequest) throws -> ParagraphResponse {
        var rawPath = "/words/{name}/paragraphs/{index}";
        rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serialize(String.self, request.getName()));
        rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serialize(Int.self, request.getIndex()));
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
        
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serialize(String.self, request.getFolder()!)));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serialize(String.self, request.getStorage()!)));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serialize(String.self, request.getLoadEncoding()!)));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serialize(String.self, request.getPassword()!)));
        }
        urlBuilder.queryItems = queryItems;
        
        
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: ,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: ParagraphResponse.self, from: response);
    }   
    
    public func getParagraphs(request : GetParagraphsRequest) throws -> ParagraphLinkCollectionResponse {
        var rawPath = "/words/{name}/{nodePath}/paragraphs";
        rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serialize(String.self, request.getName()));
        rawPath = rawPath.replacingOccurrences(of: "{nodePath}", with: try ObjectSerializer.serialize(String.self, request.getNodePath()));
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
        
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serialize(String.self, request.getFolder()!)));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serialize(String.self, request.getStorage()!)));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serialize(String.self, request.getLoadEncoding()!)));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serialize(String.self, request.getPassword()!)));
        }
        urlBuilder.queryItems = queryItems;
        
        
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: ,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: ParagraphLinkCollectionResponse.self, from: response);
    }   
    
    public func getParagraphsWithoutNodePath(request : GetParagraphsWithoutNodePathRequest) throws -> ParagraphLinkCollectionResponse {
        var rawPath = "/words/{name}/paragraphs";
        rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serialize(String.self, request.getName()));
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
        
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serialize(String.self, request.getFolder()!)));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serialize(String.self, request.getStorage()!)));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serialize(String.self, request.getLoadEncoding()!)));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serialize(String.self, request.getPassword()!)));
        }
        urlBuilder.queryItems = queryItems;
        
        
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: ,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: ParagraphLinkCollectionResponse.self, from: response);
    }   
    
    public func getRangeText(request : GetRangeTextRequest) throws -> RangeTextResponse {
        var rawPath = "/words/{name}/range/{rangeStartIdentifier}/{rangeEndIdentifier}";
        rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serialize(String.self, request.getName()));
        rawPath = rawPath.replacingOccurrences(of: "{rangeStartIdentifier}", with: try ObjectSerializer.serialize(String.self, request.getRangeStartIdentifier()));
        rawPath = rawPath.replacingOccurrences(of: "{rangeEndIdentifier}", with: try ObjectSerializer.serialize(String.self, request.getRangeEndIdentifier()));
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
        
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serialize(String.self, request.getFolder()!)));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serialize(String.self, request.getStorage()!)));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serialize(String.self, request.getLoadEncoding()!)));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serialize(String.self, request.getPassword()!)));
        }
        urlBuilder.queryItems = queryItems;
        
        
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: ,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: RangeTextResponse.self, from: response);
    }   
    
    public func getRun(request : GetRunRequest) throws -> RunResponse {
        var rawPath = "/words/{name}/{paragraphPath}/runs/{index}";
        rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serialize(String.self, request.getName()));
        rawPath = rawPath.replacingOccurrences(of: "{paragraphPath}", with: try ObjectSerializer.serialize(String.self, request.getParagraphPath()));
        rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serialize(Int.self, request.getIndex()));
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
        
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serialize(String.self, request.getFolder()!)));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serialize(String.self, request.getStorage()!)));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serialize(String.self, request.getLoadEncoding()!)));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serialize(String.self, request.getPassword()!)));
        }
        urlBuilder.queryItems = queryItems;
        
        
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: ,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: RunResponse.self, from: response);
    }   
    
    public func getRunFont(request : GetRunFontRequest) throws -> FontResponse {
        var rawPath = "/words/{name}/{paragraphPath}/runs/{index}/font";
        rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serialize(String.self, request.getName()));
        rawPath = rawPath.replacingOccurrences(of: "{paragraphPath}", with: try ObjectSerializer.serialize(String.self, request.getParagraphPath()));
        rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serialize(Int.self, request.getIndex()));
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
        
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serialize(String.self, request.getFolder()!)));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serialize(String.self, request.getStorage()!)));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serialize(String.self, request.getLoadEncoding()!)));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serialize(String.self, request.getPassword()!)));
        }
        urlBuilder.queryItems = queryItems;
        
        
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: ,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: FontResponse.self, from: response);
    }   
    
    public func getRuns(request : GetRunsRequest) throws -> RunsResponse {
        var rawPath = "/words/{name}/{paragraphPath}/runs";
        rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serialize(String.self, request.getName()));
        rawPath = rawPath.replacingOccurrences(of: "{paragraphPath}", with: try ObjectSerializer.serialize(String.self, request.getParagraphPath()));
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
        
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serialize(String.self, request.getFolder()!)));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serialize(String.self, request.getStorage()!)));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serialize(String.self, request.getLoadEncoding()!)));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serialize(String.self, request.getPassword()!)));
        }
        urlBuilder.queryItems = queryItems;
        
        
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: ,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: RunsResponse.self, from: response);
    }   
    
    public func getSection(request : GetSectionRequest) throws -> SectionResponse {
        var rawPath = "/words/{name}/sections/{sectionIndex}";
        rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serialize(String.self, request.getName()));
        rawPath = rawPath.replacingOccurrences(of: "{sectionIndex}", with: try ObjectSerializer.serialize(Int.self, request.getSectionIndex()));
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
        
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serialize(String.self, request.getFolder()!)));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serialize(String.self, request.getStorage()!)));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serialize(String.self, request.getLoadEncoding()!)));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serialize(String.self, request.getPassword()!)));
        }
        urlBuilder.queryItems = queryItems;
        
        
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: ,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: SectionResponse.self, from: response);
    }   
    
    public func getSectionPageSetup(request : GetSectionPageSetupRequest) throws -> SectionPageSetupResponse {
        var rawPath = "/words/{name}/sections/{sectionIndex}/pageSetup";
        rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serialize(String.self, request.getName()));
        rawPath = rawPath.replacingOccurrences(of: "{sectionIndex}", with: try ObjectSerializer.serialize(Int.self, request.getSectionIndex()));
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
        
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serialize(String.self, request.getFolder()!)));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serialize(String.self, request.getStorage()!)));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serialize(String.self, request.getLoadEncoding()!)));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serialize(String.self, request.getPassword()!)));
        }
        urlBuilder.queryItems = queryItems;
        
        
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: ,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: SectionPageSetupResponse.self, from: response);
    }   
    
    public func getSections(request : GetSectionsRequest) throws -> SectionLinkCollectionResponse {
        var rawPath = "/words/{name}/sections";
        rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serialize(String.self, request.getName()));
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
        
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serialize(String.self, request.getFolder()!)));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serialize(String.self, request.getStorage()!)));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serialize(String.self, request.getLoadEncoding()!)));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serialize(String.self, request.getPassword()!)));
        }
        urlBuilder.queryItems = queryItems;
        
        
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: ,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: SectionLinkCollectionResponse.self, from: response);
    }   
    
    public func getTable(request : GetTableRequest) throws -> TableResponse {
        var rawPath = "/words/{name}/{nodePath}/tables/{index}";
        rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serialize(String.self, request.getName()));
        rawPath = rawPath.replacingOccurrences(of: "{nodePath}", with: try ObjectSerializer.serialize(String.self, request.getNodePath()));
        rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serialize(Int.self, request.getIndex()));
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
        
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serialize(String.self, request.getFolder()!)));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serialize(String.self, request.getStorage()!)));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serialize(String.self, request.getLoadEncoding()!)));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serialize(String.self, request.getPassword()!)));
        }
        urlBuilder.queryItems = queryItems;
        
        
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: ,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: TableResponse.self, from: response);
    }   
    
    public func getTableCell(request : GetTableCellRequest) throws -> TableCellResponse {
        var rawPath = "/words/{name}/{tableRowPath}/cells/{index}";
        rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serialize(String.self, request.getName()));
        rawPath = rawPath.replacingOccurrences(of: "{tableRowPath}", with: try ObjectSerializer.serialize(String.self, request.getTableRowPath()));
        rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serialize(Int.self, request.getIndex()));
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
        
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serialize(String.self, request.getFolder()!)));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serialize(String.self, request.getStorage()!)));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serialize(String.self, request.getLoadEncoding()!)));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serialize(String.self, request.getPassword()!)));
        }
        urlBuilder.queryItems = queryItems;
        
        
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: ,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: TableCellResponse.self, from: response);
    }   
    
    public func getTableCellFormat(request : GetTableCellFormatRequest) throws -> TableCellFormatResponse {
        var rawPath = "/words/{name}/{tableRowPath}/cells/{index}/cellformat";
        rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serialize(String.self, request.getName()));
        rawPath = rawPath.replacingOccurrences(of: "{tableRowPath}", with: try ObjectSerializer.serialize(String.self, request.getTableRowPath()));
        rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serialize(Int.self, request.getIndex()));
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
        
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serialize(String.self, request.getFolder()!)));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serialize(String.self, request.getStorage()!)));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serialize(String.self, request.getLoadEncoding()!)));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serialize(String.self, request.getPassword()!)));
        }
        urlBuilder.queryItems = queryItems;
        
        
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: ,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: TableCellFormatResponse.self, from: response);
    }   
    
    public func getTableProperties(request : GetTablePropertiesRequest) throws -> TablePropertiesResponse {
        var rawPath = "/words/{name}/{nodePath}/tables/{index}/properties";
        rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serialize(String.self, request.getName()));
        rawPath = rawPath.replacingOccurrences(of: "{nodePath}", with: try ObjectSerializer.serialize(String.self, request.getNodePath()));
        rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serialize(Int.self, request.getIndex()));
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
        
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serialize(String.self, request.getFolder()!)));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serialize(String.self, request.getStorage()!)));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serialize(String.self, request.getLoadEncoding()!)));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serialize(String.self, request.getPassword()!)));
        }
        urlBuilder.queryItems = queryItems;
        
        
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: ,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: TablePropertiesResponse.self, from: response);
    }   
    
    public func getTablePropertiesWithoutNodePath(request : GetTablePropertiesWithoutNodePathRequest) throws -> TablePropertiesResponse {
        var rawPath = "/words/{name}/tables/{index}/properties";
        rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serialize(String.self, request.getName()));
        rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serialize(Int.self, request.getIndex()));
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
        
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serialize(String.self, request.getFolder()!)));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serialize(String.self, request.getStorage()!)));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serialize(String.self, request.getLoadEncoding()!)));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serialize(String.self, request.getPassword()!)));
        }
        urlBuilder.queryItems = queryItems;
        
        
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: ,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: TablePropertiesResponse.self, from: response);
    }   
    
    public func getTableRow(request : GetTableRowRequest) throws -> TableRowResponse {
        var rawPath = "/words/{name}/{tablePath}/rows/{index}";
        rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serialize(String.self, request.getName()));
        rawPath = rawPath.replacingOccurrences(of: "{tablePath}", with: try ObjectSerializer.serialize(String.self, request.getTablePath()));
        rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serialize(Int.self, request.getIndex()));
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
        
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serialize(String.self, request.getFolder()!)));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serialize(String.self, request.getStorage()!)));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serialize(String.self, request.getLoadEncoding()!)));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serialize(String.self, request.getPassword()!)));
        }
        urlBuilder.queryItems = queryItems;
        
        
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: ,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: TableRowResponse.self, from: response);
    }   
    
    public func getTableRowFormat(request : GetTableRowFormatRequest) throws -> TableRowFormatResponse {
        var rawPath = "/words/{name}/{tablePath}/rows/{index}/rowformat";
        rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serialize(String.self, request.getName()));
        rawPath = rawPath.replacingOccurrences(of: "{tablePath}", with: try ObjectSerializer.serialize(String.self, request.getTablePath()));
        rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serialize(Int.self, request.getIndex()));
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
        
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serialize(String.self, request.getFolder()!)));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serialize(String.self, request.getStorage()!)));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serialize(String.self, request.getLoadEncoding()!)));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serialize(String.self, request.getPassword()!)));
        }
        urlBuilder.queryItems = queryItems;
        
        
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: ,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: TableRowFormatResponse.self, from: response);
    }   
    
    public func getTableWithoutNodePath(request : GetTableWithoutNodePathRequest) throws -> TableResponse {
        var rawPath = "/words/{name}/tables/{index}";
        rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serialize(String.self, request.getName()));
        rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serialize(Int.self, request.getIndex()));
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
        
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serialize(String.self, request.getFolder()!)));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serialize(String.self, request.getStorage()!)));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serialize(String.self, request.getLoadEncoding()!)));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serialize(String.self, request.getPassword()!)));
        }
        urlBuilder.queryItems = queryItems;
        
        
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: ,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: TableResponse.self, from: response);
    }   
    
    public func getTables(request : GetTablesRequest) throws -> TableLinkCollectionResponse {
        var rawPath = "/words/{name}/{nodePath}/tables";
        rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serialize(String.self, request.getName()));
        rawPath = rawPath.replacingOccurrences(of: "{nodePath}", with: try ObjectSerializer.serialize(String.self, request.getNodePath()));
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
        
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serialize(String.self, request.getFolder()!)));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serialize(String.self, request.getStorage()!)));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serialize(String.self, request.getLoadEncoding()!)));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serialize(String.self, request.getPassword()!)));
        }
        urlBuilder.queryItems = queryItems;
        
        
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: ,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: TableLinkCollectionResponse.self, from: response);
    }   
    
    public func getTablesWithoutNodePath(request : GetTablesWithoutNodePathRequest) throws -> TableLinkCollectionResponse {
        var rawPath = "/words/{name}/tables";
        rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serialize(String.self, request.getName()));
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
        
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serialize(String.self, request.getFolder()!)));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serialize(String.self, request.getStorage()!)));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serialize(String.self, request.getLoadEncoding()!)));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serialize(String.self, request.getPassword()!)));
        }
        urlBuilder.queryItems = queryItems;
        
        
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: ,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: TableLinkCollectionResponse.self, from: response);
    }   
    
    public func insertComment(request : InsertCommentRequest) throws -> CommentResponse {
        var rawPath = "/words/{name}/comments";
        rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serialize(String.self, request.getName()));
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
        
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serialize(String.self, request.getFolder()!)));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serialize(String.self, request.getStorage()!)));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serialize(String.self, request.getLoadEncoding()!)));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serialize(String.self, request.getPassword()!)));
        }
        if (request.getDestFileName() != nil) {
            queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serialize(String.self, request.getDestFileName()!)));
        }
        if (request.getRevisionAuthor() != nil) {
            queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serialize(String.self, request.getRevisionAuthor()!)));
        }
        if (request.getRevisionDateTime() != nil) {
            queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serialize(String.self, request.getRevisionDateTime()!)));
        }
        urlBuilder.queryItems = queryItems;
        
        
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: ,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: CommentResponse.self, from: response);
    }   
    
    public func insertDrawingObject(request : InsertDrawingObjectRequest) throws -> DrawingObjectResponse {
        var rawPath = "/words/{name}/{nodePath}/drawingObjects";
        rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serialize(String.self, request.getName()));
        rawPath = rawPath.replacingOccurrences(of: "{nodePath}", with: try ObjectSerializer.serialize(String.self, request.getNodePath()));
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
        
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serialize(String.self, request.getFolder()!)));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serialize(String.self, request.getStorage()!)));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serialize(String.self, request.getLoadEncoding()!)));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serialize(String.self, request.getPassword()!)));
        }
        if (request.getDestFileName() != nil) {
            queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serialize(String.self, request.getDestFileName()!)));
        }
        if (request.getRevisionAuthor() != nil) {
            queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serialize(String.self, request.getRevisionAuthor()!)));
        }
        if (request.getRevisionDateTime() != nil) {
            queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serialize(String.self, request.getRevisionDateTime()!)));
        }
        urlBuilder.queryItems = queryItems;
        
        
        var formParams : Dictionary<String, Data>();
        formParams["drawingObject", try ObjectSerializer.serialize(String.self, request.getDrawingObject())];
        formParams["imageFile", try ObjectSerializer.serialize(URL.self, request.getImageFile())];
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: ,
            headers: nil,
            formParams: formParams
        );
        return try ObjectSerializer.deserialize(type: DrawingObjectResponse.self, from: response);
    }   
    
    public func insertDrawingObjectWithoutNodePath(request : InsertDrawingObjectWithoutNodePathRequest) throws -> DrawingObjectResponse {
        var rawPath = "/words/{name}/drawingObjects";
        rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serialize(String.self, request.getName()));
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
        
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serialize(String.self, request.getFolder()!)));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serialize(String.self, request.getStorage()!)));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serialize(String.self, request.getLoadEncoding()!)));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serialize(String.self, request.getPassword()!)));
        }
        if (request.getDestFileName() != nil) {
            queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serialize(String.self, request.getDestFileName()!)));
        }
        if (request.getRevisionAuthor() != nil) {
            queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serialize(String.self, request.getRevisionAuthor()!)));
        }
        if (request.getRevisionDateTime() != nil) {
            queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serialize(String.self, request.getRevisionDateTime()!)));
        }
        urlBuilder.queryItems = queryItems;
        
        
        var formParams : Dictionary<String, Data>();
        formParams["drawingObject", try ObjectSerializer.serialize(String.self, request.getDrawingObject())];
        formParams["imageFile", try ObjectSerializer.serialize(URL.self, request.getImageFile())];
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: ,
            headers: nil,
            formParams: formParams
        );
        return try ObjectSerializer.deserialize(type: DrawingObjectResponse.self, from: response);
    }   
    
    public func insertField(request : InsertFieldRequest) throws -> FieldResponse {
        var rawPath = "/words/{name}/{nodePath}/fields";
        rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serialize(String.self, request.getName()));
        rawPath = rawPath.replacingOccurrences(of: "{nodePath}", with: try ObjectSerializer.serialize(String.self, request.getNodePath()));
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
        
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serialize(String.self, request.getFolder()!)));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serialize(String.self, request.getStorage()!)));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serialize(String.self, request.getLoadEncoding()!)));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serialize(String.self, request.getPassword()!)));
        }
        if (request.getDestFileName() != nil) {
            queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serialize(String.self, request.getDestFileName()!)));
        }
        if (request.getRevisionAuthor() != nil) {
            queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serialize(String.self, request.getRevisionAuthor()!)));
        }
        if (request.getRevisionDateTime() != nil) {
            queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serialize(String.self, request.getRevisionDateTime()!)));
        }
        if (request.getInsertBeforeNode() != nil) {
            queryItems.append(URLQueryItem(name: "insertBeforeNode", value: try ObjectSerializer.serialize(String.self, request.getInsertBeforeNode()!)));
        }
        urlBuilder.queryItems = queryItems;
        
        
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: ,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: FieldResponse.self, from: response);
    }   
    
    public func insertFieldWithoutNodePath(request : InsertFieldWithoutNodePathRequest) throws -> FieldResponse {
        var rawPath = "/words/{name}/fields";
        rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serialize(String.self, request.getName()));
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
        
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serialize(String.self, request.getFolder()!)));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serialize(String.self, request.getStorage()!)));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serialize(String.self, request.getLoadEncoding()!)));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serialize(String.self, request.getPassword()!)));
        }
        if (request.getDestFileName() != nil) {
            queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serialize(String.self, request.getDestFileName()!)));
        }
        if (request.getRevisionAuthor() != nil) {
            queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serialize(String.self, request.getRevisionAuthor()!)));
        }
        if (request.getRevisionDateTime() != nil) {
            queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serialize(String.self, request.getRevisionDateTime()!)));
        }
        if (request.getInsertBeforeNode() != nil) {
            queryItems.append(URLQueryItem(name: "insertBeforeNode", value: try ObjectSerializer.serialize(String.self, request.getInsertBeforeNode()!)));
        }
        urlBuilder.queryItems = queryItems;
        
        
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: ,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: FieldResponse.self, from: response);
    }   
    
    public func insertFootnote(request : InsertFootnoteRequest) throws -> FootnoteResponse {
        var rawPath = "/words/{name}/{nodePath}/footnotes";
        rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serialize(String.self, request.getName()));
        rawPath = rawPath.replacingOccurrences(of: "{nodePath}", with: try ObjectSerializer.serialize(String.self, request.getNodePath()));
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
        
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serialize(String.self, request.getFolder()!)));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serialize(String.self, request.getStorage()!)));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serialize(String.self, request.getLoadEncoding()!)));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serialize(String.self, request.getPassword()!)));
        }
        if (request.getDestFileName() != nil) {
            queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serialize(String.self, request.getDestFileName()!)));
        }
        if (request.getRevisionAuthor() != nil) {
            queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serialize(String.self, request.getRevisionAuthor()!)));
        }
        if (request.getRevisionDateTime() != nil) {
            queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serialize(String.self, request.getRevisionDateTime()!)));
        }
        urlBuilder.queryItems = queryItems;
        
        
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: ,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: FootnoteResponse.self, from: response);
    }   
    
    public func insertFootnoteWithoutNodePath(request : InsertFootnoteWithoutNodePathRequest) throws -> FootnoteResponse {
        var rawPath = "/words/{name}/footnotes";
        rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serialize(String.self, request.getName()));
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
        
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serialize(String.self, request.getFolder()!)));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serialize(String.self, request.getStorage()!)));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serialize(String.self, request.getLoadEncoding()!)));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serialize(String.self, request.getPassword()!)));
        }
        if (request.getDestFileName() != nil) {
            queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serialize(String.self, request.getDestFileName()!)));
        }
        if (request.getRevisionAuthor() != nil) {
            queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serialize(String.self, request.getRevisionAuthor()!)));
        }
        if (request.getRevisionDateTime() != nil) {
            queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serialize(String.self, request.getRevisionDateTime()!)));
        }
        urlBuilder.queryItems = queryItems;
        
        
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: ,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: FootnoteResponse.self, from: response);
    }   
    
    public func insertFormField(request : InsertFormFieldRequest) throws -> FormFieldResponse {
        var rawPath = "/words/{name}/{nodePath}/formfields";
        rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serialize(String.self, request.getName()));
        rawPath = rawPath.replacingOccurrences(of: "{nodePath}", with: try ObjectSerializer.serialize(String.self, request.getNodePath()));
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
        
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serialize(String.self, request.getFolder()!)));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serialize(String.self, request.getStorage()!)));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serialize(String.self, request.getLoadEncoding()!)));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serialize(String.self, request.getPassword()!)));
        }
        if (request.getDestFileName() != nil) {
            queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serialize(String.self, request.getDestFileName()!)));
        }
        if (request.getRevisionAuthor() != nil) {
            queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serialize(String.self, request.getRevisionAuthor()!)));
        }
        if (request.getRevisionDateTime() != nil) {
            queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serialize(String.self, request.getRevisionDateTime()!)));
        }
        if (request.getInsertBeforeNode() != nil) {
            queryItems.append(URLQueryItem(name: "insertBeforeNode", value: try ObjectSerializer.serialize(String.self, request.getInsertBeforeNode()!)));
        }
        urlBuilder.queryItems = queryItems;
        
        
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: ,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: FormFieldResponse.self, from: response);
    }   
    
    public func insertFormFieldWithoutNodePath(request : InsertFormFieldWithoutNodePathRequest) throws -> FormFieldResponse {
        var rawPath = "/words/{name}/formfields";
        rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serialize(String.self, request.getName()));
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
        
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serialize(String.self, request.getFolder()!)));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serialize(String.self, request.getStorage()!)));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serialize(String.self, request.getLoadEncoding()!)));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serialize(String.self, request.getPassword()!)));
        }
        if (request.getDestFileName() != nil) {
            queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serialize(String.self, request.getDestFileName()!)));
        }
        if (request.getRevisionAuthor() != nil) {
            queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serialize(String.self, request.getRevisionAuthor()!)));
        }
        if (request.getRevisionDateTime() != nil) {
            queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serialize(String.self, request.getRevisionDateTime()!)));
        }
        if (request.getInsertBeforeNode() != nil) {
            queryItems.append(URLQueryItem(name: "insertBeforeNode", value: try ObjectSerializer.serialize(String.self, request.getInsertBeforeNode()!)));
        }
        urlBuilder.queryItems = queryItems;
        
        
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: ,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: FormFieldResponse.self, from: response);
    }   
    
    public func insertHeaderFooter(request : InsertHeaderFooterRequest) throws -> HeaderFooterResponse {
        var rawPath = "/words/{name}/{sectionPath}/headersfooters";
        rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serialize(String.self, request.getName()));
        rawPath = rawPath.replacingOccurrences(of: "{sectionPath}", with: try ObjectSerializer.serialize(String.self, request.getSectionPath()));
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
        
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serialize(String.self, request.getFolder()!)));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serialize(String.self, request.getStorage()!)));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serialize(String.self, request.getLoadEncoding()!)));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serialize(String.self, request.getPassword()!)));
        }
        if (request.getDestFileName() != nil) {
            queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serialize(String.self, request.getDestFileName()!)));
        }
        if (request.getRevisionAuthor() != nil) {
            queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serialize(String.self, request.getRevisionAuthor()!)));
        }
        if (request.getRevisionDateTime() != nil) {
            queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serialize(String.self, request.getRevisionDateTime()!)));
        }
        urlBuilder.queryItems = queryItems;
        
        
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: ,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: HeaderFooterResponse.self, from: response);
    }   
    
    public func insertPageNumbers(request : InsertPageNumbersRequest) throws -> DocumentResponse {
        var rawPath = "/words/{name}/PageNumbers";
        rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serialize(String.self, request.getName()));
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
        
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serialize(String.self, request.getFolder()!)));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serialize(String.self, request.getStorage()!)));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serialize(String.self, request.getLoadEncoding()!)));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serialize(String.self, request.getPassword()!)));
        }
        if (request.getDestFileName() != nil) {
            queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serialize(String.self, request.getDestFileName()!)));
        }
        if (request.getRevisionAuthor() != nil) {
            queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serialize(String.self, request.getRevisionAuthor()!)));
        }
        if (request.getRevisionDateTime() != nil) {
            queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serialize(String.self, request.getRevisionDateTime()!)));
        }
        urlBuilder.queryItems = queryItems;
        
        
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: ,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: DocumentResponse.self, from: response);
    }   
    
    public func insertParagraph(request : InsertParagraphRequest) throws -> ParagraphResponse {
        var rawPath = "/words/{name}/{nodePath}/paragraphs";
        rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serialize(String.self, request.getName()));
        rawPath = rawPath.replacingOccurrences(of: "{nodePath}", with: try ObjectSerializer.serialize(String.self, request.getNodePath()));
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
        
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serialize(String.self, request.getFolder()!)));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serialize(String.self, request.getStorage()!)));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serialize(String.self, request.getLoadEncoding()!)));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serialize(String.self, request.getPassword()!)));
        }
        if (request.getDestFileName() != nil) {
            queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serialize(String.self, request.getDestFileName()!)));
        }
        if (request.getRevisionAuthor() != nil) {
            queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serialize(String.self, request.getRevisionAuthor()!)));
        }
        if (request.getRevisionDateTime() != nil) {
            queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serialize(String.self, request.getRevisionDateTime()!)));
        }
        if (request.getInsertBeforeNode() != nil) {
            queryItems.append(URLQueryItem(name: "insertBeforeNode", value: try ObjectSerializer.serialize(String.self, request.getInsertBeforeNode()!)));
        }
        urlBuilder.queryItems = queryItems;
        
        
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: ,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: ParagraphResponse.self, from: response);
    }   
    
    public func insertRun(request : InsertRunRequest) throws -> RunResponse {
        var rawPath = "/words/{name}/{paragraphPath}/runs";
        rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serialize(String.self, request.getName()));
        rawPath = rawPath.replacingOccurrences(of: "{paragraphPath}", with: try ObjectSerializer.serialize(String.self, request.getParagraphPath()));
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
        
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serialize(String.self, request.getFolder()!)));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serialize(String.self, request.getStorage()!)));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serialize(String.self, request.getLoadEncoding()!)));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serialize(String.self, request.getPassword()!)));
        }
        if (request.getDestFileName() != nil) {
            queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serialize(String.self, request.getDestFileName()!)));
        }
        if (request.getRevisionAuthor() != nil) {
            queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serialize(String.self, request.getRevisionAuthor()!)));
        }
        if (request.getRevisionDateTime() != nil) {
            queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serialize(String.self, request.getRevisionDateTime()!)));
        }
        if (request.getInsertBeforeNode() != nil) {
            queryItems.append(URLQueryItem(name: "insertBeforeNode", value: try ObjectSerializer.serialize(String.self, request.getInsertBeforeNode()!)));
        }
        urlBuilder.queryItems = queryItems;
        
        
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: ,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: RunResponse.self, from: response);
    }   
    
    public func insertTable(request : InsertTableRequest) throws -> TableResponse {
        var rawPath = "/words/{name}/{nodePath}/tables";
        rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serialize(String.self, request.getName()));
        rawPath = rawPath.replacingOccurrences(of: "{nodePath}", with: try ObjectSerializer.serialize(String.self, request.getNodePath()));
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
        
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serialize(String.self, request.getFolder()!)));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serialize(String.self, request.getStorage()!)));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serialize(String.self, request.getLoadEncoding()!)));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serialize(String.self, request.getPassword()!)));
        }
        if (request.getDestFileName() != nil) {
            queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serialize(String.self, request.getDestFileName()!)));
        }
        if (request.getRevisionAuthor() != nil) {
            queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serialize(String.self, request.getRevisionAuthor()!)));
        }
        if (request.getRevisionDateTime() != nil) {
            queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serialize(String.self, request.getRevisionDateTime()!)));
        }
        urlBuilder.queryItems = queryItems;
        
        
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: ,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: TableResponse.self, from: response);
    }   
    
    public func insertTableCell(request : InsertTableCellRequest) throws -> TableCellResponse {
        var rawPath = "/words/{name}/{tableRowPath}/cells";
        rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serialize(String.self, request.getName()));
        rawPath = rawPath.replacingOccurrences(of: "{tableRowPath}", with: try ObjectSerializer.serialize(String.self, request.getTableRowPath()));
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
        
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serialize(String.self, request.getFolder()!)));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serialize(String.self, request.getStorage()!)));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serialize(String.self, request.getLoadEncoding()!)));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serialize(String.self, request.getPassword()!)));
        }
        if (request.getDestFileName() != nil) {
            queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serialize(String.self, request.getDestFileName()!)));
        }
        if (request.getRevisionAuthor() != nil) {
            queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serialize(String.self, request.getRevisionAuthor()!)));
        }
        if (request.getRevisionDateTime() != nil) {
            queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serialize(String.self, request.getRevisionDateTime()!)));
        }
        urlBuilder.queryItems = queryItems;
        
        
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: ,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: TableCellResponse.self, from: response);
    }   
    
    public func insertTableRow(request : InsertTableRowRequest) throws -> TableRowResponse {
        var rawPath = "/words/{name}/{tablePath}/rows";
        rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serialize(String.self, request.getName()));
        rawPath = rawPath.replacingOccurrences(of: "{tablePath}", with: try ObjectSerializer.serialize(String.self, request.getTablePath()));
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
        
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serialize(String.self, request.getFolder()!)));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serialize(String.self, request.getStorage()!)));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serialize(String.self, request.getLoadEncoding()!)));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serialize(String.self, request.getPassword()!)));
        }
        if (request.getDestFileName() != nil) {
            queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serialize(String.self, request.getDestFileName()!)));
        }
        if (request.getRevisionAuthor() != nil) {
            queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serialize(String.self, request.getRevisionAuthor()!)));
        }
        if (request.getRevisionDateTime() != nil) {
            queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serialize(String.self, request.getRevisionDateTime()!)));
        }
        urlBuilder.queryItems = queryItems;
        
        
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: ,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: TableRowResponse.self, from: response);
    }   
    
    public func insertTableWithoutNodePath(request : InsertTableWithoutNodePathRequest) throws -> TableResponse {
        var rawPath = "/words/{name}/tables";
        rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serialize(String.self, request.getName()));
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
        
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serialize(String.self, request.getFolder()!)));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serialize(String.self, request.getStorage()!)));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serialize(String.self, request.getLoadEncoding()!)));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serialize(String.self, request.getPassword()!)));
        }
        if (request.getDestFileName() != nil) {
            queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serialize(String.self, request.getDestFileName()!)));
        }
        if (request.getRevisionAuthor() != nil) {
            queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serialize(String.self, request.getRevisionAuthor()!)));
        }
        if (request.getRevisionDateTime() != nil) {
            queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serialize(String.self, request.getRevisionDateTime()!)));
        }
        urlBuilder.queryItems = queryItems;
        
        
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: ,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: TableResponse.self, from: response);
    }   
    
    public func insertWatermarkImage(request : InsertWatermarkImageRequest) throws -> DocumentResponse {
        var rawPath = "/words/{name}/watermarks/images";
        rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serialize(String.self, request.getName()));
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
        
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serialize(String.self, request.getFolder()!)));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serialize(String.self, request.getStorage()!)));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serialize(String.self, request.getLoadEncoding()!)));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serialize(String.self, request.getPassword()!)));
        }
        if (request.getDestFileName() != nil) {
            queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serialize(String.self, request.getDestFileName()!)));
        }
        if (request.getRevisionAuthor() != nil) {
            queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serialize(String.self, request.getRevisionAuthor()!)));
        }
        if (request.getRevisionDateTime() != nil) {
            queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serialize(String.self, request.getRevisionDateTime()!)));
        }
        if (request.getRotationAngle() != nil) {
            queryItems.append(URLQueryItem(name: "rotationAngle", value: try ObjectSerializer.serialize(Double.self, request.getRotationAngle()!)));
        }
        if (request.getImage() != nil) {
            queryItems.append(URLQueryItem(name: "image", value: try ObjectSerializer.serialize(String.self, request.getImage()!)));
        }
        urlBuilder.queryItems = queryItems;
        
        
        var formParams : Dictionary<String, Data>();
        if (request.getImageFile() != nil) {
            formParams["imageFile", try ObjectSerializer.serialize(URL.self, request.getImageFile()!)];
        }
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: ,
            headers: nil,
            formParams: formParams
        );
        return try ObjectSerializer.deserialize(type: DocumentResponse.self, from: response);
    }   
    
    public func insertWatermarkText(request : InsertWatermarkTextRequest) throws -> DocumentResponse {
        var rawPath = "/words/{name}/watermarks/texts";
        rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serialize(String.self, request.getName()));
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
        
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serialize(String.self, request.getFolder()!)));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serialize(String.self, request.getStorage()!)));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serialize(String.self, request.getLoadEncoding()!)));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serialize(String.self, request.getPassword()!)));
        }
        if (request.getDestFileName() != nil) {
            queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serialize(String.self, request.getDestFileName()!)));
        }
        if (request.getRevisionAuthor() != nil) {
            queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serialize(String.self, request.getRevisionAuthor()!)));
        }
        if (request.getRevisionDateTime() != nil) {
            queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serialize(String.self, request.getRevisionDateTime()!)));
        }
        urlBuilder.queryItems = queryItems;
        
        
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: ,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: DocumentResponse.self, from: response);
    }   
    
    public func loadWebDocument(request : LoadWebDocumentRequest) throws -> SaveResponse {
        let rawPath = "/words/loadWebDocument";
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
        
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serialize(String.self, request.getStorage()!)));
        }
        urlBuilder.queryItems = queryItems;
        
        
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: ,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: SaveResponse.self, from: response);
    }   
    
    public func moveFile(request : MoveFileRequest) throws  {
        var rawPath = "/words/storage/file/move/{srcPath}";
        rawPath = rawPath.replacingOccurrences(of: "{srcPath}", with: try ObjectSerializer.serialize(String.self, request.getSrcPath()));
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
        
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        queryItems.append(URLQueryItem(name: "destPath", value: try ObjectSerializer.serialize(String.self, request.getDestPath())));
        if (request.getSrcStorageName() != nil) {
            queryItems.append(URLQueryItem(name: "srcStorageName", value: try ObjectSerializer.serialize(String.self, request.getSrcStorageName()!)));
        }
        if (request.getDestStorageName() != nil) {
            queryItems.append(URLQueryItem(name: "destStorageName", value: try ObjectSerializer.serialize(String.self, request.getDestStorageName()!)));
        }
        if (request.getVersionId() != nil) {
            queryItems.append(URLQueryItem(name: "versionId", value: try ObjectSerializer.serialize(String.self, request.getVersionId()!)));
        }
        urlBuilder.queryItems = queryItems;
        
        
        
        _ = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: ,
            headers: nil,
            formParams: nil
        );
        
    }   
    
    public func moveFolder(request : MoveFolderRequest) throws  {
        var rawPath = "/words/storage/folder/move/{srcPath}";
        rawPath = rawPath.replacingOccurrences(of: "{srcPath}", with: try ObjectSerializer.serialize(String.self, request.getSrcPath()));
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
        
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        queryItems.append(URLQueryItem(name: "destPath", value: try ObjectSerializer.serialize(String.self, request.getDestPath())));
        if (request.getSrcStorageName() != nil) {
            queryItems.append(URLQueryItem(name: "srcStorageName", value: try ObjectSerializer.serialize(String.self, request.getSrcStorageName()!)));
        }
        if (request.getDestStorageName() != nil) {
            queryItems.append(URLQueryItem(name: "destStorageName", value: try ObjectSerializer.serialize(String.self, request.getDestStorageName()!)));
        }
        urlBuilder.queryItems = queryItems;
        
        
        
        _ = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: ,
            headers: nil,
            formParams: nil
        );
        
    }   
    
    public func protectDocument(request : ProtectDocumentRequest) throws -> ProtectionDataResponse {
        var rawPath = "/words/{name}/protection";
        rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serialize(String.self, request.getName()));
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
        
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serialize(String.self, request.getFolder()!)));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serialize(String.self, request.getStorage()!)));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serialize(String.self, request.getLoadEncoding()!)));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serialize(String.self, request.getPassword()!)));
        }
        if (request.getDestFileName() != nil) {
            queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serialize(String.self, request.getDestFileName()!)));
        }
        urlBuilder.queryItems = queryItems;
        
        
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: ,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: ProtectionDataResponse.self, from: response);
    }   
    
    public func rejectAllRevisions(request : RejectAllRevisionsRequest) throws -> RevisionsModificationResponse {
        var rawPath = "/words/{name}/revisions/rejectAll";
        rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serialize(String.self, request.getName()));
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
        
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serialize(String.self, request.getFolder()!)));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serialize(String.self, request.getStorage()!)));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serialize(String.self, request.getLoadEncoding()!)));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serialize(String.self, request.getPassword()!)));
        }
        if (request.getDestFileName() != nil) {
            queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serialize(String.self, request.getDestFileName()!)));
        }
        urlBuilder.queryItems = queryItems;
        
        
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: ,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: RevisionsModificationResponse.self, from: response);
    }   
    
    public func removeRange(request : RemoveRangeRequest) throws -> DocumentResponse {
        var rawPath = "/words/{name}/range/{rangeStartIdentifier}/{rangeEndIdentifier}";
        rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serialize(String.self, request.getName()));
        rawPath = rawPath.replacingOccurrences(of: "{rangeStartIdentifier}", with: try ObjectSerializer.serialize(String.self, request.getRangeStartIdentifier()));
        rawPath = rawPath.replacingOccurrences(of: "{rangeEndIdentifier}", with: try ObjectSerializer.serialize(String.self, request.getRangeEndIdentifier()));
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
        
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serialize(String.self, request.getFolder()!)));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serialize(String.self, request.getStorage()!)));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serialize(String.self, request.getLoadEncoding()!)));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serialize(String.self, request.getPassword()!)));
        }
        if (request.getDestFileName() != nil) {
            queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serialize(String.self, request.getDestFileName()!)));
        }
        urlBuilder.queryItems = queryItems;
        
        
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: ,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: DocumentResponse.self, from: response);
    }   
    
    public func renderDrawingObject(request : RenderDrawingObjectRequest) throws -> URL {
        var rawPath = "/words/{name}/{nodePath}/drawingObjects/{index}/render";
        rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serialize(String.self, request.getName()));
        rawPath = rawPath.replacingOccurrences(of: "{nodePath}", with: try ObjectSerializer.serialize(String.self, request.getNodePath()));
        rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serialize(Int.self, request.getIndex()));
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
        
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        queryItems.append(URLQueryItem(name: "format", value: try ObjectSerializer.serialize(String.self, request.getFormat())));
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serialize(String.self, request.getFolder()!)));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serialize(String.self, request.getStorage()!)));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serialize(String.self, request.getLoadEncoding()!)));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serialize(String.self, request.getPassword()!)));
        }
        if (request.getFontsLocation() != nil) {
            queryItems.append(URLQueryItem(name: "fontsLocation", value: try ObjectSerializer.serialize(String.self, request.getFontsLocation()!)));
        }
        urlBuilder.queryItems = queryItems;
        
        
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: ,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: URL.self, from: response);
    }   
    
    public func renderDrawingObjectWithoutNodePath(request : RenderDrawingObjectWithoutNodePathRequest) throws -> URL {
        var rawPath = "/words/{name}/drawingObjects/{index}/render";
        rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serialize(String.self, request.getName()));
        rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serialize(Int.self, request.getIndex()));
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
        
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        queryItems.append(URLQueryItem(name: "format", value: try ObjectSerializer.serialize(String.self, request.getFormat())));
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serialize(String.self, request.getFolder()!)));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serialize(String.self, request.getStorage()!)));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serialize(String.self, request.getLoadEncoding()!)));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serialize(String.self, request.getPassword()!)));
        }
        if (request.getFontsLocation() != nil) {
            queryItems.append(URLQueryItem(name: "fontsLocation", value: try ObjectSerializer.serialize(String.self, request.getFontsLocation()!)));
        }
        urlBuilder.queryItems = queryItems;
        
        
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: ,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: URL.self, from: response);
    }   
    
    public func renderMathObject(request : RenderMathObjectRequest) throws -> URL {
        var rawPath = "/words/{name}/{nodePath}/OfficeMathObjects/{index}/render";
        rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serialize(String.self, request.getName()));
        rawPath = rawPath.replacingOccurrences(of: "{nodePath}", with: try ObjectSerializer.serialize(String.self, request.getNodePath()));
        rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serialize(Int.self, request.getIndex()));
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
        
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        queryItems.append(URLQueryItem(name: "format", value: try ObjectSerializer.serialize(String.self, request.getFormat())));
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serialize(String.self, request.getFolder()!)));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serialize(String.self, request.getStorage()!)));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serialize(String.self, request.getLoadEncoding()!)));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serialize(String.self, request.getPassword()!)));
        }
        if (request.getFontsLocation() != nil) {
            queryItems.append(URLQueryItem(name: "fontsLocation", value: try ObjectSerializer.serialize(String.self, request.getFontsLocation()!)));
        }
        urlBuilder.queryItems = queryItems;
        
        
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: ,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: URL.self, from: response);
    }   
    
    public func renderMathObjectWithoutNodePath(request : RenderMathObjectWithoutNodePathRequest) throws -> URL {
        var rawPath = "/words/{name}/OfficeMathObjects/{index}/render";
        rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serialize(String.self, request.getName()));
        rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serialize(Int.self, request.getIndex()));
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
        
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        queryItems.append(URLQueryItem(name: "format", value: try ObjectSerializer.serialize(String.self, request.getFormat())));
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serialize(String.self, request.getFolder()!)));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serialize(String.self, request.getStorage()!)));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serialize(String.self, request.getLoadEncoding()!)));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serialize(String.self, request.getPassword()!)));
        }
        if (request.getFontsLocation() != nil) {
            queryItems.append(URLQueryItem(name: "fontsLocation", value: try ObjectSerializer.serialize(String.self, request.getFontsLocation()!)));
        }
        urlBuilder.queryItems = queryItems;
        
        
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: ,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: URL.self, from: response);
    }   
    
    public func renderPage(request : RenderPageRequest) throws -> URL {
        var rawPath = "/words/{name}/pages/{pageIndex}/render";
        rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serialize(String.self, request.getName()));
        rawPath = rawPath.replacingOccurrences(of: "{pageIndex}", with: try ObjectSerializer.serialize(Int.self, request.getPageIndex()));
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
        
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        queryItems.append(URLQueryItem(name: "format", value: try ObjectSerializer.serialize(String.self, request.getFormat())));
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serialize(String.self, request.getFolder()!)));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serialize(String.self, request.getStorage()!)));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serialize(String.self, request.getLoadEncoding()!)));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serialize(String.self, request.getPassword()!)));
        }
        if (request.getFontsLocation() != nil) {
            queryItems.append(URLQueryItem(name: "fontsLocation", value: try ObjectSerializer.serialize(String.self, request.getFontsLocation()!)));
        }
        urlBuilder.queryItems = queryItems;
        
        
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: ,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: URL.self, from: response);
    }   
    
    public func renderParagraph(request : RenderParagraphRequest) throws -> URL {
        var rawPath = "/words/{name}/{nodePath}/paragraphs/{index}/render";
        rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serialize(String.self, request.getName()));
        rawPath = rawPath.replacingOccurrences(of: "{nodePath}", with: try ObjectSerializer.serialize(String.self, request.getNodePath()));
        rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serialize(Int.self, request.getIndex()));
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
        
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        queryItems.append(URLQueryItem(name: "format", value: try ObjectSerializer.serialize(String.self, request.getFormat())));
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serialize(String.self, request.getFolder()!)));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serialize(String.self, request.getStorage()!)));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serialize(String.self, request.getLoadEncoding()!)));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serialize(String.self, request.getPassword()!)));
        }
        if (request.getFontsLocation() != nil) {
            queryItems.append(URLQueryItem(name: "fontsLocation", value: try ObjectSerializer.serialize(String.self, request.getFontsLocation()!)));
        }
        urlBuilder.queryItems = queryItems;
        
        
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: ,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: URL.self, from: response);
    }   
    
    public func renderParagraphWithoutNodePath(request : RenderParagraphWithoutNodePathRequest) throws -> URL {
        var rawPath = "/words/{name}/paragraphs/{index}/render";
        rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serialize(String.self, request.getName()));
        rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serialize(Int.self, request.getIndex()));
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
        
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        queryItems.append(URLQueryItem(name: "format", value: try ObjectSerializer.serialize(String.self, request.getFormat())));
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serialize(String.self, request.getFolder()!)));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serialize(String.self, request.getStorage()!)));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serialize(String.self, request.getLoadEncoding()!)));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serialize(String.self, request.getPassword()!)));
        }
        if (request.getFontsLocation() != nil) {
            queryItems.append(URLQueryItem(name: "fontsLocation", value: try ObjectSerializer.serialize(String.self, request.getFontsLocation()!)));
        }
        urlBuilder.queryItems = queryItems;
        
        
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: ,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: URL.self, from: response);
    }   
    
    public func renderTable(request : RenderTableRequest) throws -> URL {
        var rawPath = "/words/{name}/{nodePath}/tables/{index}/render";
        rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serialize(String.self, request.getName()));
        rawPath = rawPath.replacingOccurrences(of: "{nodePath}", with: try ObjectSerializer.serialize(String.self, request.getNodePath()));
        rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serialize(Int.self, request.getIndex()));
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
        
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        queryItems.append(URLQueryItem(name: "format", value: try ObjectSerializer.serialize(String.self, request.getFormat())));
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serialize(String.self, request.getFolder()!)));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serialize(String.self, request.getStorage()!)));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serialize(String.self, request.getLoadEncoding()!)));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serialize(String.self, request.getPassword()!)));
        }
        if (request.getFontsLocation() != nil) {
            queryItems.append(URLQueryItem(name: "fontsLocation", value: try ObjectSerializer.serialize(String.self, request.getFontsLocation()!)));
        }
        urlBuilder.queryItems = queryItems;
        
        
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: ,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: URL.self, from: response);
    }   
    
    public func renderTableWithoutNodePath(request : RenderTableWithoutNodePathRequest) throws -> URL {
        var rawPath = "/words/{name}/tables/{index}/render";
        rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serialize(String.self, request.getName()));
        rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serialize(Int.self, request.getIndex()));
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
        
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        queryItems.append(URLQueryItem(name: "format", value: try ObjectSerializer.serialize(String.self, request.getFormat())));
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serialize(String.self, request.getFolder()!)));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serialize(String.self, request.getStorage()!)));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serialize(String.self, request.getLoadEncoding()!)));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serialize(String.self, request.getPassword()!)));
        }
        if (request.getFontsLocation() != nil) {
            queryItems.append(URLQueryItem(name: "fontsLocation", value: try ObjectSerializer.serialize(String.self, request.getFontsLocation()!)));
        }
        urlBuilder.queryItems = queryItems;
        
        
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: ,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: URL.self, from: response);
    }   
    
    public func replaceText(request : ReplaceTextRequest) throws -> ReplaceTextResponse {
        var rawPath = "/words/{name}/replaceText";
        rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serialize(String.self, request.getName()));
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
        
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serialize(String.self, request.getFolder()!)));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serialize(String.self, request.getStorage()!)));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serialize(String.self, request.getLoadEncoding()!)));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serialize(String.self, request.getPassword()!)));
        }
        if (request.getDestFileName() != nil) {
            queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serialize(String.self, request.getDestFileName()!)));
        }
        if (request.getRevisionAuthor() != nil) {
            queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serialize(String.self, request.getRevisionAuthor()!)));
        }
        if (request.getRevisionDateTime() != nil) {
            queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serialize(String.self, request.getRevisionDateTime()!)));
        }
        urlBuilder.queryItems = queryItems;
        
        
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: ,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: ReplaceTextResponse.self, from: response);
    }   
    
    public func replaceWithText(request : ReplaceWithTextRequest) throws -> DocumentResponse {
        var rawPath = "/words/{name}/range/{rangeStartIdentifier}/{rangeEndIdentifier}";
        rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serialize(String.self, request.getName()));
        rawPath = rawPath.replacingOccurrences(of: "{rangeStartIdentifier}", with: try ObjectSerializer.serialize(String.self, request.getRangeStartIdentifier()));
        rawPath = rawPath.replacingOccurrences(of: "{rangeEndIdentifier}", with: try ObjectSerializer.serialize(String.self, request.getRangeEndIdentifier()));
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
        
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serialize(String.self, request.getFolder()!)));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serialize(String.self, request.getStorage()!)));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serialize(String.self, request.getLoadEncoding()!)));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serialize(String.self, request.getPassword()!)));
        }
        if (request.getDestFileName() != nil) {
            queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serialize(String.self, request.getDestFileName()!)));
        }
        urlBuilder.queryItems = queryItems;
        
        
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: ,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: DocumentResponse.self, from: response);
    }   
    
    public func resetCache(request : ResetCacheRequest) throws  {
        let rawPath = "/words/fonts/cache";
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
        
        
        
        
        _ = try apiInvoker.invoke(
            url: urlPath,
            method: "PUT",
            body: ,
            headers: nil,
            formParams: nil
        );
        
    }   
    
    public func saveAs(request : SaveAsRequest) throws -> SaveResponse {
        var rawPath = "/words/{name}/saveAs";
        rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serialize(String.self, request.getName()));
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
        
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serialize(String.self, request.getFolder()!)));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serialize(String.self, request.getStorage()!)));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serialize(String.self, request.getLoadEncoding()!)));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serialize(String.self, request.getPassword()!)));
        }
        if (request.getFontsLocation() != nil) {
            queryItems.append(URLQueryItem(name: "fontsLocation", value: try ObjectSerializer.serialize(String.self, request.getFontsLocation()!)));
        }
        urlBuilder.queryItems = queryItems;
        
        
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: ,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: SaveResponse.self, from: response);
    }   
    
    public func saveAsRange(request : SaveAsRangeRequest) throws -> DocumentResponse {
        var rawPath = "/words/{name}/range/{rangeStartIdentifier}/{rangeEndIdentifier}/SaveAs";
        rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serialize(String.self, request.getName()));
        rawPath = rawPath.replacingOccurrences(of: "{rangeStartIdentifier}", with: try ObjectSerializer.serialize(String.self, request.getRangeStartIdentifier()));
        rawPath = rawPath.replacingOccurrences(of: "{rangeEndIdentifier}", with: try ObjectSerializer.serialize(String.self, request.getRangeEndIdentifier()));
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
        
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serialize(String.self, request.getFolder()!)));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serialize(String.self, request.getStorage()!)));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serialize(String.self, request.getLoadEncoding()!)));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serialize(String.self, request.getPassword()!)));
        }
        urlBuilder.queryItems = queryItems;
        
        
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: ,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: DocumentResponse.self, from: response);
    }   
    
    public func saveAsTiff(request : SaveAsTiffRequest) throws -> SaveResponse {
        var rawPath = "/words/{name}/saveAs/tiff";
        rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serialize(String.self, request.getName()));
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
        
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serialize(String.self, request.getFolder()!)));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serialize(String.self, request.getStorage()!)));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serialize(String.self, request.getLoadEncoding()!)));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serialize(String.self, request.getPassword()!)));
        }
        if (request.getUseAntiAliasing() != nil) {
            queryItems.append(URLQueryItem(name: "useAntiAliasing", value: try ObjectSerializer.serialize(Bool.self, request.getUseAntiAliasing()!)));
        }
        if (request.getUseHighQualityRendering() != nil) {
            queryItems.append(URLQueryItem(name: "useHighQualityRendering", value: try ObjectSerializer.serialize(Bool.self, request.getUseHighQualityRendering()!)));
        }
        if (request.getImageBrightness() != nil) {
            queryItems.append(URLQueryItem(name: "imageBrightness", value: try ObjectSerializer.serialize(Double.self, request.getImageBrightness()!)));
        }
        if (request.getImageColorMode() != nil) {
            queryItems.append(URLQueryItem(name: "imageColorMode", value: try ObjectSerializer.serialize(String.self, request.getImageColorMode()!)));
        }
        if (request.getImageContrast() != nil) {
            queryItems.append(URLQueryItem(name: "imageContrast", value: try ObjectSerializer.serialize(Double.self, request.getImageContrast()!)));
        }
        if (request.getNumeralFormat() != nil) {
            queryItems.append(URLQueryItem(name: "numeralFormat", value: try ObjectSerializer.serialize(String.self, request.getNumeralFormat()!)));
        }
        if (request.getPageCount() != nil) {
            queryItems.append(URLQueryItem(name: "pageCount", value: try ObjectSerializer.serialize(Int.self, request.getPageCount()!)));
        }
        if (request.getPageIndex() != nil) {
            queryItems.append(URLQueryItem(name: "pageIndex", value: try ObjectSerializer.serialize(Int.self, request.getPageIndex()!)));
        }
        if (request.getPaperColor() != nil) {
            queryItems.append(URLQueryItem(name: "paperColor", value: try ObjectSerializer.serialize(String.self, request.getPaperColor()!)));
        }
        if (request.getPixelFormat() != nil) {
            queryItems.append(URLQueryItem(name: "pixelFormat", value: try ObjectSerializer.serialize(String.self, request.getPixelFormat()!)));
        }
        if (request.getResolution() != nil) {
            queryItems.append(URLQueryItem(name: "resolution", value: try ObjectSerializer.serialize(Double.self, request.getResolution()!)));
        }
        if (request.getScale() != nil) {
            queryItems.append(URLQueryItem(name: "scale", value: try ObjectSerializer.serialize(Double.self, request.getScale()!)));
        }
        if (request.getTiffCompression() != nil) {
            queryItems.append(URLQueryItem(name: "tiffCompression", value: try ObjectSerializer.serialize(String.self, request.getTiffCompression()!)));
        }
        if (request.getDmlRenderingMode() != nil) {
            queryItems.append(URLQueryItem(name: "dmlRenderingMode", value: try ObjectSerializer.serialize(String.self, request.getDmlRenderingMode()!)));
        }
        if (request.getDmlEffectsRenderingMode() != nil) {
            queryItems.append(URLQueryItem(name: "dmlEffectsRenderingMode", value: try ObjectSerializer.serialize(String.self, request.getDmlEffectsRenderingMode()!)));
        }
        if (request.getTiffBinarizationMethod() != nil) {
            queryItems.append(URLQueryItem(name: "tiffBinarizationMethod", value: try ObjectSerializer.serialize(String.self, request.getTiffBinarizationMethod()!)));
        }
        if (request.getZipOutput() != nil) {
            queryItems.append(URLQueryItem(name: "zipOutput", value: try ObjectSerializer.serialize(Bool.self, request.getZipOutput()!)));
        }
        if (request.getFontsLocation() != nil) {
            queryItems.append(URLQueryItem(name: "fontsLocation", value: try ObjectSerializer.serialize(String.self, request.getFontsLocation()!)));
        }
        urlBuilder.queryItems = queryItems;
        
        
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: ,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: SaveResponse.self, from: response);
    }   
    
    public func search(request : SearchRequest) throws -> SearchResponse {
        var rawPath = "/words/{name}/search";
        rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serialize(String.self, request.getName()));
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
        
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        queryItems.append(URLQueryItem(name: "pattern", value: try ObjectSerializer.serialize(String.self, request.getPattern())));
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serialize(String.self, request.getFolder()!)));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serialize(String.self, request.getStorage()!)));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serialize(String.self, request.getLoadEncoding()!)));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serialize(String.self, request.getPassword()!)));
        }
        urlBuilder.queryItems = queryItems;
        
        
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: ,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: SearchResponse.self, from: response);
    }   
    
    public func splitDocument(request : SplitDocumentRequest) throws -> SplitDocumentResponse {
        var rawPath = "/words/{name}/split";
        rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serialize(String.self, request.getName()));
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
        
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serialize(String.self, request.getFolder()!)));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serialize(String.self, request.getStorage()!)));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serialize(String.self, request.getLoadEncoding()!)));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serialize(String.self, request.getPassword()!)));
        }
        if (request.getDestFileName() != nil) {
            queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serialize(String.self, request.getDestFileName()!)));
        }
        if (request.getFormat() != nil) {
            queryItems.append(URLQueryItem(name: "format", value: try ObjectSerializer.serialize(String.self, request.getFormat()!)));
        }
        if (request.getFrom() != nil) {
            queryItems.append(URLQueryItem(name: "from", value: try ObjectSerializer.serialize(Int.self, request.getFrom()!)));
        }
        if (request.getTo() != nil) {
            queryItems.append(URLQueryItem(name: "to", value: try ObjectSerializer.serialize(Int.self, request.getTo()!)));
        }
        if (request.getZipOutput() != nil) {
            queryItems.append(URLQueryItem(name: "zipOutput", value: try ObjectSerializer.serialize(Bool.self, request.getZipOutput()!)));
        }
        if (request.getFontsLocation() != nil) {
            queryItems.append(URLQueryItem(name: "fontsLocation", value: try ObjectSerializer.serialize(String.self, request.getFontsLocation()!)));
        }
        urlBuilder.queryItems = queryItems;
        
        
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: ,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: SplitDocumentResponse.self, from: response);
    }   
    
    public func unprotectDocument(request : UnprotectDocumentRequest) throws -> ProtectionDataResponse {
        var rawPath = "/words/{name}/protection";
        rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serialize(String.self, request.getName()));
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
        
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serialize(String.self, request.getFolder()!)));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serialize(String.self, request.getStorage()!)));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serialize(String.self, request.getLoadEncoding()!)));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serialize(String.self, request.getPassword()!)));
        }
        if (request.getDestFileName() != nil) {
            queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serialize(String.self, request.getDestFileName()!)));
        }
        urlBuilder.queryItems = queryItems;
        
        
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: ,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: ProtectionDataResponse.self, from: response);
    }   
    
    public func updateBookmark(request : UpdateBookmarkRequest) throws -> BookmarkResponse {
        var rawPath = "/words/{name}/bookmarks/{bookmarkName}";
        rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serialize(String.self, request.getName()));
        rawPath = rawPath.replacingOccurrences(of: "{bookmarkName}", with: try ObjectSerializer.serialize(String.self, request.getBookmarkName()));
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
        
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serialize(String.self, request.getFolder()!)));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serialize(String.self, request.getStorage()!)));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serialize(String.self, request.getLoadEncoding()!)));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serialize(String.self, request.getPassword()!)));
        }
        if (request.getDestFileName() != nil) {
            queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serialize(String.self, request.getDestFileName()!)));
        }
        if (request.getRevisionAuthor() != nil) {
            queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serialize(String.self, request.getRevisionAuthor()!)));
        }
        if (request.getRevisionDateTime() != nil) {
            queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serialize(String.self, request.getRevisionDateTime()!)));
        }
        urlBuilder.queryItems = queryItems;
        
        
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: ,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: BookmarkResponse.self, from: response);
    }   
    
    public func updateBorder(request : UpdateBorderRequest) throws -> BorderResponse {
        var rawPath = "/words/{name}/{nodePath}/borders/{borderType}";
        rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serialize(String.self, request.getName()));
        rawPath = rawPath.replacingOccurrences(of: "{nodePath}", with: try ObjectSerializer.serialize(String.self, request.getNodePath()));
        rawPath = rawPath.replacingOccurrences(of: "{borderType}", with: try ObjectSerializer.serialize(String.self, request.getBorderType()));
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
        
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serialize(String.self, request.getFolder()!)));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serialize(String.self, request.getStorage()!)));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serialize(String.self, request.getLoadEncoding()!)));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serialize(String.self, request.getPassword()!)));
        }
        if (request.getDestFileName() != nil) {
            queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serialize(String.self, request.getDestFileName()!)));
        }
        if (request.getRevisionAuthor() != nil) {
            queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serialize(String.self, request.getRevisionAuthor()!)));
        }
        if (request.getRevisionDateTime() != nil) {
            queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serialize(String.self, request.getRevisionDateTime()!)));
        }
        urlBuilder.queryItems = queryItems;
        
        
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: ,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: BorderResponse.self, from: response);
    }   
    
    public func updateComment(request : UpdateCommentRequest) throws -> CommentResponse {
        var rawPath = "/words/{name}/comments/{commentIndex}";
        rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serialize(String.self, request.getName()));
        rawPath = rawPath.replacingOccurrences(of: "{commentIndex}", with: try ObjectSerializer.serialize(Int.self, request.getCommentIndex()));
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
        
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serialize(String.self, request.getFolder()!)));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serialize(String.self, request.getStorage()!)));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serialize(String.self, request.getLoadEncoding()!)));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serialize(String.self, request.getPassword()!)));
        }
        if (request.getDestFileName() != nil) {
            queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serialize(String.self, request.getDestFileName()!)));
        }
        if (request.getRevisionAuthor() != nil) {
            queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serialize(String.self, request.getRevisionAuthor()!)));
        }
        if (request.getRevisionDateTime() != nil) {
            queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serialize(String.self, request.getRevisionDateTime()!)));
        }
        urlBuilder.queryItems = queryItems;
        
        
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: ,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: CommentResponse.self, from: response);
    }   
    
    public func updateDrawingObject(request : UpdateDrawingObjectRequest) throws -> DrawingObjectResponse {
        var rawPath = "/words/{name}/{nodePath}/drawingObjects/{index}";
        rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serialize(String.self, request.getName()));
        rawPath = rawPath.replacingOccurrences(of: "{nodePath}", with: try ObjectSerializer.serialize(String.self, request.getNodePath()));
        rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serialize(Int.self, request.getIndex()));
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
        
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serialize(String.self, request.getFolder()!)));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serialize(String.self, request.getStorage()!)));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serialize(String.self, request.getLoadEncoding()!)));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serialize(String.self, request.getPassword()!)));
        }
        if (request.getDestFileName() != nil) {
            queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serialize(String.self, request.getDestFileName()!)));
        }
        if (request.getRevisionAuthor() != nil) {
            queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serialize(String.self, request.getRevisionAuthor()!)));
        }
        if (request.getRevisionDateTime() != nil) {
            queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serialize(String.self, request.getRevisionDateTime()!)));
        }
        urlBuilder.queryItems = queryItems;
        
        
        var formParams : Dictionary<String, Data>();
        formParams["drawingObject", try ObjectSerializer.serialize(String.self, request.getDrawingObject())];
        formParams["imageFile", try ObjectSerializer.serialize(URL.self, request.getImageFile())];
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: ,
            headers: nil,
            formParams: formParams
        );
        return try ObjectSerializer.deserialize(type: DrawingObjectResponse.self, from: response);
    }   
    
    public func updateDrawingObjectWithoutNodePath(request : UpdateDrawingObjectWithoutNodePathRequest) throws -> DrawingObjectResponse {
        var rawPath = "/words/{name}/drawingObjects/{index}";
        rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serialize(String.self, request.getName()));
        rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serialize(Int.self, request.getIndex()));
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
        
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serialize(String.self, request.getFolder()!)));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serialize(String.self, request.getStorage()!)));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serialize(String.self, request.getLoadEncoding()!)));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serialize(String.self, request.getPassword()!)));
        }
        if (request.getDestFileName() != nil) {
            queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serialize(String.self, request.getDestFileName()!)));
        }
        if (request.getRevisionAuthor() != nil) {
            queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serialize(String.self, request.getRevisionAuthor()!)));
        }
        if (request.getRevisionDateTime() != nil) {
            queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serialize(String.self, request.getRevisionDateTime()!)));
        }
        urlBuilder.queryItems = queryItems;
        
        
        var formParams : Dictionary<String, Data>();
        formParams["drawingObject", try ObjectSerializer.serialize(String.self, request.getDrawingObject())];
        formParams["imageFile", try ObjectSerializer.serialize(URL.self, request.getImageFile())];
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: ,
            headers: nil,
            formParams: formParams
        );
        return try ObjectSerializer.deserialize(type: DrawingObjectResponse.self, from: response);
    }   
    
    public func updateField(request : UpdateFieldRequest) throws -> FieldResponse {
        var rawPath = "/words/{name}/{nodePath}/fields/{index}";
        rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serialize(String.self, request.getName()));
        rawPath = rawPath.replacingOccurrences(of: "{nodePath}", with: try ObjectSerializer.serialize(String.self, request.getNodePath()));
        rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serialize(Int.self, request.getIndex()));
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
        
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serialize(String.self, request.getFolder()!)));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serialize(String.self, request.getStorage()!)));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serialize(String.self, request.getLoadEncoding()!)));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serialize(String.self, request.getPassword()!)));
        }
        if (request.getDestFileName() != nil) {
            queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serialize(String.self, request.getDestFileName()!)));
        }
        if (request.getRevisionAuthor() != nil) {
            queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serialize(String.self, request.getRevisionAuthor()!)));
        }
        if (request.getRevisionDateTime() != nil) {
            queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serialize(String.self, request.getRevisionDateTime()!)));
        }
        urlBuilder.queryItems = queryItems;
        
        
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: ,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: FieldResponse.self, from: response);
    }   
    
    public func updateFields(request : UpdateFieldsRequest) throws -> DocumentResponse {
        var rawPath = "/words/{name}/updateFields";
        rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serialize(String.self, request.getName()));
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
        
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serialize(String.self, request.getFolder()!)));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serialize(String.self, request.getStorage()!)));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serialize(String.self, request.getLoadEncoding()!)));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serialize(String.self, request.getPassword()!)));
        }
        if (request.getDestFileName() != nil) {
            queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serialize(String.self, request.getDestFileName()!)));
        }
        urlBuilder.queryItems = queryItems;
        
        
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: ,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: DocumentResponse.self, from: response);
    }   
    
    public func updateFootnote(request : UpdateFootnoteRequest) throws -> FootnoteResponse {
        var rawPath = "/words/{name}/{nodePath}/footnotes/{index}";
        rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serialize(String.self, request.getName()));
        rawPath = rawPath.replacingOccurrences(of: "{nodePath}", with: try ObjectSerializer.serialize(String.self, request.getNodePath()));
        rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serialize(Int.self, request.getIndex()));
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
        
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serialize(String.self, request.getFolder()!)));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serialize(String.self, request.getStorage()!)));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serialize(String.self, request.getLoadEncoding()!)));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serialize(String.self, request.getPassword()!)));
        }
        if (request.getDestFileName() != nil) {
            queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serialize(String.self, request.getDestFileName()!)));
        }
        if (request.getRevisionAuthor() != nil) {
            queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serialize(String.self, request.getRevisionAuthor()!)));
        }
        if (request.getRevisionDateTime() != nil) {
            queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serialize(String.self, request.getRevisionDateTime()!)));
        }
        urlBuilder.queryItems = queryItems;
        
        
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: ,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: FootnoteResponse.self, from: response);
    }   
    
    public func updateFootnoteWithoutNodePath(request : UpdateFootnoteWithoutNodePathRequest) throws -> FootnoteResponse {
        var rawPath = "/words/{name}/footnotes/{index}";
        rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serialize(String.self, request.getName()));
        rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serialize(Int.self, request.getIndex()));
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
        
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serialize(String.self, request.getFolder()!)));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serialize(String.self, request.getStorage()!)));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serialize(String.self, request.getLoadEncoding()!)));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serialize(String.self, request.getPassword()!)));
        }
        if (request.getDestFileName() != nil) {
            queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serialize(String.self, request.getDestFileName()!)));
        }
        if (request.getRevisionAuthor() != nil) {
            queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serialize(String.self, request.getRevisionAuthor()!)));
        }
        if (request.getRevisionDateTime() != nil) {
            queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serialize(String.self, request.getRevisionDateTime()!)));
        }
        urlBuilder.queryItems = queryItems;
        
        
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: ,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: FootnoteResponse.self, from: response);
    }   
    
    public func updateFormField(request : UpdateFormFieldRequest) throws -> FormFieldResponse {
        var rawPath = "/words/{name}/{nodePath}/formfields/{index}";
        rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serialize(String.self, request.getName()));
        rawPath = rawPath.replacingOccurrences(of: "{nodePath}", with: try ObjectSerializer.serialize(String.self, request.getNodePath()));
        rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serialize(Int.self, request.getIndex()));
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
        
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serialize(String.self, request.getFolder()!)));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serialize(String.self, request.getStorage()!)));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serialize(String.self, request.getLoadEncoding()!)));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serialize(String.self, request.getPassword()!)));
        }
        if (request.getDestFileName() != nil) {
            queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serialize(String.self, request.getDestFileName()!)));
        }
        if (request.getRevisionAuthor() != nil) {
            queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serialize(String.self, request.getRevisionAuthor()!)));
        }
        if (request.getRevisionDateTime() != nil) {
            queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serialize(String.self, request.getRevisionDateTime()!)));
        }
        urlBuilder.queryItems = queryItems;
        
        
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: ,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: FormFieldResponse.self, from: response);
    }   
    
    public func updateFormFieldWithoutNodePath(request : UpdateFormFieldWithoutNodePathRequest) throws -> FormFieldResponse {
        var rawPath = "/words/{name}/formfields/{index}";
        rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serialize(String.self, request.getName()));
        rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serialize(Int.self, request.getIndex()));
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
        
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serialize(String.self, request.getFolder()!)));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serialize(String.self, request.getStorage()!)));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serialize(String.self, request.getLoadEncoding()!)));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serialize(String.self, request.getPassword()!)));
        }
        if (request.getDestFileName() != nil) {
            queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serialize(String.self, request.getDestFileName()!)));
        }
        if (request.getRevisionAuthor() != nil) {
            queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serialize(String.self, request.getRevisionAuthor()!)));
        }
        if (request.getRevisionDateTime() != nil) {
            queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serialize(String.self, request.getRevisionDateTime()!)));
        }
        urlBuilder.queryItems = queryItems;
        
        
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: ,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: FormFieldResponse.self, from: response);
    }   
    
    public func updateParagraphFormat(request : UpdateParagraphFormatRequest) throws -> ParagraphFormatResponse {
        var rawPath = "/words/{name}/{nodePath}/paragraphs/{index}/format";
        rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serialize(String.self, request.getName()));
        rawPath = rawPath.replacingOccurrences(of: "{nodePath}", with: try ObjectSerializer.serialize(String.self, request.getNodePath()));
        rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serialize(Int.self, request.getIndex()));
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
        
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serialize(String.self, request.getFolder()!)));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serialize(String.self, request.getStorage()!)));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serialize(String.self, request.getLoadEncoding()!)));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serialize(String.self, request.getPassword()!)));
        }
        if (request.getDestFileName() != nil) {
            queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serialize(String.self, request.getDestFileName()!)));
        }
        if (request.getRevisionAuthor() != nil) {
            queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serialize(String.self, request.getRevisionAuthor()!)));
        }
        if (request.getRevisionDateTime() != nil) {
            queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serialize(String.self, request.getRevisionDateTime()!)));
        }
        urlBuilder.queryItems = queryItems;
        
        
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: ,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: ParagraphFormatResponse.self, from: response);
    }   
    
    public func updateRun(request : UpdateRunRequest) throws -> RunResponse {
        var rawPath = "/words/{name}/{paragraphPath}/runs/{index}";
        rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serialize(String.self, request.getName()));
        rawPath = rawPath.replacingOccurrences(of: "{paragraphPath}", with: try ObjectSerializer.serialize(String.self, request.getParagraphPath()));
        rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serialize(Int.self, request.getIndex()));
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
        
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serialize(String.self, request.getFolder()!)));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serialize(String.self, request.getStorage()!)));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serialize(String.self, request.getLoadEncoding()!)));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serialize(String.self, request.getPassword()!)));
        }
        if (request.getDestFileName() != nil) {
            queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serialize(String.self, request.getDestFileName()!)));
        }
        if (request.getRevisionAuthor() != nil) {
            queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serialize(String.self, request.getRevisionAuthor()!)));
        }
        if (request.getRevisionDateTime() != nil) {
            queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serialize(String.self, request.getRevisionDateTime()!)));
        }
        urlBuilder.queryItems = queryItems;
        
        
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: ,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: RunResponse.self, from: response);
    }   
    
    public func updateRunFont(request : UpdateRunFontRequest) throws -> FontResponse {
        var rawPath = "/words/{name}/{paragraphPath}/runs/{index}/font";
        rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serialize(String.self, request.getName()));
        rawPath = rawPath.replacingOccurrences(of: "{paragraphPath}", with: try ObjectSerializer.serialize(String.self, request.getParagraphPath()));
        rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serialize(Int.self, request.getIndex()));
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
        
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serialize(String.self, request.getFolder()!)));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serialize(String.self, request.getStorage()!)));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serialize(String.self, request.getLoadEncoding()!)));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serialize(String.self, request.getPassword()!)));
        }
        if (request.getDestFileName() != nil) {
            queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serialize(String.self, request.getDestFileName()!)));
        }
        if (request.getRevisionAuthor() != nil) {
            queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serialize(String.self, request.getRevisionAuthor()!)));
        }
        if (request.getRevisionDateTime() != nil) {
            queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serialize(String.self, request.getRevisionDateTime()!)));
        }
        urlBuilder.queryItems = queryItems;
        
        
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: ,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: FontResponse.self, from: response);
    }   
    
    public func updateSectionPageSetup(request : UpdateSectionPageSetupRequest) throws -> SectionPageSetupResponse {
        var rawPath = "/words/{name}/sections/{sectionIndex}/pageSetup";
        rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serialize(String.self, request.getName()));
        rawPath = rawPath.replacingOccurrences(of: "{sectionIndex}", with: try ObjectSerializer.serialize(Int.self, request.getSectionIndex()));
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
        
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serialize(String.self, request.getFolder()!)));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serialize(String.self, request.getStorage()!)));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serialize(String.self, request.getLoadEncoding()!)));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serialize(String.self, request.getPassword()!)));
        }
        if (request.getDestFileName() != nil) {
            queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serialize(String.self, request.getDestFileName()!)));
        }
        if (request.getRevisionAuthor() != nil) {
            queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serialize(String.self, request.getRevisionAuthor()!)));
        }
        if (request.getRevisionDateTime() != nil) {
            queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serialize(String.self, request.getRevisionDateTime()!)));
        }
        urlBuilder.queryItems = queryItems;
        
        
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: ,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: SectionPageSetupResponse.self, from: response);
    }   
    
    public func updateTableCellFormat(request : UpdateTableCellFormatRequest) throws -> TableCellFormatResponse {
        var rawPath = "/words/{name}/{tableRowPath}/cells/{index}/cellformat";
        rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serialize(String.self, request.getName()));
        rawPath = rawPath.replacingOccurrences(of: "{tableRowPath}", with: try ObjectSerializer.serialize(String.self, request.getTableRowPath()));
        rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serialize(Int.self, request.getIndex()));
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
        
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serialize(String.self, request.getFolder()!)));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serialize(String.self, request.getStorage()!)));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serialize(String.self, request.getLoadEncoding()!)));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serialize(String.self, request.getPassword()!)));
        }
        if (request.getDestFileName() != nil) {
            queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serialize(String.self, request.getDestFileName()!)));
        }
        if (request.getRevisionAuthor() != nil) {
            queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serialize(String.self, request.getRevisionAuthor()!)));
        }
        if (request.getRevisionDateTime() != nil) {
            queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serialize(String.self, request.getRevisionDateTime()!)));
        }
        urlBuilder.queryItems = queryItems;
        
        
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: ,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: TableCellFormatResponse.self, from: response);
    }   
    
    public func updateTableProperties(request : UpdateTablePropertiesRequest) throws -> TablePropertiesResponse {
        var rawPath = "/words/{name}/{nodePath}/tables/{index}/properties";
        rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serialize(String.self, request.getName()));
        rawPath = rawPath.replacingOccurrences(of: "{nodePath}", with: try ObjectSerializer.serialize(String.self, request.getNodePath()));
        rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serialize(Int.self, request.getIndex()));
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
        
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serialize(String.self, request.getFolder()!)));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serialize(String.self, request.getStorage()!)));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serialize(String.self, request.getLoadEncoding()!)));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serialize(String.self, request.getPassword()!)));
        }
        if (request.getDestFileName() != nil) {
            queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serialize(String.self, request.getDestFileName()!)));
        }
        if (request.getRevisionAuthor() != nil) {
            queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serialize(String.self, request.getRevisionAuthor()!)));
        }
        if (request.getRevisionDateTime() != nil) {
            queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serialize(String.self, request.getRevisionDateTime()!)));
        }
        urlBuilder.queryItems = queryItems;
        
        
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: ,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: TablePropertiesResponse.self, from: response);
    }   
    
    public func updateTablePropertiesWithoutNodePath(request : UpdateTablePropertiesWithoutNodePathRequest) throws -> TablePropertiesResponse {
        var rawPath = "/words/{name}/tables/{index}/properties";
        rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serialize(String.self, request.getName()));
        rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serialize(Int.self, request.getIndex()));
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
        
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serialize(String.self, request.getFolder()!)));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serialize(String.self, request.getStorage()!)));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serialize(String.self, request.getLoadEncoding()!)));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serialize(String.self, request.getPassword()!)));
        }
        if (request.getDestFileName() != nil) {
            queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serialize(String.self, request.getDestFileName()!)));
        }
        if (request.getRevisionAuthor() != nil) {
            queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serialize(String.self, request.getRevisionAuthor()!)));
        }
        if (request.getRevisionDateTime() != nil) {
            queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serialize(String.self, request.getRevisionDateTime()!)));
        }
        urlBuilder.queryItems = queryItems;
        
        
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: ,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: TablePropertiesResponse.self, from: response);
    }   
    
    public func updateTableRowFormat(request : UpdateTableRowFormatRequest) throws -> TableRowFormatResponse {
        var rawPath = "/words/{name}/{tablePath}/rows/{index}/rowformat";
        rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serialize(String.self, request.getName()));
        rawPath = rawPath.replacingOccurrences(of: "{tablePath}", with: try ObjectSerializer.serialize(String.self, request.getTablePath()));
        rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serialize(Int.self, request.getIndex()));
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
        
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        if (request.getFolder() != nil) {
            queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serialize(String.self, request.getFolder()!)));
        }
        if (request.getStorage() != nil) {
            queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serialize(String.self, request.getStorage()!)));
        }
        if (request.getLoadEncoding() != nil) {
            queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serialize(String.self, request.getLoadEncoding()!)));
        }
        if (request.getPassword() != nil) {
            queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serialize(String.self, request.getPassword()!)));
        }
        if (request.getDestFileName() != nil) {
            queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serialize(String.self, request.getDestFileName()!)));
        }
        if (request.getRevisionAuthor() != nil) {
            queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serialize(String.self, request.getRevisionAuthor()!)));
        }
        if (request.getRevisionDateTime() != nil) {
            queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serialize(String.self, request.getRevisionDateTime()!)));
        }
        urlBuilder.queryItems = queryItems;
        
        
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: ,
            headers: nil,
            formParams: nil
        );
        return try ObjectSerializer.deserialize(type: TableRowFormatResponse.self, from: response);
    }   
    
    public func uploadFile(request : UploadFileRequest) throws -> FilesUploadResult {
        var rawPath = "/words/storage/file/{path}";
        rawPath = rawPath.replacingOccurrences(of: "{path}", with: try ObjectSerializer.serialize(String.self, request.getPath()));
        let urlPath = self.configuration.getApiRootUrl().appendingPathComponent(rawPath);
        
        var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
        var queryItems : [URLQueryItem] = [];
        if (request.getStorageName() != nil) {
            queryItems.append(URLQueryItem(name: "storageName", value: try ObjectSerializer.serialize(String.self, request.getStorageName()!)));
        }
        urlBuilder.queryItems = queryItems;
        
        
        var formParams : Dictionary<String, Data>();
        formParams["fileContent", try ObjectSerializer.serialize(URL.self, request.getFileContent())];
        
        let response = try apiInvoker.invoke(
            url: urlBuilder.url!,
            method: "PUT",
            body: ,
            headers: nil,
            formParams: formParams
        );
        return try ObjectSerializer.deserialize(type: FilesUploadResult.self, from: response);
    }   
}

