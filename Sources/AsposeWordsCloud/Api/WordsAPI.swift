/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="WordsAPI.swift">
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

// Aspose.Words.Cloud API for Swift
public class WordsAPI {
    private let configuration : Configuration;
    private let apiInvoker : ApiInvoker;

    // Initializes a new instance of the WordsAPI class based on Configuration object.
    public init(configuration : Configuration) {
        self.configuration = configuration;
        self.apiInvoker = ApiInvoker(configuration: configuration);
    }

    // Initializes a new instance of the WordsAPI class based on AppSid and AppKey.
    public init(appSid: String, appKey: String) {
        self.configuration = Configuration(appSid: appSid, appKey: appKey);
        self.apiInvoker = ApiInvoker(configuration: configuration);
    }

    // Async representation of acceptAllRevisions method
    // Accepts all revisions in document.
    public func acceptAllRevisions(request : AcceptAllRevisionsRequest, callback : @escaping (_ response : RevisionsModificationResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/revisions/acceptAll";
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

            if (request.getDestFileName() != nil) {
                queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serializeToString(value: request.getDestFileName()!)));
            }

            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }

            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "PUT",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : RevisionsModificationResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: RevisionsModificationResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of acceptAllRevisions method
    // Accepts all revisions in document.
    public func acceptAllRevisions(request : AcceptAllRevisionsRequest) throws -> RevisionsModificationResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : RevisionsModificationResponse? = nil;
        var responseError : Error? = nil;
        self.acceptAllRevisions(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        _ = semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of appendDocument method
    // Appends documents to original document.
    public func appendDocument(request : AppendDocumentRequest, callback : @escaping (_ response : DocumentResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/appendDocument";
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

            if (request.getDestFileName() != nil) {
                queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serializeToString(value: request.getDestFileName()!)));
            }

            if (request.getRevisionAuthor() != nil) {
                queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serializeToString(value: request.getRevisionAuthor()!)));
            }

            if (request.getRevisionDateTime() != nil) {
                queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serializeToString(value: request.getRevisionDateTime()!)));
            }

            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }

            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "PUT",
                body: try ObjectSerializer.serializeBody(value: request.getDocumentList()),
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : DocumentResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: DocumentResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of appendDocument method
    // Appends documents to original document.
    public func appendDocument(request : AppendDocumentRequest) throws -> DocumentResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : DocumentResponse? = nil;
        var responseError : Error? = nil;
        self.appendDocument(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        _ = semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of applyStyleToDocumentElement method
    // Apply a style to the document node.
    public func applyStyleToDocumentElement(request : ApplyStyleToDocumentElementRequest, callback : @escaping (_ response : WordsResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/{styledNodePath}/style";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));

            rawPath = rawPath.replacingOccurrences(of: "{styledNodePath}", with: try ObjectSerializer.serializeToString(value: request.getStyledNodePath()));

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

            if (request.getDestFileName() != nil) {
                queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serializeToString(value: request.getDestFileName()!)));
            }

            if (request.getRevisionAuthor() != nil) {
                queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serializeToString(value: request.getRevisionAuthor()!)));
            }

            if (request.getRevisionDateTime() != nil) {
                queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serializeToString(value: request.getRevisionDateTime()!)));
            }

            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }

            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "PUT",
                body: try ObjectSerializer.serializeBody(value: request.getStyleApply()),
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : WordsResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: WordsResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of applyStyleToDocumentElement method
    // Apply a style to the document node.
    public func applyStyleToDocumentElement(request : ApplyStyleToDocumentElementRequest) throws -> WordsResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : WordsResponse? = nil;
        var responseError : Error? = nil;
        self.applyStyleToDocumentElement(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        _ = semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of buildReport method
    // Executes document "build report" operation.
    public func buildReport(request : BuildReportRequest, callback : @escaping (_ response : DocumentResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/buildReport";
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

            if (request.getDestFileName() != nil) {
                queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serializeToString(value: request.getDestFileName()!)));
            }

            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }
            var formParams : [RequestFormParam] = [];
            formParams.append(RequestFormParam(name: "data", body: try ObjectSerializer.serialize(value: request.getData())));

            formParams.append(RequestFormParam(name: "reportEngineSettings", body: try ObjectSerializer.serialize(value: request.getReportEngineSettings())));


            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "PUT",
                body: nil,
                headers: nil,
                formParams: formParams,
                callback: { response, error in
                    var responseObject : DocumentResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: DocumentResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of buildReport method
    // Executes document "build report" operation.
    public func buildReport(request : BuildReportRequest) throws -> DocumentResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : DocumentResponse? = nil;
        var responseError : Error? = nil;
        self.buildReport(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        _ = semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of buildReportOnline method
    // Executes document "build report" online operation.
    public func buildReportOnline(request : BuildReportOnlineRequest, callback : @escaping (_ response : Data?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/buildReport";
            rawPath = rawPath.replacingOccurrences(of: "//", with: "/");

            let urlPath = (try self.configuration.getApiRootUrl()).appendingPathComponent(rawPath);
            var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
            var queryItems : [URLQueryItem] = [];
            if (request.getDocumentFileName() != nil) {
                queryItems.append(URLQueryItem(name: "documentFileName", value: try ObjectSerializer.serializeToString(value: request.getDocumentFileName()!)));
            }

            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }
            var formParams : [RequestFormParam] = [];
            formParams.append(RequestFormParam(name: "template", body: try ObjectSerializer.serializeFile(value: request.getTemplate())));

            formParams.append(RequestFormParam(name: "data", body: try ObjectSerializer.serialize(value: request.getData())));

            formParams.append(RequestFormParam(name: "reportEngineSettings", body: try ObjectSerializer.serialize(value: request.getReportEngineSettings())));


            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "PUT",
                body: nil,
                headers: nil,
                formParams: formParams,
                callback: { response, error in
                    callback(response, error);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of buildReportOnline method
    // Executes document "build report" online operation.
    public func buildReportOnline(request : BuildReportOnlineRequest) throws -> Data {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : Data? = nil;
        var responseError : Error? = nil;
        self.buildReportOnline(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        _ = semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of classify method
    // Classifies raw text.
    public func classify(request : ClassifyRequest, callback : @escaping (_ response : ClassificationResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/classify";
            rawPath = rawPath.replacingOccurrences(of: "//", with: "/");

            let urlPath = (try self.configuration.getApiRootUrl()).appendingPathComponent(rawPath);
            var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
            var queryItems : [URLQueryItem] = [];
            if (request.getBestClassesCount() != nil) {
                queryItems.append(URLQueryItem(name: "bestClassesCount", value: try ObjectSerializer.serializeToString(value: request.getBestClassesCount()!)));
            }

            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }

            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "PUT",
                body: try ObjectSerializer.serializeBody(value: request.getText()),
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : ClassificationResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: ClassificationResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of classify method
    // Classifies raw text.
    public func classify(request : ClassifyRequest) throws -> ClassificationResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : ClassificationResponse? = nil;
        var responseError : Error? = nil;
        self.classify(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        _ = semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of classifyDocument method
    // Classifies document.
    public func classifyDocument(request : ClassifyDocumentRequest, callback : @escaping (_ response : ClassificationResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{documentName}/classify";
            rawPath = rawPath.replacingOccurrences(of: "{documentName}", with: try ObjectSerializer.serializeToString(value: request.getDocumentName()));

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

            if (request.getBestClassesCount() != nil) {
                queryItems.append(URLQueryItem(name: "bestClassesCount", value: try ObjectSerializer.serializeToString(value: request.getBestClassesCount()!)));
            }

            if (request.getTaxonomy() != nil) {
                queryItems.append(URLQueryItem(name: "taxonomy", value: try ObjectSerializer.serializeToString(value: request.getTaxonomy()!)));
            }

            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }

            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "GET",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : ClassificationResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: ClassificationResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of classifyDocument method
    // Classifies document.
    public func classifyDocument(request : ClassifyDocumentRequest) throws -> ClassificationResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : ClassificationResponse? = nil;
        var responseError : Error? = nil;
        self.classifyDocument(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        _ = semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of compareDocument method
    // Compares document with original document.
    public func compareDocument(request : CompareDocumentRequest, callback : @escaping (_ response : DocumentResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/compareDocument";
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

            if (request.getDestFileName() != nil) {
                queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serializeToString(value: request.getDestFileName()!)));
            }

            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }

            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "PUT",
                body: try ObjectSerializer.serializeBody(value: request.getCompareData()),
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : DocumentResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: DocumentResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of compareDocument method
    // Compares document with original document.
    public func compareDocument(request : CompareDocumentRequest) throws -> DocumentResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : DocumentResponse? = nil;
        var responseError : Error? = nil;
        self.compareDocument(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        _ = semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of convertDocument method
    // Converts document from the request's content to the specified format.
    public func convertDocument(request : ConvertDocumentRequest, callback : @escaping (_ response : Data?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/convert";
            rawPath = rawPath.replacingOccurrences(of: "//", with: "/");

            let urlPath = (try self.configuration.getApiRootUrl()).appendingPathComponent(rawPath);
            var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
            var queryItems : [URLQueryItem] = [];
            queryItems.append(URLQueryItem(name: "format", value: try ObjectSerializer.serializeToString(value: request.getFormat())));

            if (request.getStorage() != nil) {
                queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serializeToString(value: request.getStorage()!)));
            }

            if (request.getOutPath() != nil) {
                queryItems.append(URLQueryItem(name: "outPath", value: try ObjectSerializer.serializeToString(value: request.getOutPath()!)));
            }

            if (request.getFileNameFieldValue() != nil) {
                queryItems.append(URLQueryItem(name: "fileNameFieldValue", value: try ObjectSerializer.serializeToString(value: request.getFileNameFieldValue()!)));
            }

            if (request.getFontsLocation() != nil) {
                queryItems.append(URLQueryItem(name: "fontsLocation", value: try ObjectSerializer.serializeToString(value: request.getFontsLocation()!)));
            }

            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }
            var formParams : [RequestFormParam] = [];
            formParams.append(RequestFormParam(name: "document", body: try ObjectSerializer.serializeFile(value: request.getDocument())));


            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "PUT",
                body: nil,
                headers: nil,
                formParams: formParams,
                callback: { response, error in
                    callback(response, error);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of convertDocument method
    // Converts document from the request's content to the specified format.
    public func convertDocument(request : ConvertDocumentRequest) throws -> Data {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : Data? = nil;
        var responseError : Error? = nil;
        self.convertDocument(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        _ = semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of copyFile method
    // Copy file.
    public func copyFile(request : CopyFileRequest, callback : @escaping (_ error : Error?) -> ()) {
        do {
            var rawPath = "/words/storage/file/copy/{srcPath}";
            rawPath = rawPath.replacingOccurrences(of: "{srcPath}", with: try ObjectSerializer.serializeToString(value: request.getSrcPath()));

            rawPath = rawPath.replacingOccurrences(of: "//", with: "/");

            let urlPath = (try self.configuration.getApiRootUrl()).appendingPathComponent(rawPath);
            var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
            var queryItems : [URLQueryItem] = [];
            queryItems.append(URLQueryItem(name: "destPath", value: try ObjectSerializer.serializeToString(value: request.getDestPath())));

            if (request.getSrcStorageName() != nil) {
                queryItems.append(URLQueryItem(name: "srcStorageName", value: try ObjectSerializer.serializeToString(value: request.getSrcStorageName()!)));
            }

            if (request.getDestStorageName() != nil) {
                queryItems.append(URLQueryItem(name: "destStorageName", value: try ObjectSerializer.serializeToString(value: request.getDestStorageName()!)));
            }

            if (request.getVersionId() != nil) {
                queryItems.append(URLQueryItem(name: "versionId", value: try ObjectSerializer.serializeToString(value: request.getVersionId()!)));
            }

            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }

            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "PUT",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    callback(error);
                }
            );
        }
        catch let error {
            callback(error);
        }
    }

    // Sync representation of copyFile method
    // Copy file.
    public func copyFile(request : CopyFileRequest) throws {
        let semaphore = DispatchSemaphore(value: 0);
        var responseError : Error? = nil;
        self.copyFile(request : request, callback: { error in
            responseError = error;
            semaphore.signal();
        });

        _ = semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
    }

    // Async representation of copyFolder method
    // Copy folder.
    public func copyFolder(request : CopyFolderRequest, callback : @escaping (_ error : Error?) -> ()) {
        do {
            var rawPath = "/words/storage/folder/copy/{srcPath}";
            rawPath = rawPath.replacingOccurrences(of: "{srcPath}", with: try ObjectSerializer.serializeToString(value: request.getSrcPath()));

            rawPath = rawPath.replacingOccurrences(of: "//", with: "/");

            let urlPath = (try self.configuration.getApiRootUrl()).appendingPathComponent(rawPath);
            var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
            var queryItems : [URLQueryItem] = [];
            queryItems.append(URLQueryItem(name: "destPath", value: try ObjectSerializer.serializeToString(value: request.getDestPath())));

            if (request.getSrcStorageName() != nil) {
                queryItems.append(URLQueryItem(name: "srcStorageName", value: try ObjectSerializer.serializeToString(value: request.getSrcStorageName()!)));
            }

            if (request.getDestStorageName() != nil) {
                queryItems.append(URLQueryItem(name: "destStorageName", value: try ObjectSerializer.serializeToString(value: request.getDestStorageName()!)));
            }

            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }

            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "PUT",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    callback(error);
                }
            );
        }
        catch let error {
            callback(error);
        }
    }

    // Sync representation of copyFolder method
    // Copy folder.
    public func copyFolder(request : CopyFolderRequest) throws {
        let semaphore = DispatchSemaphore(value: 0);
        var responseError : Error? = nil;
        self.copyFolder(request : request, callback: { error in
            responseError = error;
            semaphore.signal();
        });

        _ = semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
    }

    // Async representation of copyStyle method
    // Copy and insert a new style to the document, returns a copied style.
    public func copyStyle(request : CopyStyleRequest, callback : @escaping (_ response : StyleResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/styles/copy";
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

            if (request.getDestFileName() != nil) {
                queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serializeToString(value: request.getDestFileName()!)));
            }

            if (request.getRevisionAuthor() != nil) {
                queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serializeToString(value: request.getRevisionAuthor()!)));
            }

            if (request.getRevisionDateTime() != nil) {
                queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serializeToString(value: request.getRevisionDateTime()!)));
            }

            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }

            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "POST",
                body: try ObjectSerializer.serializeBody(value: request.getStyleCopy()),
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : StyleResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: StyleResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of copyStyle method
    // Copy and insert a new style to the document, returns a copied style.
    public func copyStyle(request : CopyStyleRequest) throws -> StyleResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : StyleResponse? = nil;
        var responseError : Error? = nil;
        self.copyStyle(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        _ = semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of createDocument method
    // Creates new document.
    // Document is created with format which is recognized from file extensions.
    // Supported extensions: ".doc", ".docx", ".docm", ".dot", ".dotm", ".dotx", ".flatopc", ".fopc", ".flatopc_macro", ".fopc_macro", ".flatopc_template", ".fopc_template", ".flatopc_template_macro", ".fopc_template_macro", ".wordml", ".wml", ".rtf".
    public func createDocument(request : CreateDocumentRequest, callback : @escaping (_ response : DocumentResponse?, _ error : Error?) -> ()) {
        do {
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

            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "PUT",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : DocumentResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: DocumentResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of createDocument method
    // Creates new document.
    // Document is created with format which is recognized from file extensions.
    // Supported extensions: ".doc", ".docx", ".docm", ".dot", ".dotm", ".dotx", ".flatopc", ".fopc", ".flatopc_macro", ".fopc_macro", ".flatopc_template", ".fopc_template", ".flatopc_template_macro", ".fopc_template_macro", ".wordml", ".wml", ".rtf".
    public func createDocument(request : CreateDocumentRequest) throws -> DocumentResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : DocumentResponse? = nil;
        var responseError : Error? = nil;
        self.createDocument(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        _ = semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of createFolder method
    // Create the folder.
    public func createFolder(request : CreateFolderRequest, callback : @escaping (_ error : Error?) -> ()) {
        do {
            var rawPath = "/words/storage/folder/{path}";
            rawPath = rawPath.replacingOccurrences(of: "{path}", with: try ObjectSerializer.serializeToString(value: request.getPath()));

            rawPath = rawPath.replacingOccurrences(of: "//", with: "/");

            let urlPath = (try self.configuration.getApiRootUrl()).appendingPathComponent(rawPath);
            var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
            var queryItems : [URLQueryItem] = [];
            if (request.getStorageName() != nil) {
                queryItems.append(URLQueryItem(name: "storageName", value: try ObjectSerializer.serializeToString(value: request.getStorageName()!)));
            }

            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }

            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "PUT",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    callback(error);
                }
            );
        }
        catch let error {
            callback(error);
        }
    }

    // Sync representation of createFolder method
    // Create the folder.
    public func createFolder(request : CreateFolderRequest) throws {
        let semaphore = DispatchSemaphore(value: 0);
        var responseError : Error? = nil;
        self.createFolder(request : request, callback: { error in
            responseError = error;
            semaphore.signal();
        });

        _ = semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
    }

    // Async representation of createOrUpdateDocumentProperty method
    // Adds new or update existing document property.
    public func createOrUpdateDocumentProperty(request : CreateOrUpdateDocumentPropertyRequest, callback : @escaping (_ response : DocumentPropertyResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/documentProperties/{propertyName}";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));

            rawPath = rawPath.replacingOccurrences(of: "{propertyName}", with: try ObjectSerializer.serializeToString(value: request.getPropertyName()));

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

            if (request.getDestFileName() != nil) {
                queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serializeToString(value: request.getDestFileName()!)));
            }

            if (request.getRevisionAuthor() != nil) {
                queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serializeToString(value: request.getRevisionAuthor()!)));
            }

            if (request.getRevisionDateTime() != nil) {
                queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serializeToString(value: request.getRevisionDateTime()!)));
            }

            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }

            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "PUT",
                body: try ObjectSerializer.serializeBody(value: request.getProperty()),
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : DocumentPropertyResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: DocumentPropertyResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of createOrUpdateDocumentProperty method
    // Adds new or update existing document property.
    public func createOrUpdateDocumentProperty(request : CreateOrUpdateDocumentPropertyRequest) throws -> DocumentPropertyResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : DocumentPropertyResponse? = nil;
        var responseError : Error? = nil;
        self.createOrUpdateDocumentProperty(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        _ = semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of deleteAllParagraphTabStops method
    // Remove all tab stops.
    public func deleteAllParagraphTabStops(request : DeleteAllParagraphTabStopsRequest, callback : @escaping (_ response : TabStopsResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/{nodePath}/paragraphs/{index}/tabstops";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));

            rawPath = rawPath.replacingOccurrences(of: "{nodePath}", with: try ObjectSerializer.serializeToString(value: request.getNodePath()));

            rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serializeToString(value: request.getIndex()));

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

            if (request.getDestFileName() != nil) {
                queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serializeToString(value: request.getDestFileName()!)));
            }

            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }

            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "DELETE",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : TabStopsResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: TabStopsResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of deleteAllParagraphTabStops method
    // Remove all tab stops.
    public func deleteAllParagraphTabStops(request : DeleteAllParagraphTabStopsRequest) throws -> TabStopsResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : TabStopsResponse? = nil;
        var responseError : Error? = nil;
        self.deleteAllParagraphTabStops(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        _ = semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of deleteAllParagraphTabStopsWithoutNodePath method
    // Remove all tab stops.
    public func deleteAllParagraphTabStopsWithoutNodePath(request : DeleteAllParagraphTabStopsWithoutNodePathRequest, callback : @escaping (_ response : TabStopsResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/paragraphs/{index}/tabstops";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));

            rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serializeToString(value: request.getIndex()));

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

            if (request.getDestFileName() != nil) {
                queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serializeToString(value: request.getDestFileName()!)));
            }

            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }

            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "DELETE",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : TabStopsResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: TabStopsResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of deleteAllParagraphTabStopsWithoutNodePath method
    // Remove all tab stops.
    public func deleteAllParagraphTabStopsWithoutNodePath(request : DeleteAllParagraphTabStopsWithoutNodePathRequest) throws -> TabStopsResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : TabStopsResponse? = nil;
        var responseError : Error? = nil;
        self.deleteAllParagraphTabStopsWithoutNodePath(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        _ = semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of deleteBorder method
    // 'nodePath' should refer to paragraph, cell or row.
    public func deleteBorder(request : DeleteBorderRequest, callback : @escaping (_ response : BorderResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/{nodePath}/borders/{borderType}";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));

            rawPath = rawPath.replacingOccurrences(of: "{nodePath}", with: try ObjectSerializer.serializeToString(value: request.getNodePath()));

            rawPath = rawPath.replacingOccurrences(of: "{borderType}", with: try ObjectSerializer.serializeToString(value: request.getBorderType()));

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

            if (request.getDestFileName() != nil) {
                queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serializeToString(value: request.getDestFileName()!)));
            }

            if (request.getRevisionAuthor() != nil) {
                queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serializeToString(value: request.getRevisionAuthor()!)));
            }

            if (request.getRevisionDateTime() != nil) {
                queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serializeToString(value: request.getRevisionDateTime()!)));
            }

            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }

            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "DELETE",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : BorderResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: BorderResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of deleteBorder method
    // 'nodePath' should refer to paragraph, cell or row.
    public func deleteBorder(request : DeleteBorderRequest) throws -> BorderResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : BorderResponse? = nil;
        var responseError : Error? = nil;
        self.deleteBorder(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        _ = semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of deleteBorders method
    // 'nodePath' should refer to paragraph, cell or row.
    public func deleteBorders(request : DeleteBordersRequest, callback : @escaping (_ response : BordersResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/{nodePath}/borders";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));

            rawPath = rawPath.replacingOccurrences(of: "{nodePath}", with: try ObjectSerializer.serializeToString(value: request.getNodePath()));

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

            if (request.getDestFileName() != nil) {
                queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serializeToString(value: request.getDestFileName()!)));
            }

            if (request.getRevisionAuthor() != nil) {
                queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serializeToString(value: request.getRevisionAuthor()!)));
            }

            if (request.getRevisionDateTime() != nil) {
                queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serializeToString(value: request.getRevisionDateTime()!)));
            }

            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }

            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "DELETE",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : BordersResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: BordersResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of deleteBorders method
    // 'nodePath' should refer to paragraph, cell or row.
    public func deleteBorders(request : DeleteBordersRequest) throws -> BordersResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : BordersResponse? = nil;
        var responseError : Error? = nil;
        self.deleteBorders(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        _ = semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of deleteComment method
    // Removes comment from document.
    public func deleteComment(request : DeleteCommentRequest, callback : @escaping (_ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/comments/{commentIndex}";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));

            rawPath = rawPath.replacingOccurrences(of: "{commentIndex}", with: try ObjectSerializer.serializeToString(value: request.getCommentIndex()));

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

            if (request.getDestFileName() != nil) {
                queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serializeToString(value: request.getDestFileName()!)));
            }

            if (request.getRevisionAuthor() != nil) {
                queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serializeToString(value: request.getRevisionAuthor()!)));
            }

            if (request.getRevisionDateTime() != nil) {
                queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serializeToString(value: request.getRevisionDateTime()!)));
            }

            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }

            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "DELETE",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    callback(error);
                }
            );
        }
        catch let error {
            callback(error);
        }
    }

    // Sync representation of deleteComment method
    // Removes comment from document.
    public func deleteComment(request : DeleteCommentRequest) throws {
        let semaphore = DispatchSemaphore(value: 0);
        var responseError : Error? = nil;
        self.deleteComment(request : request, callback: { error in
            responseError = error;
            semaphore.signal();
        });

        _ = semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
    }

    // Async representation of deleteDocumentProperty method
    // Deletes document property.
    public func deleteDocumentProperty(request : DeleteDocumentPropertyRequest, callback : @escaping (_ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/documentProperties/{propertyName}";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));

            rawPath = rawPath.replacingOccurrences(of: "{propertyName}", with: try ObjectSerializer.serializeToString(value: request.getPropertyName()));

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

            if (request.getDestFileName() != nil) {
                queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serializeToString(value: request.getDestFileName()!)));
            }

            if (request.getRevisionAuthor() != nil) {
                queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serializeToString(value: request.getRevisionAuthor()!)));
            }

            if (request.getRevisionDateTime() != nil) {
                queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serializeToString(value: request.getRevisionDateTime()!)));
            }

            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }

            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "DELETE",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    callback(error);
                }
            );
        }
        catch let error {
            callback(error);
        }
    }

    // Sync representation of deleteDocumentProperty method
    // Deletes document property.
    public func deleteDocumentProperty(request : DeleteDocumentPropertyRequest) throws {
        let semaphore = DispatchSemaphore(value: 0);
        var responseError : Error? = nil;
        self.deleteDocumentProperty(request : request, callback: { error in
            responseError = error;
            semaphore.signal();
        });

        _ = semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
    }

    // Async representation of deleteDrawingObject method
    // Removes drawing object from document.
    public func deleteDrawingObject(request : DeleteDrawingObjectRequest, callback : @escaping (_ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/{nodePath}/drawingObjects/{index}";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));

            rawPath = rawPath.replacingOccurrences(of: "{nodePath}", with: try ObjectSerializer.serializeToString(value: request.getNodePath()));

            rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serializeToString(value: request.getIndex()));

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

            if (request.getDestFileName() != nil) {
                queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serializeToString(value: request.getDestFileName()!)));
            }

            if (request.getRevisionAuthor() != nil) {
                queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serializeToString(value: request.getRevisionAuthor()!)));
            }

            if (request.getRevisionDateTime() != nil) {
                queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serializeToString(value: request.getRevisionDateTime()!)));
            }

            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }

            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "DELETE",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    callback(error);
                }
            );
        }
        catch let error {
            callback(error);
        }
    }

    // Sync representation of deleteDrawingObject method
    // Removes drawing object from document.
    public func deleteDrawingObject(request : DeleteDrawingObjectRequest) throws {
        let semaphore = DispatchSemaphore(value: 0);
        var responseError : Error? = nil;
        self.deleteDrawingObject(request : request, callback: { error in
            responseError = error;
            semaphore.signal();
        });

        _ = semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
    }

    // Async representation of deleteDrawingObjectWithoutNodePath method
    // Removes drawing object from document.
    public func deleteDrawingObjectWithoutNodePath(request : DeleteDrawingObjectWithoutNodePathRequest, callback : @escaping (_ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/drawingObjects/{index}";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));

            rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serializeToString(value: request.getIndex()));

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

            if (request.getDestFileName() != nil) {
                queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serializeToString(value: request.getDestFileName()!)));
            }

            if (request.getRevisionAuthor() != nil) {
                queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serializeToString(value: request.getRevisionAuthor()!)));
            }

            if (request.getRevisionDateTime() != nil) {
                queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serializeToString(value: request.getRevisionDateTime()!)));
            }

            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }

            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "DELETE",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    callback(error);
                }
            );
        }
        catch let error {
            callback(error);
        }
    }

    // Sync representation of deleteDrawingObjectWithoutNodePath method
    // Removes drawing object from document.
    public func deleteDrawingObjectWithoutNodePath(request : DeleteDrawingObjectWithoutNodePathRequest) throws {
        let semaphore = DispatchSemaphore(value: 0);
        var responseError : Error? = nil;
        self.deleteDrawingObjectWithoutNodePath(request : request, callback: { error in
            responseError = error;
            semaphore.signal();
        });

        _ = semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
    }

    // Async representation of deleteField method
    // Deletes field from document.
    public func deleteField(request : DeleteFieldRequest, callback : @escaping (_ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/{nodePath}/fields/{index}";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));

            rawPath = rawPath.replacingOccurrences(of: "{nodePath}", with: try ObjectSerializer.serializeToString(value: request.getNodePath()));

            rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serializeToString(value: request.getIndex()));

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

            if (request.getDestFileName() != nil) {
                queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serializeToString(value: request.getDestFileName()!)));
            }

            if (request.getRevisionAuthor() != nil) {
                queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serializeToString(value: request.getRevisionAuthor()!)));
            }

            if (request.getRevisionDateTime() != nil) {
                queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serializeToString(value: request.getRevisionDateTime()!)));
            }

            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }

            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "DELETE",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    callback(error);
                }
            );
        }
        catch let error {
            callback(error);
        }
    }

    // Sync representation of deleteField method
    // Deletes field from document.
    public func deleteField(request : DeleteFieldRequest) throws {
        let semaphore = DispatchSemaphore(value: 0);
        var responseError : Error? = nil;
        self.deleteField(request : request, callback: { error in
            responseError = error;
            semaphore.signal();
        });

        _ = semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
    }

    // Async representation of deleteFields method
    // Removes fields from section paragraph.
    public func deleteFields(request : DeleteFieldsRequest, callback : @escaping (_ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/{nodePath}/fields";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));

            rawPath = rawPath.replacingOccurrences(of: "{nodePath}", with: try ObjectSerializer.serializeToString(value: request.getNodePath()));

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

            if (request.getDestFileName() != nil) {
                queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serializeToString(value: request.getDestFileName()!)));
            }

            if (request.getRevisionAuthor() != nil) {
                queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serializeToString(value: request.getRevisionAuthor()!)));
            }

            if (request.getRevisionDateTime() != nil) {
                queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serializeToString(value: request.getRevisionDateTime()!)));
            }

            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }

            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "DELETE",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    callback(error);
                }
            );
        }
        catch let error {
            callback(error);
        }
    }

    // Sync representation of deleteFields method
    // Removes fields from section paragraph.
    public func deleteFields(request : DeleteFieldsRequest) throws {
        let semaphore = DispatchSemaphore(value: 0);
        var responseError : Error? = nil;
        self.deleteFields(request : request, callback: { error in
            responseError = error;
            semaphore.signal();
        });

        _ = semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
    }

    // Async representation of deleteFieldsWithoutNodePath method
    // Removes fields from section paragraph.
    public func deleteFieldsWithoutNodePath(request : DeleteFieldsWithoutNodePathRequest, callback : @escaping (_ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/fields";
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

            if (request.getDestFileName() != nil) {
                queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serializeToString(value: request.getDestFileName()!)));
            }

            if (request.getRevisionAuthor() != nil) {
                queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serializeToString(value: request.getRevisionAuthor()!)));
            }

            if (request.getRevisionDateTime() != nil) {
                queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serializeToString(value: request.getRevisionDateTime()!)));
            }

            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }

            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "DELETE",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    callback(error);
                }
            );
        }
        catch let error {
            callback(error);
        }
    }

    // Sync representation of deleteFieldsWithoutNodePath method
    // Removes fields from section paragraph.
    public func deleteFieldsWithoutNodePath(request : DeleteFieldsWithoutNodePathRequest) throws {
        let semaphore = DispatchSemaphore(value: 0);
        var responseError : Error? = nil;
        self.deleteFieldsWithoutNodePath(request : request, callback: { error in
            responseError = error;
            semaphore.signal();
        });

        _ = semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
    }

    // Async representation of deleteFieldWithoutNodePath method
    // Deletes field from document.
    public func deleteFieldWithoutNodePath(request : DeleteFieldWithoutNodePathRequest, callback : @escaping (_ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/fields/{index}";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));

            rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serializeToString(value: request.getIndex()));

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

            if (request.getDestFileName() != nil) {
                queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serializeToString(value: request.getDestFileName()!)));
            }

            if (request.getRevisionAuthor() != nil) {
                queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serializeToString(value: request.getRevisionAuthor()!)));
            }

            if (request.getRevisionDateTime() != nil) {
                queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serializeToString(value: request.getRevisionDateTime()!)));
            }

            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }

            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "DELETE",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    callback(error);
                }
            );
        }
        catch let error {
            callback(error);
        }
    }

    // Sync representation of deleteFieldWithoutNodePath method
    // Deletes field from document.
    public func deleteFieldWithoutNodePath(request : DeleteFieldWithoutNodePathRequest) throws {
        let semaphore = DispatchSemaphore(value: 0);
        var responseError : Error? = nil;
        self.deleteFieldWithoutNodePath(request : request, callback: { error in
            responseError = error;
            semaphore.signal();
        });

        _ = semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
    }

    // Async representation of deleteFile method
    // Delete file.
    public func deleteFile(request : DeleteFileRequest, callback : @escaping (_ error : Error?) -> ()) {
        do {
            var rawPath = "/words/storage/file/{path}";
            rawPath = rawPath.replacingOccurrences(of: "{path}", with: try ObjectSerializer.serializeToString(value: request.getPath()));

            rawPath = rawPath.replacingOccurrences(of: "//", with: "/");

            let urlPath = (try self.configuration.getApiRootUrl()).appendingPathComponent(rawPath);
            var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
            var queryItems : [URLQueryItem] = [];
            if (request.getStorageName() != nil) {
                queryItems.append(URLQueryItem(name: "storageName", value: try ObjectSerializer.serializeToString(value: request.getStorageName()!)));
            }

            if (request.getVersionId() != nil) {
                queryItems.append(URLQueryItem(name: "versionId", value: try ObjectSerializer.serializeToString(value: request.getVersionId()!)));
            }

            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }

            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "DELETE",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    callback(error);
                }
            );
        }
        catch let error {
            callback(error);
        }
    }

    // Sync representation of deleteFile method
    // Delete file.
    public func deleteFile(request : DeleteFileRequest) throws {
        let semaphore = DispatchSemaphore(value: 0);
        var responseError : Error? = nil;
        self.deleteFile(request : request, callback: { error in
            responseError = error;
            semaphore.signal();
        });

        _ = semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
    }

    // Async representation of deleteFolder method
    // Delete folder.
    public func deleteFolder(request : DeleteFolderRequest, callback : @escaping (_ error : Error?) -> ()) {
        do {
            var rawPath = "/words/storage/folder/{path}";
            rawPath = rawPath.replacingOccurrences(of: "{path}", with: try ObjectSerializer.serializeToString(value: request.getPath()));

            rawPath = rawPath.replacingOccurrences(of: "//", with: "/");

            let urlPath = (try self.configuration.getApiRootUrl()).appendingPathComponent(rawPath);
            var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
            var queryItems : [URLQueryItem] = [];
            if (request.getStorageName() != nil) {
                queryItems.append(URLQueryItem(name: "storageName", value: try ObjectSerializer.serializeToString(value: request.getStorageName()!)));
            }

            if (request.getRecursive() != nil) {
                queryItems.append(URLQueryItem(name: "recursive", value: try ObjectSerializer.serializeToString(value: request.getRecursive()!)));
            }

            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }

            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "DELETE",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    callback(error);
                }
            );
        }
        catch let error {
            callback(error);
        }
    }

    // Sync representation of deleteFolder method
    // Delete folder.
    public func deleteFolder(request : DeleteFolderRequest) throws {
        let semaphore = DispatchSemaphore(value: 0);
        var responseError : Error? = nil;
        self.deleteFolder(request : request, callback: { error in
            responseError = error;
            semaphore.signal();
        });

        _ = semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
    }

    // Async representation of deleteFootnote method
    // Removes footnote from document.
    public func deleteFootnote(request : DeleteFootnoteRequest, callback : @escaping (_ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/{nodePath}/footnotes/{index}";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));

            rawPath = rawPath.replacingOccurrences(of: "{nodePath}", with: try ObjectSerializer.serializeToString(value: request.getNodePath()));

            rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serializeToString(value: request.getIndex()));

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

            if (request.getDestFileName() != nil) {
                queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serializeToString(value: request.getDestFileName()!)));
            }

            if (request.getRevisionAuthor() != nil) {
                queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serializeToString(value: request.getRevisionAuthor()!)));
            }

            if (request.getRevisionDateTime() != nil) {
                queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serializeToString(value: request.getRevisionDateTime()!)));
            }

            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }

            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "DELETE",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    callback(error);
                }
            );
        }
        catch let error {
            callback(error);
        }
    }

    // Sync representation of deleteFootnote method
    // Removes footnote from document.
    public func deleteFootnote(request : DeleteFootnoteRequest) throws {
        let semaphore = DispatchSemaphore(value: 0);
        var responseError : Error? = nil;
        self.deleteFootnote(request : request, callback: { error in
            responseError = error;
            semaphore.signal();
        });

        _ = semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
    }

    // Async representation of deleteFootnoteWithoutNodePath method
    // Removes footnote from document.
    public func deleteFootnoteWithoutNodePath(request : DeleteFootnoteWithoutNodePathRequest, callback : @escaping (_ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/footnotes/{index}";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));

            rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serializeToString(value: request.getIndex()));

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

            if (request.getDestFileName() != nil) {
                queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serializeToString(value: request.getDestFileName()!)));
            }

            if (request.getRevisionAuthor() != nil) {
                queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serializeToString(value: request.getRevisionAuthor()!)));
            }

            if (request.getRevisionDateTime() != nil) {
                queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serializeToString(value: request.getRevisionDateTime()!)));
            }

            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }

            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "DELETE",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    callback(error);
                }
            );
        }
        catch let error {
            callback(error);
        }
    }

    // Sync representation of deleteFootnoteWithoutNodePath method
    // Removes footnote from document.
    public func deleteFootnoteWithoutNodePath(request : DeleteFootnoteWithoutNodePathRequest) throws {
        let semaphore = DispatchSemaphore(value: 0);
        var responseError : Error? = nil;
        self.deleteFootnoteWithoutNodePath(request : request, callback: { error in
            responseError = error;
            semaphore.signal();
        });

        _ = semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
    }

    // Async representation of deleteFormField method
    // Removes form field from document.
    public func deleteFormField(request : DeleteFormFieldRequest, callback : @escaping (_ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/{nodePath}/formfields/{index}";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));

            rawPath = rawPath.replacingOccurrences(of: "{nodePath}", with: try ObjectSerializer.serializeToString(value: request.getNodePath()));

            rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serializeToString(value: request.getIndex()));

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

            if (request.getDestFileName() != nil) {
                queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serializeToString(value: request.getDestFileName()!)));
            }

            if (request.getRevisionAuthor() != nil) {
                queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serializeToString(value: request.getRevisionAuthor()!)));
            }

            if (request.getRevisionDateTime() != nil) {
                queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serializeToString(value: request.getRevisionDateTime()!)));
            }

            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }

            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "DELETE",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    callback(error);
                }
            );
        }
        catch let error {
            callback(error);
        }
    }

    // Sync representation of deleteFormField method
    // Removes form field from document.
    public func deleteFormField(request : DeleteFormFieldRequest) throws {
        let semaphore = DispatchSemaphore(value: 0);
        var responseError : Error? = nil;
        self.deleteFormField(request : request, callback: { error in
            responseError = error;
            semaphore.signal();
        });

        _ = semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
    }

    // Async representation of deleteFormFieldWithoutNodePath method
    // Removes form field from document.
    public func deleteFormFieldWithoutNodePath(request : DeleteFormFieldWithoutNodePathRequest, callback : @escaping (_ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/formfields/{index}";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));

            rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serializeToString(value: request.getIndex()));

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

            if (request.getDestFileName() != nil) {
                queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serializeToString(value: request.getDestFileName()!)));
            }

            if (request.getRevisionAuthor() != nil) {
                queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serializeToString(value: request.getRevisionAuthor()!)));
            }

            if (request.getRevisionDateTime() != nil) {
                queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serializeToString(value: request.getRevisionDateTime()!)));
            }

            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }

            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "DELETE",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    callback(error);
                }
            );
        }
        catch let error {
            callback(error);
        }
    }

    // Sync representation of deleteFormFieldWithoutNodePath method
    // Removes form field from document.
    public func deleteFormFieldWithoutNodePath(request : DeleteFormFieldWithoutNodePathRequest) throws {
        let semaphore = DispatchSemaphore(value: 0);
        var responseError : Error? = nil;
        self.deleteFormFieldWithoutNodePath(request : request, callback: { error in
            responseError = error;
            semaphore.signal();
        });

        _ = semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
    }

    // Async representation of deleteHeaderFooter method
    // Deletes header/footer from document.
    public func deleteHeaderFooter(request : DeleteHeaderFooterRequest, callback : @escaping (_ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/{sectionPath}/headersfooters/{index}";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));

            rawPath = rawPath.replacingOccurrences(of: "{sectionPath}", with: try ObjectSerializer.serializeToString(value: request.getSectionPath()));

            rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serializeToString(value: request.getIndex()));

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

            if (request.getDestFileName() != nil) {
                queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serializeToString(value: request.getDestFileName()!)));
            }

            if (request.getRevisionAuthor() != nil) {
                queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serializeToString(value: request.getRevisionAuthor()!)));
            }

            if (request.getRevisionDateTime() != nil) {
                queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serializeToString(value: request.getRevisionDateTime()!)));
            }

            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }

            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "DELETE",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    callback(error);
                }
            );
        }
        catch let error {
            callback(error);
        }
    }

    // Sync representation of deleteHeaderFooter method
    // Deletes header/footer from document.
    public func deleteHeaderFooter(request : DeleteHeaderFooterRequest) throws {
        let semaphore = DispatchSemaphore(value: 0);
        var responseError : Error? = nil;
        self.deleteHeaderFooter(request : request, callback: { error in
            responseError = error;
            semaphore.signal();
        });

        _ = semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
    }

    // Async representation of deleteHeadersFooters method
    // Deletes document headers and footers.
    public func deleteHeadersFooters(request : DeleteHeadersFootersRequest, callback : @escaping (_ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/{sectionPath}/headersfooters";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));

            rawPath = rawPath.replacingOccurrences(of: "{sectionPath}", with: try ObjectSerializer.serializeToString(value: request.getSectionPath()));

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

            if (request.getDestFileName() != nil) {
                queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serializeToString(value: request.getDestFileName()!)));
            }

            if (request.getRevisionAuthor() != nil) {
                queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serializeToString(value: request.getRevisionAuthor()!)));
            }

            if (request.getRevisionDateTime() != nil) {
                queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serializeToString(value: request.getRevisionDateTime()!)));
            }

            if (request.getHeadersFootersTypes() != nil) {
                queryItems.append(URLQueryItem(name: "headersFootersTypes", value: try ObjectSerializer.serializeToString(value: request.getHeadersFootersTypes()!)));
            }

            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }

            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "DELETE",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    callback(error);
                }
            );
        }
        catch let error {
            callback(error);
        }
    }

    // Sync representation of deleteHeadersFooters method
    // Deletes document headers and footers.
    public func deleteHeadersFooters(request : DeleteHeadersFootersRequest) throws {
        let semaphore = DispatchSemaphore(value: 0);
        var responseError : Error? = nil;
        self.deleteHeadersFooters(request : request, callback: { error in
            responseError = error;
            semaphore.signal();
        });

        _ = semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
    }

    // Async representation of deleteMacros method
    // Removes macros from document.
    public func deleteMacros(request : DeleteMacrosRequest, callback : @escaping (_ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/macros";
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

            if (request.getDestFileName() != nil) {
                queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serializeToString(value: request.getDestFileName()!)));
            }

            if (request.getRevisionAuthor() != nil) {
                queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serializeToString(value: request.getRevisionAuthor()!)));
            }

            if (request.getRevisionDateTime() != nil) {
                queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serializeToString(value: request.getRevisionDateTime()!)));
            }

            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }

            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "DELETE",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    callback(error);
                }
            );
        }
        catch let error {
            callback(error);
        }
    }

    // Sync representation of deleteMacros method
    // Removes macros from document.
    public func deleteMacros(request : DeleteMacrosRequest) throws {
        let semaphore = DispatchSemaphore(value: 0);
        var responseError : Error? = nil;
        self.deleteMacros(request : request, callback: { error in
            responseError = error;
            semaphore.signal();
        });

        _ = semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
    }

    // Async representation of deleteOfficeMathObject method
    // Removes OfficeMath object from document.
    public func deleteOfficeMathObject(request : DeleteOfficeMathObjectRequest, callback : @escaping (_ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/{nodePath}/OfficeMathObjects/{index}";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));

            rawPath = rawPath.replacingOccurrences(of: "{nodePath}", with: try ObjectSerializer.serializeToString(value: request.getNodePath()));

            rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serializeToString(value: request.getIndex()));

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

            if (request.getDestFileName() != nil) {
                queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serializeToString(value: request.getDestFileName()!)));
            }

            if (request.getRevisionAuthor() != nil) {
                queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serializeToString(value: request.getRevisionAuthor()!)));
            }

            if (request.getRevisionDateTime() != nil) {
                queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serializeToString(value: request.getRevisionDateTime()!)));
            }

            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }

            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "DELETE",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    callback(error);
                }
            );
        }
        catch let error {
            callback(error);
        }
    }

    // Sync representation of deleteOfficeMathObject method
    // Removes OfficeMath object from document.
    public func deleteOfficeMathObject(request : DeleteOfficeMathObjectRequest) throws {
        let semaphore = DispatchSemaphore(value: 0);
        var responseError : Error? = nil;
        self.deleteOfficeMathObject(request : request, callback: { error in
            responseError = error;
            semaphore.signal();
        });

        _ = semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
    }

    // Async representation of deleteOfficeMathObjectWithoutNodePath method
    // Removes OfficeMath object from document.
    public func deleteOfficeMathObjectWithoutNodePath(request : DeleteOfficeMathObjectWithoutNodePathRequest, callback : @escaping (_ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/OfficeMathObjects/{index}";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));

            rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serializeToString(value: request.getIndex()));

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

            if (request.getDestFileName() != nil) {
                queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serializeToString(value: request.getDestFileName()!)));
            }

            if (request.getRevisionAuthor() != nil) {
                queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serializeToString(value: request.getRevisionAuthor()!)));
            }

            if (request.getRevisionDateTime() != nil) {
                queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serializeToString(value: request.getRevisionDateTime()!)));
            }

            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }

            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "DELETE",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    callback(error);
                }
            );
        }
        catch let error {
            callback(error);
        }
    }

    // Sync representation of deleteOfficeMathObjectWithoutNodePath method
    // Removes OfficeMath object from document.
    public func deleteOfficeMathObjectWithoutNodePath(request : DeleteOfficeMathObjectWithoutNodePathRequest) throws {
        let semaphore = DispatchSemaphore(value: 0);
        var responseError : Error? = nil;
        self.deleteOfficeMathObjectWithoutNodePath(request : request, callback: { error in
            responseError = error;
            semaphore.signal();
        });

        _ = semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
    }

    // Async representation of deleteParagraph method
    // Removes paragraph from section.
    public func deleteParagraph(request : DeleteParagraphRequest, callback : @escaping (_ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/{nodePath}/paragraphs/{index}";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));

            rawPath = rawPath.replacingOccurrences(of: "{nodePath}", with: try ObjectSerializer.serializeToString(value: request.getNodePath()));

            rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serializeToString(value: request.getIndex()));

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

            if (request.getDestFileName() != nil) {
                queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serializeToString(value: request.getDestFileName()!)));
            }

            if (request.getRevisionAuthor() != nil) {
                queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serializeToString(value: request.getRevisionAuthor()!)));
            }

            if (request.getRevisionDateTime() != nil) {
                queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serializeToString(value: request.getRevisionDateTime()!)));
            }

            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }

            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "DELETE",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    callback(error);
                }
            );
        }
        catch let error {
            callback(error);
        }
    }

    // Sync representation of deleteParagraph method
    // Removes paragraph from section.
    public func deleteParagraph(request : DeleteParagraphRequest) throws {
        let semaphore = DispatchSemaphore(value: 0);
        var responseError : Error? = nil;
        self.deleteParagraph(request : request, callback: { error in
            responseError = error;
            semaphore.signal();
        });

        _ = semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
    }

    // Async representation of deleteParagraphListFormat method
    // Delete paragraph list format, returns updated list format properties.
    public func deleteParagraphListFormat(request : DeleteParagraphListFormatRequest, callback : @escaping (_ response : ParagraphListFormatResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/{nodePath}/paragraphs/{index}/listFormat";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));

            rawPath = rawPath.replacingOccurrences(of: "{nodePath}", with: try ObjectSerializer.serializeToString(value: request.getNodePath()));

            rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serializeToString(value: request.getIndex()));

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

            if (request.getDestFileName() != nil) {
                queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serializeToString(value: request.getDestFileName()!)));
            }

            if (request.getRevisionAuthor() != nil) {
                queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serializeToString(value: request.getRevisionAuthor()!)));
            }

            if (request.getRevisionDateTime() != nil) {
                queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serializeToString(value: request.getRevisionDateTime()!)));
            }

            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }

            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "DELETE",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : ParagraphListFormatResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: ParagraphListFormatResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of deleteParagraphListFormat method
    // Delete paragraph list format, returns updated list format properties.
    public func deleteParagraphListFormat(request : DeleteParagraphListFormatRequest) throws -> ParagraphListFormatResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : ParagraphListFormatResponse? = nil;
        var responseError : Error? = nil;
        self.deleteParagraphListFormat(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        _ = semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of deleteParagraphListFormatWithoutNodePath method
    // Delete paragraph list format, returns updated list format properties.
    public func deleteParagraphListFormatWithoutNodePath(request : DeleteParagraphListFormatWithoutNodePathRequest, callback : @escaping (_ response : ParagraphListFormatResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/paragraphs/{index}/listFormat";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));

            rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serializeToString(value: request.getIndex()));

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

            if (request.getDestFileName() != nil) {
                queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serializeToString(value: request.getDestFileName()!)));
            }

            if (request.getRevisionAuthor() != nil) {
                queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serializeToString(value: request.getRevisionAuthor()!)));
            }

            if (request.getRevisionDateTime() != nil) {
                queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serializeToString(value: request.getRevisionDateTime()!)));
            }

            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }

            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "DELETE",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : ParagraphListFormatResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: ParagraphListFormatResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of deleteParagraphListFormatWithoutNodePath method
    // Delete paragraph list format, returns updated list format properties.
    public func deleteParagraphListFormatWithoutNodePath(request : DeleteParagraphListFormatWithoutNodePathRequest) throws -> ParagraphListFormatResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : ParagraphListFormatResponse? = nil;
        var responseError : Error? = nil;
        self.deleteParagraphListFormatWithoutNodePath(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        _ = semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of deleteParagraphTabStop method
    // Remove the i-th tab stop.
    public func deleteParagraphTabStop(request : DeleteParagraphTabStopRequest, callback : @escaping (_ response : TabStopsResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/{nodePath}/paragraphs/{index}/tabstop";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));

            rawPath = rawPath.replacingOccurrences(of: "{nodePath}", with: try ObjectSerializer.serializeToString(value: request.getNodePath()));

            rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serializeToString(value: request.getIndex()));

            rawPath = rawPath.replacingOccurrences(of: "//", with: "/");

            let urlPath = (try self.configuration.getApiRootUrl()).appendingPathComponent(rawPath);
            var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
            var queryItems : [URLQueryItem] = [];
            queryItems.append(URLQueryItem(name: "position", value: try ObjectSerializer.serializeToString(value: request.getPosition())));

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

            if (request.getDestFileName() != nil) {
                queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serializeToString(value: request.getDestFileName()!)));
            }

            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }

            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "DELETE",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : TabStopsResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: TabStopsResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of deleteParagraphTabStop method
    // Remove the i-th tab stop.
    public func deleteParagraphTabStop(request : DeleteParagraphTabStopRequest) throws -> TabStopsResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : TabStopsResponse? = nil;
        var responseError : Error? = nil;
        self.deleteParagraphTabStop(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        _ = semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of deleteParagraphTabStopWithoutNodePath method
    // Remove the i-th tab stop.
    public func deleteParagraphTabStopWithoutNodePath(request : DeleteParagraphTabStopWithoutNodePathRequest, callback : @escaping (_ response : TabStopsResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/paragraphs/{index}/tabstop";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));

            rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serializeToString(value: request.getIndex()));

            rawPath = rawPath.replacingOccurrences(of: "//", with: "/");

            let urlPath = (try self.configuration.getApiRootUrl()).appendingPathComponent(rawPath);
            var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
            var queryItems : [URLQueryItem] = [];
            queryItems.append(URLQueryItem(name: "position", value: try ObjectSerializer.serializeToString(value: request.getPosition())));

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

            if (request.getDestFileName() != nil) {
                queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serializeToString(value: request.getDestFileName()!)));
            }

            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }

            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "DELETE",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : TabStopsResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: TabStopsResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of deleteParagraphTabStopWithoutNodePath method
    // Remove the i-th tab stop.
    public func deleteParagraphTabStopWithoutNodePath(request : DeleteParagraphTabStopWithoutNodePathRequest) throws -> TabStopsResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : TabStopsResponse? = nil;
        var responseError : Error? = nil;
        self.deleteParagraphTabStopWithoutNodePath(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        _ = semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of deleteParagraphWithoutNodePath method
    // Removes paragraph from section.
    public func deleteParagraphWithoutNodePath(request : DeleteParagraphWithoutNodePathRequest, callback : @escaping (_ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/paragraphs/{index}";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));

            rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serializeToString(value: request.getIndex()));

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

            if (request.getDestFileName() != nil) {
                queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serializeToString(value: request.getDestFileName()!)));
            }

            if (request.getRevisionAuthor() != nil) {
                queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serializeToString(value: request.getRevisionAuthor()!)));
            }

            if (request.getRevisionDateTime() != nil) {
                queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serializeToString(value: request.getRevisionDateTime()!)));
            }

            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }

            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "DELETE",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    callback(error);
                }
            );
        }
        catch let error {
            callback(error);
        }
    }

    // Sync representation of deleteParagraphWithoutNodePath method
    // Removes paragraph from section.
    public func deleteParagraphWithoutNodePath(request : DeleteParagraphWithoutNodePathRequest) throws {
        let semaphore = DispatchSemaphore(value: 0);
        var responseError : Error? = nil;
        self.deleteParagraphWithoutNodePath(request : request, callback: { error in
            responseError = error;
            semaphore.signal();
        });

        _ = semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
    }

    // Async representation of deleteRun method
    // Removes run from document.
    public func deleteRun(request : DeleteRunRequest, callback : @escaping (_ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/{paragraphPath}/runs/{index}";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));

            rawPath = rawPath.replacingOccurrences(of: "{paragraphPath}", with: try ObjectSerializer.serializeToString(value: request.getParagraphPath()));

            rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serializeToString(value: request.getIndex()));

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

            if (request.getDestFileName() != nil) {
                queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serializeToString(value: request.getDestFileName()!)));
            }

            if (request.getRevisionAuthor() != nil) {
                queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serializeToString(value: request.getRevisionAuthor()!)));
            }

            if (request.getRevisionDateTime() != nil) {
                queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serializeToString(value: request.getRevisionDateTime()!)));
            }

            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }

            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "DELETE",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    callback(error);
                }
            );
        }
        catch let error {
            callback(error);
        }
    }

    // Sync representation of deleteRun method
    // Removes run from document.
    public func deleteRun(request : DeleteRunRequest) throws {
        let semaphore = DispatchSemaphore(value: 0);
        var responseError : Error? = nil;
        self.deleteRun(request : request, callback: { error in
            responseError = error;
            semaphore.signal();
        });

        _ = semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
    }

    // Async representation of deleteSection method
    // Removes section from document.
    public func deleteSection(request : DeleteSectionRequest, callback : @escaping (_ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/sections/{sectionIndex}";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));

            rawPath = rawPath.replacingOccurrences(of: "{sectionIndex}", with: try ObjectSerializer.serializeToString(value: request.getSectionIndex()));

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

            if (request.getDestFileName() != nil) {
                queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serializeToString(value: request.getDestFileName()!)));
            }

            if (request.getRevisionAuthor() != nil) {
                queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serializeToString(value: request.getRevisionAuthor()!)));
            }

            if (request.getRevisionDateTime() != nil) {
                queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serializeToString(value: request.getRevisionDateTime()!)));
            }

            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }

            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "DELETE",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    callback(error);
                }
            );
        }
        catch let error {
            callback(error);
        }
    }

    // Sync representation of deleteSection method
    // Removes section from document.
    public func deleteSection(request : DeleteSectionRequest) throws {
        let semaphore = DispatchSemaphore(value: 0);
        var responseError : Error? = nil;
        self.deleteSection(request : request, callback: { error in
            responseError = error;
            semaphore.signal();
        });

        _ = semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
    }

    // Async representation of deleteTable method
    // Deletes a table.
    public func deleteTable(request : DeleteTableRequest, callback : @escaping (_ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/{nodePath}/tables/{index}";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));

            rawPath = rawPath.replacingOccurrences(of: "{nodePath}", with: try ObjectSerializer.serializeToString(value: request.getNodePath()));

            rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serializeToString(value: request.getIndex()));

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

            if (request.getDestFileName() != nil) {
                queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serializeToString(value: request.getDestFileName()!)));
            }

            if (request.getRevisionAuthor() != nil) {
                queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serializeToString(value: request.getRevisionAuthor()!)));
            }

            if (request.getRevisionDateTime() != nil) {
                queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serializeToString(value: request.getRevisionDateTime()!)));
            }

            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }

            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "DELETE",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    callback(error);
                }
            );
        }
        catch let error {
            callback(error);
        }
    }

    // Sync representation of deleteTable method
    // Deletes a table.
    public func deleteTable(request : DeleteTableRequest) throws {
        let semaphore = DispatchSemaphore(value: 0);
        var responseError : Error? = nil;
        self.deleteTable(request : request, callback: { error in
            responseError = error;
            semaphore.signal();
        });

        _ = semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
    }

    // Async representation of deleteTableCell method
    // Deletes a table cell.
    public func deleteTableCell(request : DeleteTableCellRequest, callback : @escaping (_ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/{tableRowPath}/cells/{index}";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));

            rawPath = rawPath.replacingOccurrences(of: "{tableRowPath}", with: try ObjectSerializer.serializeToString(value: request.getTableRowPath()));

            rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serializeToString(value: request.getIndex()));

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

            if (request.getDestFileName() != nil) {
                queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serializeToString(value: request.getDestFileName()!)));
            }

            if (request.getRevisionAuthor() != nil) {
                queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serializeToString(value: request.getRevisionAuthor()!)));
            }

            if (request.getRevisionDateTime() != nil) {
                queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serializeToString(value: request.getRevisionDateTime()!)));
            }

            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }

            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "DELETE",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    callback(error);
                }
            );
        }
        catch let error {
            callback(error);
        }
    }

    // Sync representation of deleteTableCell method
    // Deletes a table cell.
    public func deleteTableCell(request : DeleteTableCellRequest) throws {
        let semaphore = DispatchSemaphore(value: 0);
        var responseError : Error? = nil;
        self.deleteTableCell(request : request, callback: { error in
            responseError = error;
            semaphore.signal();
        });

        _ = semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
    }

    // Async representation of deleteTableRow method
    // Deletes a table row.
    public func deleteTableRow(request : DeleteTableRowRequest, callback : @escaping (_ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/{tablePath}/rows/{index}";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));

            rawPath = rawPath.replacingOccurrences(of: "{tablePath}", with: try ObjectSerializer.serializeToString(value: request.getTablePath()));

            rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serializeToString(value: request.getIndex()));

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

            if (request.getDestFileName() != nil) {
                queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serializeToString(value: request.getDestFileName()!)));
            }

            if (request.getRevisionAuthor() != nil) {
                queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serializeToString(value: request.getRevisionAuthor()!)));
            }

            if (request.getRevisionDateTime() != nil) {
                queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serializeToString(value: request.getRevisionDateTime()!)));
            }

            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }

            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "DELETE",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    callback(error);
                }
            );
        }
        catch let error {
            callback(error);
        }
    }

    // Sync representation of deleteTableRow method
    // Deletes a table row.
    public func deleteTableRow(request : DeleteTableRowRequest) throws {
        let semaphore = DispatchSemaphore(value: 0);
        var responseError : Error? = nil;
        self.deleteTableRow(request : request, callback: { error in
            responseError = error;
            semaphore.signal();
        });

        _ = semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
    }

    // Async representation of deleteTableWithoutNodePath method
    // Deletes a table.
    public func deleteTableWithoutNodePath(request : DeleteTableWithoutNodePathRequest, callback : @escaping (_ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/tables/{index}";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));

            rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serializeToString(value: request.getIndex()));

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

            if (request.getDestFileName() != nil) {
                queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serializeToString(value: request.getDestFileName()!)));
            }

            if (request.getRevisionAuthor() != nil) {
                queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serializeToString(value: request.getRevisionAuthor()!)));
            }

            if (request.getRevisionDateTime() != nil) {
                queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serializeToString(value: request.getRevisionDateTime()!)));
            }

            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }

            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "DELETE",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    callback(error);
                }
            );
        }
        catch let error {
            callback(error);
        }
    }

    // Sync representation of deleteTableWithoutNodePath method
    // Deletes a table.
    public func deleteTableWithoutNodePath(request : DeleteTableWithoutNodePathRequest) throws {
        let semaphore = DispatchSemaphore(value: 0);
        var responseError : Error? = nil;
        self.deleteTableWithoutNodePath(request : request, callback: { error in
            responseError = error;
            semaphore.signal();
        });

        _ = semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
    }

    // Async representation of deleteWatermark method
    // Deletes watermark (for deleting last watermark from the document).
    public func deleteWatermark(request : DeleteWatermarkRequest, callback : @escaping (_ response : DocumentResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/watermarks/deleteLast";
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

            if (request.getDestFileName() != nil) {
                queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serializeToString(value: request.getDestFileName()!)));
            }

            if (request.getRevisionAuthor() != nil) {
                queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serializeToString(value: request.getRevisionAuthor()!)));
            }

            if (request.getRevisionDateTime() != nil) {
                queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serializeToString(value: request.getRevisionDateTime()!)));
            }

            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }

            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "POST",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : DocumentResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: DocumentResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of deleteWatermark method
    // Deletes watermark (for deleting last watermark from the document).
    public func deleteWatermark(request : DeleteWatermarkRequest) throws -> DocumentResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : DocumentResponse? = nil;
        var responseError : Error? = nil;
        self.deleteWatermark(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        _ = semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of downloadFile method
    // Download file.
    public func downloadFile(request : DownloadFileRequest, callback : @escaping (_ response : Data?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/storage/file/{path}";
            rawPath = rawPath.replacingOccurrences(of: "{path}", with: try ObjectSerializer.serializeToString(value: request.getPath()));

            rawPath = rawPath.replacingOccurrences(of: "//", with: "/");

            let urlPath = (try self.configuration.getApiRootUrl()).appendingPathComponent(rawPath);
            var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
            var queryItems : [URLQueryItem] = [];
            if (request.getStorageName() != nil) {
                queryItems.append(URLQueryItem(name: "storageName", value: try ObjectSerializer.serializeToString(value: request.getStorageName()!)));
            }

            if (request.getVersionId() != nil) {
                queryItems.append(URLQueryItem(name: "versionId", value: try ObjectSerializer.serializeToString(value: request.getVersionId()!)));
            }

            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }

            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "GET",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    callback(response, error);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of downloadFile method
    // Download file.
    public func downloadFile(request : DownloadFileRequest) throws -> Data {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : Data? = nil;
        var responseError : Error? = nil;
        self.downloadFile(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        _ = semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of executeMailMerge method
    // Executes document mail merge operation.
    public func executeMailMerge(request : ExecuteMailMergeRequest, callback : @escaping (_ response : DocumentResponse?, _ error : Error?) -> ()) {
        do {
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
                formParams.append(RequestFormParam(name: "data", body: try ObjectSerializer.serialize(value: request.getData()!)));
            }


            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "PUT",
                body: nil,
                headers: nil,
                formParams: formParams,
                callback: { response, error in
                    var responseObject : DocumentResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: DocumentResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of executeMailMerge method
    // Executes document mail merge operation.
    public func executeMailMerge(request : ExecuteMailMergeRequest) throws -> DocumentResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : DocumentResponse? = nil;
        var responseError : Error? = nil;
        self.executeMailMerge(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        _ = semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of executeMailMergeOnline method
    // Executes document mail merge online.
    public func executeMailMergeOnline(request : ExecuteMailMergeOnlineRequest, callback : @escaping (_ response : Data?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/MailMerge";
            rawPath = rawPath.replacingOccurrences(of: "//", with: "/");

            let urlPath = (try self.configuration.getApiRootUrl()).appendingPathComponent(rawPath);
            var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
            var queryItems : [URLQueryItem] = [];
            if (request.getWithRegions() != nil) {
                queryItems.append(URLQueryItem(name: "withRegions", value: try ObjectSerializer.serializeToString(value: request.getWithRegions()!)));
            }

            if (request.getCleanup() != nil) {
                queryItems.append(URLQueryItem(name: "cleanup", value: try ObjectSerializer.serializeToString(value: request.getCleanup()!)));
            }

            if (request.getDocumentFileName() != nil) {
                queryItems.append(URLQueryItem(name: "documentFileName", value: try ObjectSerializer.serializeToString(value: request.getDocumentFileName()!)));
            }

            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }
            var formParams : [RequestFormParam] = [];
            formParams.append(RequestFormParam(name: "template", body: try ObjectSerializer.serializeFile(value: request.getTemplate())));

            formParams.append(RequestFormParam(name: "data", body: try ObjectSerializer.serializeFile(value: request.getData())));


            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "PUT",
                body: nil,
                headers: nil,
                formParams: formParams,
                callback: { response, error in
                    callback(response, error);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of executeMailMergeOnline method
    // Executes document mail merge online.
    public func executeMailMergeOnline(request : ExecuteMailMergeOnlineRequest) throws -> Data {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : Data? = nil;
        var responseError : Error? = nil;
        self.executeMailMergeOnline(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        _ = semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of getAvailableFonts method
    // Gets the list of fonts, available for document processing.
    public func getAvailableFonts(request : GetAvailableFontsRequest, callback : @escaping (_ response : AvailableFontsResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/fonts/available";
            rawPath = rawPath.replacingOccurrences(of: "//", with: "/");

            let urlPath = (try self.configuration.getApiRootUrl()).appendingPathComponent(rawPath);
            var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
            var queryItems : [URLQueryItem] = [];
            if (request.getFontsLocation() != nil) {
                queryItems.append(URLQueryItem(name: "fontsLocation", value: try ObjectSerializer.serializeToString(value: request.getFontsLocation()!)));
            }

            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }

            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "GET",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : AvailableFontsResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: AvailableFontsResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of getAvailableFonts method
    // Gets the list of fonts, available for document processing.
    public func getAvailableFonts(request : GetAvailableFontsRequest) throws -> AvailableFontsResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : AvailableFontsResponse? = nil;
        var responseError : Error? = nil;
        self.getAvailableFonts(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        _ = semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of getBookmarkByName method
    // Reads document bookmark data by its name.
    public func getBookmarkByName(request : GetBookmarkByNameRequest, callback : @escaping (_ response : BookmarkResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/bookmarks/{bookmarkName}";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));

            rawPath = rawPath.replacingOccurrences(of: "{bookmarkName}", with: try ObjectSerializer.serializeToString(value: request.getBookmarkName()));

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

            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }

            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "GET",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : BookmarkResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: BookmarkResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of getBookmarkByName method
    // Reads document bookmark data by its name.
    public func getBookmarkByName(request : GetBookmarkByNameRequest) throws -> BookmarkResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : BookmarkResponse? = nil;
        var responseError : Error? = nil;
        self.getBookmarkByName(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        _ = semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of getBookmarks method
    // Reads document bookmarks common info.
    public func getBookmarks(request : GetBookmarksRequest, callback : @escaping (_ response : BookmarksResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/bookmarks";
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

            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }

            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "GET",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : BookmarksResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: BookmarksResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of getBookmarks method
    // Reads document bookmarks common info.
    public func getBookmarks(request : GetBookmarksRequest) throws -> BookmarksResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : BookmarksResponse? = nil;
        var responseError : Error? = nil;
        self.getBookmarks(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        _ = semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of getBorder method
    // 'nodePath' should refer to paragraph, cell or row.
    public func getBorder(request : GetBorderRequest, callback : @escaping (_ response : BorderResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/{nodePath}/borders/{borderType}";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));

            rawPath = rawPath.replacingOccurrences(of: "{nodePath}", with: try ObjectSerializer.serializeToString(value: request.getNodePath()));

            rawPath = rawPath.replacingOccurrences(of: "{borderType}", with: try ObjectSerializer.serializeToString(value: request.getBorderType()));

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

            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }

            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "GET",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : BorderResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: BorderResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of getBorder method
    // 'nodePath' should refer to paragraph, cell or row.
    public func getBorder(request : GetBorderRequest) throws -> BorderResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : BorderResponse? = nil;
        var responseError : Error? = nil;
        self.getBorder(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        _ = semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of getBorders method
    // 'nodePath' should refer to paragraph, cell or row.
    public func getBorders(request : GetBordersRequest, callback : @escaping (_ response : BordersResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/{nodePath}/borders";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));

            rawPath = rawPath.replacingOccurrences(of: "{nodePath}", with: try ObjectSerializer.serializeToString(value: request.getNodePath()));

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

            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }

            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "GET",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : BordersResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: BordersResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of getBorders method
    // 'nodePath' should refer to paragraph, cell or row.
    public func getBorders(request : GetBordersRequest) throws -> BordersResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : BordersResponse? = nil;
        var responseError : Error? = nil;
        self.getBorders(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        _ = semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of getComment method
    // Gets comment from document.
    public func getComment(request : GetCommentRequest, callback : @escaping (_ response : CommentResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/comments/{commentIndex}";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));

            rawPath = rawPath.replacingOccurrences(of: "{commentIndex}", with: try ObjectSerializer.serializeToString(value: request.getCommentIndex()));

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

            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }

            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "GET",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : CommentResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: CommentResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of getComment method
    // Gets comment from document.
    public func getComment(request : GetCommentRequest) throws -> CommentResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : CommentResponse? = nil;
        var responseError : Error? = nil;
        self.getComment(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        _ = semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of getComments method
    // Gets comments from document.
    public func getComments(request : GetCommentsRequest, callback : @escaping (_ response : CommentsResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/comments";
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

            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }

            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "GET",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : CommentsResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: CommentsResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of getComments method
    // Gets comments from document.
    public func getComments(request : GetCommentsRequest) throws -> CommentsResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : CommentsResponse? = nil;
        var responseError : Error? = nil;
        self.getComments(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        _ = semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of getDocument method
    // Reads document common info.
    public func getDocument(request : GetDocumentRequest, callback : @escaping (_ response : DocumentResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{documentName}";
            rawPath = rawPath.replacingOccurrences(of: "{documentName}", with: try ObjectSerializer.serializeToString(value: request.getDocumentName()));

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

            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }

            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "GET",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : DocumentResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: DocumentResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of getDocument method
    // Reads document common info.
    public func getDocument(request : GetDocumentRequest) throws -> DocumentResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : DocumentResponse? = nil;
        var responseError : Error? = nil;
        self.getDocument(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        _ = semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of getDocumentDrawingObjectByIndex method
    // Reads document drawing object common info by its index or convert to format specified.
    public func getDocumentDrawingObjectByIndex(request : GetDocumentDrawingObjectByIndexRequest, callback : @escaping (_ response : DrawingObjectResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/{nodePath}/drawingObjects/{index}";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));

            rawPath = rawPath.replacingOccurrences(of: "{nodePath}", with: try ObjectSerializer.serializeToString(value: request.getNodePath()));

            rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serializeToString(value: request.getIndex()));

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

            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }

            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "GET",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : DrawingObjectResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: DrawingObjectResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of getDocumentDrawingObjectByIndex method
    // Reads document drawing object common info by its index or convert to format specified.
    public func getDocumentDrawingObjectByIndex(request : GetDocumentDrawingObjectByIndexRequest) throws -> DrawingObjectResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : DrawingObjectResponse? = nil;
        var responseError : Error? = nil;
        self.getDocumentDrawingObjectByIndex(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        _ = semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of getDocumentDrawingObjectByIndexWithoutNodePath method
    // Reads document drawing object common info by its index or convert to format specified.
    public func getDocumentDrawingObjectByIndexWithoutNodePath(request : GetDocumentDrawingObjectByIndexWithoutNodePathRequest, callback : @escaping (_ response : DrawingObjectResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/drawingObjects/{index}";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));

            rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serializeToString(value: request.getIndex()));

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

            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }

            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "GET",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : DrawingObjectResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: DrawingObjectResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of getDocumentDrawingObjectByIndexWithoutNodePath method
    // Reads document drawing object common info by its index or convert to format specified.
    public func getDocumentDrawingObjectByIndexWithoutNodePath(request : GetDocumentDrawingObjectByIndexWithoutNodePathRequest) throws -> DrawingObjectResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : DrawingObjectResponse? = nil;
        var responseError : Error? = nil;
        self.getDocumentDrawingObjectByIndexWithoutNodePath(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        _ = semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of getDocumentDrawingObjectImageData method
    // Reads drawing object image data.
    public func getDocumentDrawingObjectImageData(request : GetDocumentDrawingObjectImageDataRequest, callback : @escaping (_ response : Data?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/{nodePath}/drawingObjects/{index}/imageData";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));

            rawPath = rawPath.replacingOccurrences(of: "{nodePath}", with: try ObjectSerializer.serializeToString(value: request.getNodePath()));

            rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serializeToString(value: request.getIndex()));

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

            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }

            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "GET",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    callback(response, error);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of getDocumentDrawingObjectImageData method
    // Reads drawing object image data.
    public func getDocumentDrawingObjectImageData(request : GetDocumentDrawingObjectImageDataRequest) throws -> Data {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : Data? = nil;
        var responseError : Error? = nil;
        self.getDocumentDrawingObjectImageData(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        _ = semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of getDocumentDrawingObjectImageDataWithoutNodePath method
    // Reads drawing object image data.
    public func getDocumentDrawingObjectImageDataWithoutNodePath(request : GetDocumentDrawingObjectImageDataWithoutNodePathRequest, callback : @escaping (_ response : Data?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/drawingObjects/{index}/imageData";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));

            rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serializeToString(value: request.getIndex()));

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

            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }

            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "GET",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    callback(response, error);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of getDocumentDrawingObjectImageDataWithoutNodePath method
    // Reads drawing object image data.
    public func getDocumentDrawingObjectImageDataWithoutNodePath(request : GetDocumentDrawingObjectImageDataWithoutNodePathRequest) throws -> Data {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : Data? = nil;
        var responseError : Error? = nil;
        self.getDocumentDrawingObjectImageDataWithoutNodePath(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        _ = semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of getDocumentDrawingObjectOleData method
    // Gets drawing object OLE data.
    public func getDocumentDrawingObjectOleData(request : GetDocumentDrawingObjectOleDataRequest, callback : @escaping (_ response : Data?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/{nodePath}/drawingObjects/{index}/oleData";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));

            rawPath = rawPath.replacingOccurrences(of: "{nodePath}", with: try ObjectSerializer.serializeToString(value: request.getNodePath()));

            rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serializeToString(value: request.getIndex()));

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

            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }

            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "GET",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    callback(response, error);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of getDocumentDrawingObjectOleData method
    // Gets drawing object OLE data.
    public func getDocumentDrawingObjectOleData(request : GetDocumentDrawingObjectOleDataRequest) throws -> Data {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : Data? = nil;
        var responseError : Error? = nil;
        self.getDocumentDrawingObjectOleData(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        _ = semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of getDocumentDrawingObjectOleDataWithoutNodePath method
    // Gets drawing object OLE data.
    public func getDocumentDrawingObjectOleDataWithoutNodePath(request : GetDocumentDrawingObjectOleDataWithoutNodePathRequest, callback : @escaping (_ response : Data?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/drawingObjects/{index}/oleData";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));

            rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serializeToString(value: request.getIndex()));

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

            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }

            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "GET",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    callback(response, error);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of getDocumentDrawingObjectOleDataWithoutNodePath method
    // Gets drawing object OLE data.
    public func getDocumentDrawingObjectOleDataWithoutNodePath(request : GetDocumentDrawingObjectOleDataWithoutNodePathRequest) throws -> Data {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : Data? = nil;
        var responseError : Error? = nil;
        self.getDocumentDrawingObjectOleDataWithoutNodePath(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        _ = semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of getDocumentDrawingObjects method
    // Reads document drawing objects common info.
    public func getDocumentDrawingObjects(request : GetDocumentDrawingObjectsRequest, callback : @escaping (_ response : DrawingObjectsResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/{nodePath}/drawingObjects";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));

            rawPath = rawPath.replacingOccurrences(of: "{nodePath}", with: try ObjectSerializer.serializeToString(value: request.getNodePath()));

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

            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }

            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "GET",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : DrawingObjectsResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: DrawingObjectsResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of getDocumentDrawingObjects method
    // Reads document drawing objects common info.
    public func getDocumentDrawingObjects(request : GetDocumentDrawingObjectsRequest) throws -> DrawingObjectsResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : DrawingObjectsResponse? = nil;
        var responseError : Error? = nil;
        self.getDocumentDrawingObjects(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        _ = semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of getDocumentDrawingObjectsWithoutNodePath method
    // Reads document drawing objects common info.
    public func getDocumentDrawingObjectsWithoutNodePath(request : GetDocumentDrawingObjectsWithoutNodePathRequest, callback : @escaping (_ response : DrawingObjectsResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/drawingObjects";
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

            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }

            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "GET",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : DrawingObjectsResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: DrawingObjectsResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of getDocumentDrawingObjectsWithoutNodePath method
    // Reads document drawing objects common info.
    public func getDocumentDrawingObjectsWithoutNodePath(request : GetDocumentDrawingObjectsWithoutNodePathRequest) throws -> DrawingObjectsResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : DrawingObjectsResponse? = nil;
        var responseError : Error? = nil;
        self.getDocumentDrawingObjectsWithoutNodePath(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        _ = semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of getDocumentFieldNames method
    // Reads document field names.
    public func getDocumentFieldNames(request : GetDocumentFieldNamesRequest, callback : @escaping (_ response : FieldNamesResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/mailMerge/FieldNames";
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

            if (request.getUseNonMergeFields() != nil) {
                queryItems.append(URLQueryItem(name: "useNonMergeFields", value: try ObjectSerializer.serializeToString(value: request.getUseNonMergeFields()!)));
            }

            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }

            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "GET",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : FieldNamesResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: FieldNamesResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of getDocumentFieldNames method
    // Reads document field names.
    public func getDocumentFieldNames(request : GetDocumentFieldNamesRequest) throws -> FieldNamesResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : FieldNamesResponse? = nil;
        var responseError : Error? = nil;
        self.getDocumentFieldNames(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        _ = semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of getDocumentFieldNamesOnline method
    // Reads document field names.
    public func getDocumentFieldNamesOnline(request : GetDocumentFieldNamesOnlineRequest, callback : @escaping (_ response : FieldNamesResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/mailMerge/FieldNames";
            rawPath = rawPath.replacingOccurrences(of: "//", with: "/");

            let urlPath = (try self.configuration.getApiRootUrl()).appendingPathComponent(rawPath);
            var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
            var queryItems : [URLQueryItem] = [];
            if (request.getUseNonMergeFields() != nil) {
                queryItems.append(URLQueryItem(name: "useNonMergeFields", value: try ObjectSerializer.serializeToString(value: request.getUseNonMergeFields()!)));
            }

            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }
            var formParams : [RequestFormParam] = [];
            formParams.append(RequestFormParam(name: "template", body: try ObjectSerializer.serializeFile(value: request.getTemplate())));


            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "PUT",
                body: nil,
                headers: nil,
                formParams: formParams,
                callback: { response, error in
                    var responseObject : FieldNamesResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: FieldNamesResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of getDocumentFieldNamesOnline method
    // Reads document field names.
    public func getDocumentFieldNamesOnline(request : GetDocumentFieldNamesOnlineRequest) throws -> FieldNamesResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : FieldNamesResponse? = nil;
        var responseError : Error? = nil;
        self.getDocumentFieldNamesOnline(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        _ = semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of getDocumentHyperlinkByIndex method
    // Reads document hyperlink by its index.
    public func getDocumentHyperlinkByIndex(request : GetDocumentHyperlinkByIndexRequest, callback : @escaping (_ response : HyperlinkResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/hyperlinks/{hyperlinkIndex}";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));

            rawPath = rawPath.replacingOccurrences(of: "{hyperlinkIndex}", with: try ObjectSerializer.serializeToString(value: request.getHyperlinkIndex()));

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

            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }

            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "GET",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : HyperlinkResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: HyperlinkResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of getDocumentHyperlinkByIndex method
    // Reads document hyperlink by its index.
    public func getDocumentHyperlinkByIndex(request : GetDocumentHyperlinkByIndexRequest) throws -> HyperlinkResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : HyperlinkResponse? = nil;
        var responseError : Error? = nil;
        self.getDocumentHyperlinkByIndex(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        _ = semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of getDocumentHyperlinks method
    // Reads document hyperlinks common info.
    public func getDocumentHyperlinks(request : GetDocumentHyperlinksRequest, callback : @escaping (_ response : HyperlinksResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/hyperlinks";
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

            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }

            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "GET",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : HyperlinksResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: HyperlinksResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of getDocumentHyperlinks method
    // Reads document hyperlinks common info.
    public func getDocumentHyperlinks(request : GetDocumentHyperlinksRequest) throws -> HyperlinksResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : HyperlinksResponse? = nil;
        var responseError : Error? = nil;
        self.getDocumentHyperlinks(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        _ = semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of getDocumentProperties method
    // Reads document properties info.
    public func getDocumentProperties(request : GetDocumentPropertiesRequest, callback : @escaping (_ response : DocumentPropertiesResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/documentProperties";
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

            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }

            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "GET",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : DocumentPropertiesResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: DocumentPropertiesResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of getDocumentProperties method
    // Reads document properties info.
    public func getDocumentProperties(request : GetDocumentPropertiesRequest) throws -> DocumentPropertiesResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : DocumentPropertiesResponse? = nil;
        var responseError : Error? = nil;
        self.getDocumentProperties(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        _ = semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of getDocumentProperty method
    // Reads document property info by the property name.
    public func getDocumentProperty(request : GetDocumentPropertyRequest, callback : @escaping (_ response : DocumentPropertyResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/documentProperties/{propertyName}";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));

            rawPath = rawPath.replacingOccurrences(of: "{propertyName}", with: try ObjectSerializer.serializeToString(value: request.getPropertyName()));

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

            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }

            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "GET",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : DocumentPropertyResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: DocumentPropertyResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of getDocumentProperty method
    // Reads document property info by the property name.
    public func getDocumentProperty(request : GetDocumentPropertyRequest) throws -> DocumentPropertyResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : DocumentPropertyResponse? = nil;
        var responseError : Error? = nil;
        self.getDocumentProperty(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        _ = semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of getDocumentProtection method
    // Reads document protection common info.
    public func getDocumentProtection(request : GetDocumentProtectionRequest, callback : @escaping (_ response : ProtectionDataResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/protection";
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

            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }

            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "GET",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : ProtectionDataResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: ProtectionDataResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of getDocumentProtection method
    // Reads document protection common info.
    public func getDocumentProtection(request : GetDocumentProtectionRequest) throws -> ProtectionDataResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : ProtectionDataResponse? = nil;
        var responseError : Error? = nil;
        self.getDocumentProtection(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        _ = semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of getDocumentStatistics method
    // Reads document statistics.
    public func getDocumentStatistics(request : GetDocumentStatisticsRequest, callback : @escaping (_ response : StatDataResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/statistics";
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

            if (request.getIncludeComments() != nil) {
                queryItems.append(URLQueryItem(name: "includeComments", value: try ObjectSerializer.serializeToString(value: request.getIncludeComments()!)));
            }

            if (request.getIncludeFootnotes() != nil) {
                queryItems.append(URLQueryItem(name: "includeFootnotes", value: try ObjectSerializer.serializeToString(value: request.getIncludeFootnotes()!)));
            }

            if (request.getIncludeTextInShapes() != nil) {
                queryItems.append(URLQueryItem(name: "includeTextInShapes", value: try ObjectSerializer.serializeToString(value: request.getIncludeTextInShapes()!)));
            }

            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }

            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "GET",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : StatDataResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: StatDataResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of getDocumentStatistics method
    // Reads document statistics.
    public func getDocumentStatistics(request : GetDocumentStatisticsRequest) throws -> StatDataResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : StatDataResponse? = nil;
        var responseError : Error? = nil;
        self.getDocumentStatistics(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        _ = semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of getDocumentWithFormat method
    // Exports the document into the specified format.
    public func getDocumentWithFormat(request : GetDocumentWithFormatRequest, callback : @escaping (_ response : Data?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));

            rawPath = rawPath.replacingOccurrences(of: "//", with: "/");

            let urlPath = (try self.configuration.getApiRootUrl()).appendingPathComponent(rawPath);
            var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
            var queryItems : [URLQueryItem] = [];
            queryItems.append(URLQueryItem(name: "format", value: try ObjectSerializer.serializeToString(value: request.getFormat())));

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

            if (request.getOutPath() != nil) {
                queryItems.append(URLQueryItem(name: "outPath", value: try ObjectSerializer.serializeToString(value: request.getOutPath()!)));
            }

            if (request.getFontsLocation() != nil) {
                queryItems.append(URLQueryItem(name: "fontsLocation", value: try ObjectSerializer.serializeToString(value: request.getFontsLocation()!)));
            }

            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }

            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "GET",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    callback(response, error);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of getDocumentWithFormat method
    // Exports the document into the specified format.
    public func getDocumentWithFormat(request : GetDocumentWithFormatRequest) throws -> Data {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : Data? = nil;
        var responseError : Error? = nil;
        self.getDocumentWithFormat(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        _ = semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of getField method
    // Gets field from document.
    public func getField(request : GetFieldRequest, callback : @escaping (_ response : FieldResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/{nodePath}/fields/{index}";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));

            rawPath = rawPath.replacingOccurrences(of: "{nodePath}", with: try ObjectSerializer.serializeToString(value: request.getNodePath()));

            rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serializeToString(value: request.getIndex()));

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

            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }

            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "GET",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : FieldResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: FieldResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of getField method
    // Gets field from document.
    public func getField(request : GetFieldRequest) throws -> FieldResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : FieldResponse? = nil;
        var responseError : Error? = nil;
        self.getField(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        _ = semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of getFields method
    // Get fields from document.
    public func getFields(request : GetFieldsRequest, callback : @escaping (_ response : FieldsResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/{nodePath}/fields";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));

            rawPath = rawPath.replacingOccurrences(of: "{nodePath}", with: try ObjectSerializer.serializeToString(value: request.getNodePath()));

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

            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }

            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "GET",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : FieldsResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: FieldsResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of getFields method
    // Get fields from document.
    public func getFields(request : GetFieldsRequest) throws -> FieldsResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : FieldsResponse? = nil;
        var responseError : Error? = nil;
        self.getFields(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        _ = semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of getFieldsWithoutNodePath method
    // Get fields from document.
    public func getFieldsWithoutNodePath(request : GetFieldsWithoutNodePathRequest, callback : @escaping (_ response : FieldsResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/fields";
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

            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }

            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "GET",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : FieldsResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: FieldsResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of getFieldsWithoutNodePath method
    // Get fields from document.
    public func getFieldsWithoutNodePath(request : GetFieldsWithoutNodePathRequest) throws -> FieldsResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : FieldsResponse? = nil;
        var responseError : Error? = nil;
        self.getFieldsWithoutNodePath(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        _ = semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of getFieldWithoutNodePath method
    // Gets field from document.
    public func getFieldWithoutNodePath(request : GetFieldWithoutNodePathRequest, callback : @escaping (_ response : FieldResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/fields/{index}";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));

            rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serializeToString(value: request.getIndex()));

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

            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }

            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "GET",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : FieldResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: FieldResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of getFieldWithoutNodePath method
    // Gets field from document.
    public func getFieldWithoutNodePath(request : GetFieldWithoutNodePathRequest) throws -> FieldResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : FieldResponse? = nil;
        var responseError : Error? = nil;
        self.getFieldWithoutNodePath(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        _ = semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of getFilesList method
    // Get all files and folders within a folder.
    public func getFilesList(request : GetFilesListRequest, callback : @escaping (_ response : FilesList?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/storage/folder/{path}";
            rawPath = rawPath.replacingOccurrences(of: "{path}", with: try ObjectSerializer.serializeToString(value: request.getPath()));

            rawPath = rawPath.replacingOccurrences(of: "//", with: "/");

            let urlPath = (try self.configuration.getApiRootUrl()).appendingPathComponent(rawPath);
            var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
            var queryItems : [URLQueryItem] = [];
            if (request.getStorageName() != nil) {
                queryItems.append(URLQueryItem(name: "storageName", value: try ObjectSerializer.serializeToString(value: request.getStorageName()!)));
            }

            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }

            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "GET",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : FilesList? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: FilesList.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of getFilesList method
    // Get all files and folders within a folder.
    public func getFilesList(request : GetFilesListRequest) throws -> FilesList {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : FilesList? = nil;
        var responseError : Error? = nil;
        self.getFilesList(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        _ = semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of getFootnote method
    // Reads footnote by index.
    public func getFootnote(request : GetFootnoteRequest, callback : @escaping (_ response : FootnoteResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/{nodePath}/footnotes/{index}";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));

            rawPath = rawPath.replacingOccurrences(of: "{nodePath}", with: try ObjectSerializer.serializeToString(value: request.getNodePath()));

            rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serializeToString(value: request.getIndex()));

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

            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }

            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "GET",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : FootnoteResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: FootnoteResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of getFootnote method
    // Reads footnote by index.
    public func getFootnote(request : GetFootnoteRequest) throws -> FootnoteResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : FootnoteResponse? = nil;
        var responseError : Error? = nil;
        self.getFootnote(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        _ = semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of getFootnotes method
    // Gets footnotes from document.
    public func getFootnotes(request : GetFootnotesRequest, callback : @escaping (_ response : FootnotesResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/{nodePath}/footnotes";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));

            rawPath = rawPath.replacingOccurrences(of: "{nodePath}", with: try ObjectSerializer.serializeToString(value: request.getNodePath()));

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

            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }

            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "GET",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : FootnotesResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: FootnotesResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of getFootnotes method
    // Gets footnotes from document.
    public func getFootnotes(request : GetFootnotesRequest) throws -> FootnotesResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : FootnotesResponse? = nil;
        var responseError : Error? = nil;
        self.getFootnotes(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        _ = semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of getFootnotesWithoutNodePath method
    // Gets footnotes from document.
    public func getFootnotesWithoutNodePath(request : GetFootnotesWithoutNodePathRequest, callback : @escaping (_ response : FootnotesResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/footnotes";
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

            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }

            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "GET",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : FootnotesResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: FootnotesResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of getFootnotesWithoutNodePath method
    // Gets footnotes from document.
    public func getFootnotesWithoutNodePath(request : GetFootnotesWithoutNodePathRequest) throws -> FootnotesResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : FootnotesResponse? = nil;
        var responseError : Error? = nil;
        self.getFootnotesWithoutNodePath(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        _ = semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of getFootnoteWithoutNodePath method
    // Reads footnote by index.
    public func getFootnoteWithoutNodePath(request : GetFootnoteWithoutNodePathRequest, callback : @escaping (_ response : FootnoteResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/footnotes/{index}";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));

            rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serializeToString(value: request.getIndex()));

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

            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }

            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "GET",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : FootnoteResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: FootnoteResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of getFootnoteWithoutNodePath method
    // Reads footnote by index.
    public func getFootnoteWithoutNodePath(request : GetFootnoteWithoutNodePathRequest) throws -> FootnoteResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : FootnoteResponse? = nil;
        var responseError : Error? = nil;
        self.getFootnoteWithoutNodePath(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        _ = semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of getFormField method
    // Returns representation of an one of the form field.
    public func getFormField(request : GetFormFieldRequest, callback : @escaping (_ response : FormFieldResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/{nodePath}/formfields/{index}";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));

            rawPath = rawPath.replacingOccurrences(of: "{nodePath}", with: try ObjectSerializer.serializeToString(value: request.getNodePath()));

            rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serializeToString(value: request.getIndex()));

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

            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }

            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "GET",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : FormFieldResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: FormFieldResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of getFormField method
    // Returns representation of an one of the form field.
    public func getFormField(request : GetFormFieldRequest) throws -> FormFieldResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : FormFieldResponse? = nil;
        var responseError : Error? = nil;
        self.getFormField(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        _ = semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of getFormFields method
    // Gets form fields from document.
    public func getFormFields(request : GetFormFieldsRequest, callback : @escaping (_ response : FormFieldsResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/{nodePath}/formfields";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));

            rawPath = rawPath.replacingOccurrences(of: "{nodePath}", with: try ObjectSerializer.serializeToString(value: request.getNodePath()));

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

            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }

            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "GET",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : FormFieldsResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: FormFieldsResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of getFormFields method
    // Gets form fields from document.
    public func getFormFields(request : GetFormFieldsRequest) throws -> FormFieldsResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : FormFieldsResponse? = nil;
        var responseError : Error? = nil;
        self.getFormFields(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        _ = semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of getFormFieldsWithoutNodePath method
    // Gets form fields from document.
    public func getFormFieldsWithoutNodePath(request : GetFormFieldsWithoutNodePathRequest, callback : @escaping (_ response : FormFieldsResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/formfields";
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

            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }

            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "GET",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : FormFieldsResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: FormFieldsResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of getFormFieldsWithoutNodePath method
    // Gets form fields from document.
    public func getFormFieldsWithoutNodePath(request : GetFormFieldsWithoutNodePathRequest) throws -> FormFieldsResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : FormFieldsResponse? = nil;
        var responseError : Error? = nil;
        self.getFormFieldsWithoutNodePath(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        _ = semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of getFormFieldWithoutNodePath method
    // Returns representation of an one of the form field.
    public func getFormFieldWithoutNodePath(request : GetFormFieldWithoutNodePathRequest, callback : @escaping (_ response : FormFieldResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/formfields/{index}";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));

            rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serializeToString(value: request.getIndex()));

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

            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }

            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "GET",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : FormFieldResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: FormFieldResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of getFormFieldWithoutNodePath method
    // Returns representation of an one of the form field.
    public func getFormFieldWithoutNodePath(request : GetFormFieldWithoutNodePathRequest) throws -> FormFieldResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : FormFieldResponse? = nil;
        var responseError : Error? = nil;
        self.getFormFieldWithoutNodePath(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        _ = semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of getHeaderFooter method
    // Returns a header/footer from the document by index.
    public func getHeaderFooter(request : GetHeaderFooterRequest, callback : @escaping (_ response : HeaderFooterResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/headersfooters/{headerFooterIndex}";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));

            rawPath = rawPath.replacingOccurrences(of: "{headerFooterIndex}", with: try ObjectSerializer.serializeToString(value: request.getHeaderFooterIndex()));

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

            if (request.getFilterByType() != nil) {
                queryItems.append(URLQueryItem(name: "filterByType", value: try ObjectSerializer.serializeToString(value: request.getFilterByType()!)));
            }

            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }

            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "GET",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : HeaderFooterResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: HeaderFooterResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of getHeaderFooter method
    // Returns a header/footer from the document by index.
    public func getHeaderFooter(request : GetHeaderFooterRequest) throws -> HeaderFooterResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : HeaderFooterResponse? = nil;
        var responseError : Error? = nil;
        self.getHeaderFooter(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        _ = semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of getHeaderFooterOfSection method
    // Returns a header/footer from the document section.
    public func getHeaderFooterOfSection(request : GetHeaderFooterOfSectionRequest, callback : @escaping (_ response : HeaderFooterResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/sections/{sectionIndex}/headersfooters/{headerFooterIndex}";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));

            rawPath = rawPath.replacingOccurrences(of: "{headerFooterIndex}", with: try ObjectSerializer.serializeToString(value: request.getHeaderFooterIndex()));

            rawPath = rawPath.replacingOccurrences(of: "{sectionIndex}", with: try ObjectSerializer.serializeToString(value: request.getSectionIndex()));

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

            if (request.getFilterByType() != nil) {
                queryItems.append(URLQueryItem(name: "filterByType", value: try ObjectSerializer.serializeToString(value: request.getFilterByType()!)));
            }

            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }

            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "GET",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : HeaderFooterResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: HeaderFooterResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of getHeaderFooterOfSection method
    // Returns a header/footer from the document section.
    public func getHeaderFooterOfSection(request : GetHeaderFooterOfSectionRequest) throws -> HeaderFooterResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : HeaderFooterResponse? = nil;
        var responseError : Error? = nil;
        self.getHeaderFooterOfSection(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        _ = semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of getHeaderFooters method
    // Returns a list of header/footers from the document.
    public func getHeaderFooters(request : GetHeaderFootersRequest, callback : @escaping (_ response : HeaderFootersResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/{sectionPath}/headersfooters";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));

            rawPath = rawPath.replacingOccurrences(of: "{sectionPath}", with: try ObjectSerializer.serializeToString(value: request.getSectionPath()));

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

            if (request.getFilterByType() != nil) {
                queryItems.append(URLQueryItem(name: "filterByType", value: try ObjectSerializer.serializeToString(value: request.getFilterByType()!)));
            }

            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }

            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "GET",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : HeaderFootersResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: HeaderFootersResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of getHeaderFooters method
    // Returns a list of header/footers from the document.
    public func getHeaderFooters(request : GetHeaderFootersRequest) throws -> HeaderFootersResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : HeaderFootersResponse? = nil;
        var responseError : Error? = nil;
        self.getHeaderFooters(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        _ = semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of getList method
    // This resource represents one of the lists contained in the document.
    public func getList(request : GetListRequest, callback : @escaping (_ response : ListResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/lists/{listId}";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));

            rawPath = rawPath.replacingOccurrences(of: "{listId}", with: try ObjectSerializer.serializeToString(value: request.getListId()));

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

            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }

            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "GET",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : ListResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: ListResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of getList method
    // This resource represents one of the lists contained in the document.
    public func getList(request : GetListRequest) throws -> ListResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : ListResponse? = nil;
        var responseError : Error? = nil;
        self.getList(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        _ = semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of getLists method
    // Returns a list of lists that are contained in the document.
    public func getLists(request : GetListsRequest, callback : @escaping (_ response : ListsResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/lists";
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

            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }

            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "GET",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : ListsResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: ListsResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of getLists method
    // Returns a list of lists that are contained in the document.
    public func getLists(request : GetListsRequest) throws -> ListsResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : ListsResponse? = nil;
        var responseError : Error? = nil;
        self.getLists(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        _ = semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of getOfficeMathObject method
    // Reads OfficeMath object by index.
    public func getOfficeMathObject(request : GetOfficeMathObjectRequest, callback : @escaping (_ response : OfficeMathObjectResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/{nodePath}/OfficeMathObjects/{index}";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));

            rawPath = rawPath.replacingOccurrences(of: "{nodePath}", with: try ObjectSerializer.serializeToString(value: request.getNodePath()));

            rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serializeToString(value: request.getIndex()));

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

            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }

            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "GET",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : OfficeMathObjectResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: OfficeMathObjectResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of getOfficeMathObject method
    // Reads OfficeMath object by index.
    public func getOfficeMathObject(request : GetOfficeMathObjectRequest) throws -> OfficeMathObjectResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : OfficeMathObjectResponse? = nil;
        var responseError : Error? = nil;
        self.getOfficeMathObject(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        _ = semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of getOfficeMathObjects method
    // Gets OfficeMath objects from document.
    public func getOfficeMathObjects(request : GetOfficeMathObjectsRequest, callback : @escaping (_ response : OfficeMathObjectsResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/{nodePath}/OfficeMathObjects";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));

            rawPath = rawPath.replacingOccurrences(of: "{nodePath}", with: try ObjectSerializer.serializeToString(value: request.getNodePath()));

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

            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }

            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "GET",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : OfficeMathObjectsResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: OfficeMathObjectsResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of getOfficeMathObjects method
    // Gets OfficeMath objects from document.
    public func getOfficeMathObjects(request : GetOfficeMathObjectsRequest) throws -> OfficeMathObjectsResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : OfficeMathObjectsResponse? = nil;
        var responseError : Error? = nil;
        self.getOfficeMathObjects(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        _ = semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of getOfficeMathObjectsWithoutNodePath method
    // Gets OfficeMath objects from document.
    public func getOfficeMathObjectsWithoutNodePath(request : GetOfficeMathObjectsWithoutNodePathRequest, callback : @escaping (_ response : OfficeMathObjectsResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/OfficeMathObjects";
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

            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }

            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "GET",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : OfficeMathObjectsResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: OfficeMathObjectsResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of getOfficeMathObjectsWithoutNodePath method
    // Gets OfficeMath objects from document.
    public func getOfficeMathObjectsWithoutNodePath(request : GetOfficeMathObjectsWithoutNodePathRequest) throws -> OfficeMathObjectsResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : OfficeMathObjectsResponse? = nil;
        var responseError : Error? = nil;
        self.getOfficeMathObjectsWithoutNodePath(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        _ = semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of getOfficeMathObjectWithoutNodePath method
    // Reads OfficeMath object by index.
    public func getOfficeMathObjectWithoutNodePath(request : GetOfficeMathObjectWithoutNodePathRequest, callback : @escaping (_ response : OfficeMathObjectResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/OfficeMathObjects/{index}";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));

            rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serializeToString(value: request.getIndex()));

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

            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }

            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "GET",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : OfficeMathObjectResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: OfficeMathObjectResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of getOfficeMathObjectWithoutNodePath method
    // Reads OfficeMath object by index.
    public func getOfficeMathObjectWithoutNodePath(request : GetOfficeMathObjectWithoutNodePathRequest) throws -> OfficeMathObjectResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : OfficeMathObjectResponse? = nil;
        var responseError : Error? = nil;
        self.getOfficeMathObjectWithoutNodePath(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        _ = semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of getParagraph method
    // This resource represents one of the paragraphs contained in the document.
    public func getParagraph(request : GetParagraphRequest, callback : @escaping (_ response : ParagraphResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/{nodePath}/paragraphs/{index}";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));

            rawPath = rawPath.replacingOccurrences(of: "{nodePath}", with: try ObjectSerializer.serializeToString(value: request.getNodePath()));

            rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serializeToString(value: request.getIndex()));

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

            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }

            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "GET",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : ParagraphResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: ParagraphResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of getParagraph method
    // This resource represents one of the paragraphs contained in the document.
    public func getParagraph(request : GetParagraphRequest) throws -> ParagraphResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : ParagraphResponse? = nil;
        var responseError : Error? = nil;
        self.getParagraph(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        _ = semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of getParagraphFormat method
    // Represents all the formatting for a paragraph.
    public func getParagraphFormat(request : GetParagraphFormatRequest, callback : @escaping (_ response : ParagraphFormatResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/{nodePath}/paragraphs/{index}/format";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));

            rawPath = rawPath.replacingOccurrences(of: "{nodePath}", with: try ObjectSerializer.serializeToString(value: request.getNodePath()));

            rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serializeToString(value: request.getIndex()));

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

            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }

            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "GET",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : ParagraphFormatResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: ParagraphFormatResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of getParagraphFormat method
    // Represents all the formatting for a paragraph.
    public func getParagraphFormat(request : GetParagraphFormatRequest) throws -> ParagraphFormatResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : ParagraphFormatResponse? = nil;
        var responseError : Error? = nil;
        self.getParagraphFormat(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        _ = semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of getParagraphFormatWithoutNodePath method
    // Represents all the formatting for a paragraph.
    public func getParagraphFormatWithoutNodePath(request : GetParagraphFormatWithoutNodePathRequest, callback : @escaping (_ response : ParagraphFormatResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/paragraphs/{index}/format";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));

            rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serializeToString(value: request.getIndex()));

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

            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }

            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "GET",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : ParagraphFormatResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: ParagraphFormatResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of getParagraphFormatWithoutNodePath method
    // Represents all the formatting for a paragraph.
    public func getParagraphFormatWithoutNodePath(request : GetParagraphFormatWithoutNodePathRequest) throws -> ParagraphFormatResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : ParagraphFormatResponse? = nil;
        var responseError : Error? = nil;
        self.getParagraphFormatWithoutNodePath(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        _ = semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of getParagraphListFormat method
    // Represents list format for a paragraph.
    public func getParagraphListFormat(request : GetParagraphListFormatRequest, callback : @escaping (_ response : ParagraphListFormatResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/{nodePath}/paragraphs/{index}/listFormat";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));

            rawPath = rawPath.replacingOccurrences(of: "{nodePath}", with: try ObjectSerializer.serializeToString(value: request.getNodePath()));

            rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serializeToString(value: request.getIndex()));

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

            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }

            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "GET",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : ParagraphListFormatResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: ParagraphListFormatResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of getParagraphListFormat method
    // Represents list format for a paragraph.
    public func getParagraphListFormat(request : GetParagraphListFormatRequest) throws -> ParagraphListFormatResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : ParagraphListFormatResponse? = nil;
        var responseError : Error? = nil;
        self.getParagraphListFormat(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        _ = semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of getParagraphListFormatWithoutNodePath method
    // Represents list format for a paragraph.
    public func getParagraphListFormatWithoutNodePath(request : GetParagraphListFormatWithoutNodePathRequest, callback : @escaping (_ response : ParagraphListFormatResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/paragraphs/{index}/listFormat";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));

            rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serializeToString(value: request.getIndex()));

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

            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }

            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "GET",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : ParagraphListFormatResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: ParagraphListFormatResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of getParagraphListFormatWithoutNodePath method
    // Represents list format for a paragraph.
    public func getParagraphListFormatWithoutNodePath(request : GetParagraphListFormatWithoutNodePathRequest) throws -> ParagraphListFormatResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : ParagraphListFormatResponse? = nil;
        var responseError : Error? = nil;
        self.getParagraphListFormatWithoutNodePath(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        _ = semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of getParagraphs method
    // Returns a list of paragraphs that are contained in the document.
    public func getParagraphs(request : GetParagraphsRequest, callback : @escaping (_ response : ParagraphLinkCollectionResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/{nodePath}/paragraphs";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));

            rawPath = rawPath.replacingOccurrences(of: "{nodePath}", with: try ObjectSerializer.serializeToString(value: request.getNodePath()));

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

            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }

            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "GET",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : ParagraphLinkCollectionResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: ParagraphLinkCollectionResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of getParagraphs method
    // Returns a list of paragraphs that are contained in the document.
    public func getParagraphs(request : GetParagraphsRequest) throws -> ParagraphLinkCollectionResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : ParagraphLinkCollectionResponse? = nil;
        var responseError : Error? = nil;
        self.getParagraphs(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        _ = semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of getParagraphsWithoutNodePath method
    // Returns a list of paragraphs that are contained in the document.
    public func getParagraphsWithoutNodePath(request : GetParagraphsWithoutNodePathRequest, callback : @escaping (_ response : ParagraphLinkCollectionResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/paragraphs";
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

            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }

            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "GET",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : ParagraphLinkCollectionResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: ParagraphLinkCollectionResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of getParagraphsWithoutNodePath method
    // Returns a list of paragraphs that are contained in the document.
    public func getParagraphsWithoutNodePath(request : GetParagraphsWithoutNodePathRequest) throws -> ParagraphLinkCollectionResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : ParagraphLinkCollectionResponse? = nil;
        var responseError : Error? = nil;
        self.getParagraphsWithoutNodePath(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        _ = semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of getParagraphTabStops method
    // Get all tab stops for the paragraph.
    public func getParagraphTabStops(request : GetParagraphTabStopsRequest, callback : @escaping (_ response : TabStopsResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/{nodePath}/paragraphs/{index}/tabstops";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));

            rawPath = rawPath.replacingOccurrences(of: "{nodePath}", with: try ObjectSerializer.serializeToString(value: request.getNodePath()));

            rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serializeToString(value: request.getIndex()));

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

            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }

            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "GET",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : TabStopsResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: TabStopsResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of getParagraphTabStops method
    // Get all tab stops for the paragraph.
    public func getParagraphTabStops(request : GetParagraphTabStopsRequest) throws -> TabStopsResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : TabStopsResponse? = nil;
        var responseError : Error? = nil;
        self.getParagraphTabStops(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        _ = semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of getParagraphTabStopsWithoutNodePath method
    // Get all tab stops for the paragraph.
    public func getParagraphTabStopsWithoutNodePath(request : GetParagraphTabStopsWithoutNodePathRequest, callback : @escaping (_ response : TabStopsResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/paragraphs/{index}/tabstops";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));

            rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serializeToString(value: request.getIndex()));

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

            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }

            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "GET",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : TabStopsResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: TabStopsResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of getParagraphTabStopsWithoutNodePath method
    // Get all tab stops for the paragraph.
    public func getParagraphTabStopsWithoutNodePath(request : GetParagraphTabStopsWithoutNodePathRequest) throws -> TabStopsResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : TabStopsResponse? = nil;
        var responseError : Error? = nil;
        self.getParagraphTabStopsWithoutNodePath(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        _ = semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of getParagraphWithoutNodePath method
    // This resource represents one of the paragraphs contained in the document.
    public func getParagraphWithoutNodePath(request : GetParagraphWithoutNodePathRequest, callback : @escaping (_ response : ParagraphResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/paragraphs/{index}";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));

            rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serializeToString(value: request.getIndex()));

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

            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }

            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "GET",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : ParagraphResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: ParagraphResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of getParagraphWithoutNodePath method
    // This resource represents one of the paragraphs contained in the document.
    public func getParagraphWithoutNodePath(request : GetParagraphWithoutNodePathRequest) throws -> ParagraphResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : ParagraphResponse? = nil;
        var responseError : Error? = nil;
        self.getParagraphWithoutNodePath(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        _ = semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of getRangeText method
    // Gets the text from the range.
    public func getRangeText(request : GetRangeTextRequest, callback : @escaping (_ response : RangeTextResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/range/{rangeStartIdentifier}/{rangeEndIdentifier}";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));

            rawPath = rawPath.replacingOccurrences(of: "{rangeStartIdentifier}", with: try ObjectSerializer.serializeToString(value: request.getRangeStartIdentifier()));

            if (request.getRangeEndIdentifier() != nil) {
                rawPath = rawPath.replacingOccurrences(of: "{rangeEndIdentifier}", with: try ObjectSerializer.serializeToString(value: request.getRangeEndIdentifier()!));
            }

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

            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }

            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "GET",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : RangeTextResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: RangeTextResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of getRangeText method
    // Gets the text from the range.
    public func getRangeText(request : GetRangeTextRequest) throws -> RangeTextResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : RangeTextResponse? = nil;
        var responseError : Error? = nil;
        self.getRangeText(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        _ = semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of getRun method
    // This resource represents run of text contained in the document.
    public func getRun(request : GetRunRequest, callback : @escaping (_ response : RunResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/{paragraphPath}/runs/{index}";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));

            rawPath = rawPath.replacingOccurrences(of: "{paragraphPath}", with: try ObjectSerializer.serializeToString(value: request.getParagraphPath()));

            rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serializeToString(value: request.getIndex()));

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

            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }

            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "GET",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : RunResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: RunResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of getRun method
    // This resource represents run of text contained in the document.
    public func getRun(request : GetRunRequest) throws -> RunResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : RunResponse? = nil;
        var responseError : Error? = nil;
        self.getRun(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        _ = semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of getRunFont method
    // This resource represents font of run.
    public func getRunFont(request : GetRunFontRequest, callback : @escaping (_ response : FontResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/{paragraphPath}/runs/{index}/font";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));

            rawPath = rawPath.replacingOccurrences(of: "{paragraphPath}", with: try ObjectSerializer.serializeToString(value: request.getParagraphPath()));

            rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serializeToString(value: request.getIndex()));

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

            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }

            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "GET",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : FontResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: FontResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of getRunFont method
    // This resource represents font of run.
    public func getRunFont(request : GetRunFontRequest) throws -> FontResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : FontResponse? = nil;
        var responseError : Error? = nil;
        self.getRunFont(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        _ = semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of getRuns method
    // This resource represents collection of runs in the paragraph.
    public func getRuns(request : GetRunsRequest, callback : @escaping (_ response : RunsResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/{paragraphPath}/runs";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));

            rawPath = rawPath.replacingOccurrences(of: "{paragraphPath}", with: try ObjectSerializer.serializeToString(value: request.getParagraphPath()));

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

            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }

            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "GET",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : RunsResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: RunsResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of getRuns method
    // This resource represents collection of runs in the paragraph.
    public func getRuns(request : GetRunsRequest) throws -> RunsResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : RunsResponse? = nil;
        var responseError : Error? = nil;
        self.getRuns(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        _ = semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of getSection method
    // Gets document section by index.
    public func getSection(request : GetSectionRequest, callback : @escaping (_ response : SectionResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/sections/{sectionIndex}";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));

            rawPath = rawPath.replacingOccurrences(of: "{sectionIndex}", with: try ObjectSerializer.serializeToString(value: request.getSectionIndex()));

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

            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }

            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "GET",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : SectionResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: SectionResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of getSection method
    // Gets document section by index.
    public func getSection(request : GetSectionRequest) throws -> SectionResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : SectionResponse? = nil;
        var responseError : Error? = nil;
        self.getSection(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        _ = semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of getSectionPageSetup method
    // Gets page setup of section.
    public func getSectionPageSetup(request : GetSectionPageSetupRequest, callback : @escaping (_ response : SectionPageSetupResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/sections/{sectionIndex}/pageSetup";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));

            rawPath = rawPath.replacingOccurrences(of: "{sectionIndex}", with: try ObjectSerializer.serializeToString(value: request.getSectionIndex()));

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

            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }

            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "GET",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : SectionPageSetupResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: SectionPageSetupResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of getSectionPageSetup method
    // Gets page setup of section.
    public func getSectionPageSetup(request : GetSectionPageSetupRequest) throws -> SectionPageSetupResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : SectionPageSetupResponse? = nil;
        var responseError : Error? = nil;
        self.getSectionPageSetup(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        _ = semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of getSections method
    // Returns a list of sections that are contained in the document.
    public func getSections(request : GetSectionsRequest, callback : @escaping (_ response : SectionLinkCollectionResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/sections";
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

            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }

            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "GET",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : SectionLinkCollectionResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: SectionLinkCollectionResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of getSections method
    // Returns a list of sections that are contained in the document.
    public func getSections(request : GetSectionsRequest) throws -> SectionLinkCollectionResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : SectionLinkCollectionResponse? = nil;
        var responseError : Error? = nil;
        self.getSections(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        _ = semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of getStyle method
    // This resource represents one of the styles contained in the document.
    public func getStyle(request : GetStyleRequest, callback : @escaping (_ response : StyleResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/styles/{styleName}";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));

            rawPath = rawPath.replacingOccurrences(of: "{styleName}", with: try ObjectSerializer.serializeToString(value: request.getStyleName()));

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

            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }

            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "GET",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : StyleResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: StyleResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of getStyle method
    // This resource represents one of the styles contained in the document.
    public func getStyle(request : GetStyleRequest) throws -> StyleResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : StyleResponse? = nil;
        var responseError : Error? = nil;
        self.getStyle(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        _ = semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of getStyleFromDocumentElement method
    // Gets a style from the document node.
    public func getStyleFromDocumentElement(request : GetStyleFromDocumentElementRequest, callback : @escaping (_ response : StyleResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/{styledNodePath}/style";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));

            rawPath = rawPath.replacingOccurrences(of: "{styledNodePath}", with: try ObjectSerializer.serializeToString(value: request.getStyledNodePath()));

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

            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }

            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "GET",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : StyleResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: StyleResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of getStyleFromDocumentElement method
    // Gets a style from the document node.
    public func getStyleFromDocumentElement(request : GetStyleFromDocumentElementRequest) throws -> StyleResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : StyleResponse? = nil;
        var responseError : Error? = nil;
        self.getStyleFromDocumentElement(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        _ = semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of getStyles method
    // Returns a list of styles contained in the document.
    public func getStyles(request : GetStylesRequest, callback : @escaping (_ response : StylesResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/styles";
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

            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }

            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "GET",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : StylesResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: StylesResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of getStyles method
    // Returns a list of styles contained in the document.
    public func getStyles(request : GetStylesRequest) throws -> StylesResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : StylesResponse? = nil;
        var responseError : Error? = nil;
        self.getStyles(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        _ = semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of getTable method
    // Returns a table.
    public func getTable(request : GetTableRequest, callback : @escaping (_ response : TableResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/{nodePath}/tables/{index}";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));

            rawPath = rawPath.replacingOccurrences(of: "{nodePath}", with: try ObjectSerializer.serializeToString(value: request.getNodePath()));

            rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serializeToString(value: request.getIndex()));

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

            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }

            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "GET",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : TableResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: TableResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of getTable method
    // Returns a table.
    public func getTable(request : GetTableRequest) throws -> TableResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : TableResponse? = nil;
        var responseError : Error? = nil;
        self.getTable(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        _ = semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of getTableCell method
    // Returns a table cell.
    public func getTableCell(request : GetTableCellRequest, callback : @escaping (_ response : TableCellResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/{tableRowPath}/cells/{index}";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));

            rawPath = rawPath.replacingOccurrences(of: "{tableRowPath}", with: try ObjectSerializer.serializeToString(value: request.getTableRowPath()));

            rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serializeToString(value: request.getIndex()));

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

            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }

            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "GET",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : TableCellResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: TableCellResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of getTableCell method
    // Returns a table cell.
    public func getTableCell(request : GetTableCellRequest) throws -> TableCellResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : TableCellResponse? = nil;
        var responseError : Error? = nil;
        self.getTableCell(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        _ = semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of getTableCellFormat method
    // Returns a table cell format.
    public func getTableCellFormat(request : GetTableCellFormatRequest, callback : @escaping (_ response : TableCellFormatResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/{tableRowPath}/cells/{index}/cellformat";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));

            rawPath = rawPath.replacingOccurrences(of: "{tableRowPath}", with: try ObjectSerializer.serializeToString(value: request.getTableRowPath()));

            rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serializeToString(value: request.getIndex()));

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

            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }

            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "GET",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : TableCellFormatResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: TableCellFormatResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of getTableCellFormat method
    // Returns a table cell format.
    public func getTableCellFormat(request : GetTableCellFormatRequest) throws -> TableCellFormatResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : TableCellFormatResponse? = nil;
        var responseError : Error? = nil;
        self.getTableCellFormat(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        _ = semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of getTableProperties method
    // Returns a table properties.
    public func getTableProperties(request : GetTablePropertiesRequest, callback : @escaping (_ response : TablePropertiesResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/{nodePath}/tables/{index}/properties";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));

            rawPath = rawPath.replacingOccurrences(of: "{nodePath}", with: try ObjectSerializer.serializeToString(value: request.getNodePath()));

            rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serializeToString(value: request.getIndex()));

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

            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }

            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "GET",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : TablePropertiesResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: TablePropertiesResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of getTableProperties method
    // Returns a table properties.
    public func getTableProperties(request : GetTablePropertiesRequest) throws -> TablePropertiesResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : TablePropertiesResponse? = nil;
        var responseError : Error? = nil;
        self.getTableProperties(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        _ = semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of getTablePropertiesWithoutNodePath method
    // Returns a table properties.
    public func getTablePropertiesWithoutNodePath(request : GetTablePropertiesWithoutNodePathRequest, callback : @escaping (_ response : TablePropertiesResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/tables/{index}/properties";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));

            rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serializeToString(value: request.getIndex()));

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

            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }

            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "GET",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : TablePropertiesResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: TablePropertiesResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of getTablePropertiesWithoutNodePath method
    // Returns a table properties.
    public func getTablePropertiesWithoutNodePath(request : GetTablePropertiesWithoutNodePathRequest) throws -> TablePropertiesResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : TablePropertiesResponse? = nil;
        var responseError : Error? = nil;
        self.getTablePropertiesWithoutNodePath(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        _ = semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of getTableRow method
    // Returns a table row.
    public func getTableRow(request : GetTableRowRequest, callback : @escaping (_ response : TableRowResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/{tablePath}/rows/{index}";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));

            rawPath = rawPath.replacingOccurrences(of: "{tablePath}", with: try ObjectSerializer.serializeToString(value: request.getTablePath()));

            rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serializeToString(value: request.getIndex()));

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

            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }

            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "GET",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : TableRowResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: TableRowResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of getTableRow method
    // Returns a table row.
    public func getTableRow(request : GetTableRowRequest) throws -> TableRowResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : TableRowResponse? = nil;
        var responseError : Error? = nil;
        self.getTableRow(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        _ = semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of getTableRowFormat method
    // Returns a table row format.
    public func getTableRowFormat(request : GetTableRowFormatRequest, callback : @escaping (_ response : TableRowFormatResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/{tablePath}/rows/{index}/rowformat";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));

            rawPath = rawPath.replacingOccurrences(of: "{tablePath}", with: try ObjectSerializer.serializeToString(value: request.getTablePath()));

            rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serializeToString(value: request.getIndex()));

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

            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }

            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "GET",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : TableRowFormatResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: TableRowFormatResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of getTableRowFormat method
    // Returns a table row format.
    public func getTableRowFormat(request : GetTableRowFormatRequest) throws -> TableRowFormatResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : TableRowFormatResponse? = nil;
        var responseError : Error? = nil;
        self.getTableRowFormat(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        _ = semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of getTables method
    // Returns a list of tables that are contained in the document.
    public func getTables(request : GetTablesRequest, callback : @escaping (_ response : TableLinkCollectionResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/{nodePath}/tables";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));

            rawPath = rawPath.replacingOccurrences(of: "{nodePath}", with: try ObjectSerializer.serializeToString(value: request.getNodePath()));

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

            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }

            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "GET",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : TableLinkCollectionResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: TableLinkCollectionResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of getTables method
    // Returns a list of tables that are contained in the document.
    public func getTables(request : GetTablesRequest) throws -> TableLinkCollectionResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : TableLinkCollectionResponse? = nil;
        var responseError : Error? = nil;
        self.getTables(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        _ = semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of getTablesWithoutNodePath method
    // Returns a list of tables that are contained in the document.
    public func getTablesWithoutNodePath(request : GetTablesWithoutNodePathRequest, callback : @escaping (_ response : TableLinkCollectionResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/tables";
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

            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }

            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "GET",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : TableLinkCollectionResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: TableLinkCollectionResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of getTablesWithoutNodePath method
    // Returns a list of tables that are contained in the document.
    public func getTablesWithoutNodePath(request : GetTablesWithoutNodePathRequest) throws -> TableLinkCollectionResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : TableLinkCollectionResponse? = nil;
        var responseError : Error? = nil;
        self.getTablesWithoutNodePath(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        _ = semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of getTableWithoutNodePath method
    // Returns a table.
    public func getTableWithoutNodePath(request : GetTableWithoutNodePathRequest, callback : @escaping (_ response : TableResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/tables/{index}";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));

            rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serializeToString(value: request.getIndex()));

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

            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }

            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "GET",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : TableResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: TableResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of getTableWithoutNodePath method
    // Returns a table.
    public func getTableWithoutNodePath(request : GetTableWithoutNodePathRequest) throws -> TableResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : TableResponse? = nil;
        var responseError : Error? = nil;
        self.getTableWithoutNodePath(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        _ = semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of insertComment method
    // Adds comment to document, returns inserted comment data.
    public func insertComment(request : InsertCommentRequest, callback : @escaping (_ response : CommentResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/comments";
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

            if (request.getDestFileName() != nil) {
                queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serializeToString(value: request.getDestFileName()!)));
            }

            if (request.getRevisionAuthor() != nil) {
                queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serializeToString(value: request.getRevisionAuthor()!)));
            }

            if (request.getRevisionDateTime() != nil) {
                queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serializeToString(value: request.getRevisionDateTime()!)));
            }

            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }

            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "POST",
                body: try ObjectSerializer.serializeBody(value: request.getComment()),
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : CommentResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: CommentResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of insertComment method
    // Adds comment to document, returns inserted comment data.
    public func insertComment(request : InsertCommentRequest) throws -> CommentResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : CommentResponse? = nil;
        var responseError : Error? = nil;
        self.insertComment(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        _ = semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of insertDrawingObject method
    // Adds drawing object to document, returns added  drawing object's data.
    public func insertDrawingObject(request : InsertDrawingObjectRequest, callback : @escaping (_ response : DrawingObjectResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/{nodePath}/drawingObjects";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));

            rawPath = rawPath.replacingOccurrences(of: "{nodePath}", with: try ObjectSerializer.serializeToString(value: request.getNodePath()));

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

            if (request.getDestFileName() != nil) {
                queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serializeToString(value: request.getDestFileName()!)));
            }

            if (request.getRevisionAuthor() != nil) {
                queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serializeToString(value: request.getRevisionAuthor()!)));
            }

            if (request.getRevisionDateTime() != nil) {
                queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serializeToString(value: request.getRevisionDateTime()!)));
            }

            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }
            var formParams : [RequestFormParam] = [];
            formParams.append(RequestFormParam(name: "drawingObject", body: try ObjectSerializer.serialize(value: request.getDrawingObject())));

            formParams.append(RequestFormParam(name: "imageFile", body: try ObjectSerializer.serializeFile(value: request.getImageFile())));


            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "POST",
                body: nil,
                headers: nil,
                formParams: formParams,
                callback: { response, error in
                    var responseObject : DrawingObjectResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: DrawingObjectResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of insertDrawingObject method
    // Adds drawing object to document, returns added  drawing object's data.
    public func insertDrawingObject(request : InsertDrawingObjectRequest) throws -> DrawingObjectResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : DrawingObjectResponse? = nil;
        var responseError : Error? = nil;
        self.insertDrawingObject(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        _ = semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of insertDrawingObjectWithoutNodePath method
    // Adds drawing object to document, returns added  drawing object's data.
    public func insertDrawingObjectWithoutNodePath(request : InsertDrawingObjectWithoutNodePathRequest, callback : @escaping (_ response : DrawingObjectResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/drawingObjects";
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

            if (request.getDestFileName() != nil) {
                queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serializeToString(value: request.getDestFileName()!)));
            }

            if (request.getRevisionAuthor() != nil) {
                queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serializeToString(value: request.getRevisionAuthor()!)));
            }

            if (request.getRevisionDateTime() != nil) {
                queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serializeToString(value: request.getRevisionDateTime()!)));
            }

            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }
            var formParams : [RequestFormParam] = [];
            formParams.append(RequestFormParam(name: "drawingObject", body: try ObjectSerializer.serialize(value: request.getDrawingObject())));

            formParams.append(RequestFormParam(name: "imageFile", body: try ObjectSerializer.serializeFile(value: request.getImageFile())));


            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "POST",
                body: nil,
                headers: nil,
                formParams: formParams,
                callback: { response, error in
                    var responseObject : DrawingObjectResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: DrawingObjectResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of insertDrawingObjectWithoutNodePath method
    // Adds drawing object to document, returns added  drawing object's data.
    public func insertDrawingObjectWithoutNodePath(request : InsertDrawingObjectWithoutNodePathRequest) throws -> DrawingObjectResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : DrawingObjectResponse? = nil;
        var responseError : Error? = nil;
        self.insertDrawingObjectWithoutNodePath(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        _ = semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of insertField method
    // Adds field to document, returns inserted field's data.
    public func insertField(request : InsertFieldRequest, callback : @escaping (_ response : FieldResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/{nodePath}/fields";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));

            rawPath = rawPath.replacingOccurrences(of: "{nodePath}", with: try ObjectSerializer.serializeToString(value: request.getNodePath()));

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

            if (request.getDestFileName() != nil) {
                queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serializeToString(value: request.getDestFileName()!)));
            }

            if (request.getRevisionAuthor() != nil) {
                queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serializeToString(value: request.getRevisionAuthor()!)));
            }

            if (request.getRevisionDateTime() != nil) {
                queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serializeToString(value: request.getRevisionDateTime()!)));
            }

            if (request.getInsertBeforeNode() != nil) {
                queryItems.append(URLQueryItem(name: "insertBeforeNode", value: try ObjectSerializer.serializeToString(value: request.getInsertBeforeNode()!)));
            }

            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }

            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "POST",
                body: try ObjectSerializer.serializeBody(value: request.getField()),
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : FieldResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: FieldResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of insertField method
    // Adds field to document, returns inserted field's data.
    public func insertField(request : InsertFieldRequest) throws -> FieldResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : FieldResponse? = nil;
        var responseError : Error? = nil;
        self.insertField(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        _ = semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of insertFieldWithoutNodePath method
    // Adds field to document, returns inserted field's data.
    public func insertFieldWithoutNodePath(request : InsertFieldWithoutNodePathRequest, callback : @escaping (_ response : FieldResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/fields";
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

            if (request.getDestFileName() != nil) {
                queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serializeToString(value: request.getDestFileName()!)));
            }

            if (request.getRevisionAuthor() != nil) {
                queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serializeToString(value: request.getRevisionAuthor()!)));
            }

            if (request.getRevisionDateTime() != nil) {
                queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serializeToString(value: request.getRevisionDateTime()!)));
            }

            if (request.getInsertBeforeNode() != nil) {
                queryItems.append(URLQueryItem(name: "insertBeforeNode", value: try ObjectSerializer.serializeToString(value: request.getInsertBeforeNode()!)));
            }

            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }

            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "POST",
                body: try ObjectSerializer.serializeBody(value: request.getField()),
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : FieldResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: FieldResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of insertFieldWithoutNodePath method
    // Adds field to document, returns inserted field's data.
    public func insertFieldWithoutNodePath(request : InsertFieldWithoutNodePathRequest) throws -> FieldResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : FieldResponse? = nil;
        var responseError : Error? = nil;
        self.insertFieldWithoutNodePath(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        _ = semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of insertFootnote method
    // Adds footnote to document, returns added footnote's data.
    public func insertFootnote(request : InsertFootnoteRequest, callback : @escaping (_ response : FootnoteResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/{nodePath}/footnotes";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));

            rawPath = rawPath.replacingOccurrences(of: "{nodePath}", with: try ObjectSerializer.serializeToString(value: request.getNodePath()));

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

            if (request.getDestFileName() != nil) {
                queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serializeToString(value: request.getDestFileName()!)));
            }

            if (request.getRevisionAuthor() != nil) {
                queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serializeToString(value: request.getRevisionAuthor()!)));
            }

            if (request.getRevisionDateTime() != nil) {
                queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serializeToString(value: request.getRevisionDateTime()!)));
            }

            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }

            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "POST",
                body: try ObjectSerializer.serializeBody(value: request.getFootnoteDto()),
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : FootnoteResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: FootnoteResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of insertFootnote method
    // Adds footnote to document, returns added footnote's data.
    public func insertFootnote(request : InsertFootnoteRequest) throws -> FootnoteResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : FootnoteResponse? = nil;
        var responseError : Error? = nil;
        self.insertFootnote(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        _ = semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of insertFootnoteWithoutNodePath method
    // Adds footnote to document, returns added footnote's data.
    public func insertFootnoteWithoutNodePath(request : InsertFootnoteWithoutNodePathRequest, callback : @escaping (_ response : FootnoteResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/footnotes";
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

            if (request.getDestFileName() != nil) {
                queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serializeToString(value: request.getDestFileName()!)));
            }

            if (request.getRevisionAuthor() != nil) {
                queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serializeToString(value: request.getRevisionAuthor()!)));
            }

            if (request.getRevisionDateTime() != nil) {
                queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serializeToString(value: request.getRevisionDateTime()!)));
            }

            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }

            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "POST",
                body: try ObjectSerializer.serializeBody(value: request.getFootnoteDto()),
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : FootnoteResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: FootnoteResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of insertFootnoteWithoutNodePath method
    // Adds footnote to document, returns added footnote's data.
    public func insertFootnoteWithoutNodePath(request : InsertFootnoteWithoutNodePathRequest) throws -> FootnoteResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : FootnoteResponse? = nil;
        var responseError : Error? = nil;
        self.insertFootnoteWithoutNodePath(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        _ = semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of insertFormField method
    // Adds form field to paragraph, returns added form field's data.
    public func insertFormField(request : InsertFormFieldRequest, callback : @escaping (_ response : FormFieldResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/{nodePath}/formfields";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));

            rawPath = rawPath.replacingOccurrences(of: "{nodePath}", with: try ObjectSerializer.serializeToString(value: request.getNodePath()));

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

            if (request.getDestFileName() != nil) {
                queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serializeToString(value: request.getDestFileName()!)));
            }

            if (request.getRevisionAuthor() != nil) {
                queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serializeToString(value: request.getRevisionAuthor()!)));
            }

            if (request.getRevisionDateTime() != nil) {
                queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serializeToString(value: request.getRevisionDateTime()!)));
            }

            if (request.getInsertBeforeNode() != nil) {
                queryItems.append(URLQueryItem(name: "insertBeforeNode", value: try ObjectSerializer.serializeToString(value: request.getInsertBeforeNode()!)));
            }

            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }

            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "POST",
                body: try ObjectSerializer.serializeBody(value: request.getFormField()),
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : FormFieldResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: FormFieldResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of insertFormField method
    // Adds form field to paragraph, returns added form field's data.
    public func insertFormField(request : InsertFormFieldRequest) throws -> FormFieldResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : FormFieldResponse? = nil;
        var responseError : Error? = nil;
        self.insertFormField(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        _ = semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of insertFormFieldWithoutNodePath method
    // Adds form field to paragraph, returns added form field's data.
    public func insertFormFieldWithoutNodePath(request : InsertFormFieldWithoutNodePathRequest, callback : @escaping (_ response : FormFieldResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/formfields";
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

            if (request.getDestFileName() != nil) {
                queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serializeToString(value: request.getDestFileName()!)));
            }

            if (request.getRevisionAuthor() != nil) {
                queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serializeToString(value: request.getRevisionAuthor()!)));
            }

            if (request.getRevisionDateTime() != nil) {
                queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serializeToString(value: request.getRevisionDateTime()!)));
            }

            if (request.getInsertBeforeNode() != nil) {
                queryItems.append(URLQueryItem(name: "insertBeforeNode", value: try ObjectSerializer.serializeToString(value: request.getInsertBeforeNode()!)));
            }

            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }

            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "POST",
                body: try ObjectSerializer.serializeBody(value: request.getFormField()),
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : FormFieldResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: FormFieldResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of insertFormFieldWithoutNodePath method
    // Adds form field to paragraph, returns added form field's data.
    public func insertFormFieldWithoutNodePath(request : InsertFormFieldWithoutNodePathRequest) throws -> FormFieldResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : FormFieldResponse? = nil;
        var responseError : Error? = nil;
        self.insertFormFieldWithoutNodePath(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        _ = semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of insertHeaderFooter method
    // Inserts to document header or footer.
    public func insertHeaderFooter(request : InsertHeaderFooterRequest, callback : @escaping (_ response : HeaderFooterResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/{sectionPath}/headersfooters";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));

            rawPath = rawPath.replacingOccurrences(of: "{sectionPath}", with: try ObjectSerializer.serializeToString(value: request.getSectionPath()));

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

            if (request.getDestFileName() != nil) {
                queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serializeToString(value: request.getDestFileName()!)));
            }

            if (request.getRevisionAuthor() != nil) {
                queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serializeToString(value: request.getRevisionAuthor()!)));
            }

            if (request.getRevisionDateTime() != nil) {
                queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serializeToString(value: request.getRevisionDateTime()!)));
            }

            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }

            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "PUT",
                body: try ObjectSerializer.serializeBody(value: request.getHeaderFooterType()),
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : HeaderFooterResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: HeaderFooterResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of insertHeaderFooter method
    // Inserts to document header or footer.
    public func insertHeaderFooter(request : InsertHeaderFooterRequest) throws -> HeaderFooterResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : HeaderFooterResponse? = nil;
        var responseError : Error? = nil;
        self.insertHeaderFooter(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        _ = semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of insertList method
    // Adds list to document, returns added list's data.
    public func insertList(request : InsertListRequest, callback : @escaping (_ response : ListResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/lists";
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

            if (request.getDestFileName() != nil) {
                queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serializeToString(value: request.getDestFileName()!)));
            }

            if (request.getRevisionAuthor() != nil) {
                queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serializeToString(value: request.getRevisionAuthor()!)));
            }

            if (request.getRevisionDateTime() != nil) {
                queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serializeToString(value: request.getRevisionDateTime()!)));
            }

            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }

            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "POST",
                body: try ObjectSerializer.serializeBody(value: request.getListInsert()),
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : ListResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: ListResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of insertList method
    // Adds list to document, returns added list's data.
    public func insertList(request : InsertListRequest) throws -> ListResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : ListResponse? = nil;
        var responseError : Error? = nil;
        self.insertList(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        _ = semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of insertOrUpdateParagraphTabStop method
    // Insert or resplace tab stop if a tab stop with the position exists.
    public func insertOrUpdateParagraphTabStop(request : InsertOrUpdateParagraphTabStopRequest, callback : @escaping (_ response : TabStopsResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/{nodePath}/paragraphs/{index}/tabstops";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));

            rawPath = rawPath.replacingOccurrences(of: "{nodePath}", with: try ObjectSerializer.serializeToString(value: request.getNodePath()));

            rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serializeToString(value: request.getIndex()));

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

            if (request.getDestFileName() != nil) {
                queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serializeToString(value: request.getDestFileName()!)));
            }

            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }

            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "POST",
                body: try ObjectSerializer.serializeBody(value: request.getDto()),
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : TabStopsResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: TabStopsResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of insertOrUpdateParagraphTabStop method
    // Insert or resplace tab stop if a tab stop with the position exists.
    public func insertOrUpdateParagraphTabStop(request : InsertOrUpdateParagraphTabStopRequest) throws -> TabStopsResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : TabStopsResponse? = nil;
        var responseError : Error? = nil;
        self.insertOrUpdateParagraphTabStop(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        _ = semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of insertOrUpdateParagraphTabStopWithoutNodePath method
    // Insert or resplace tab stop if a tab stop with the position exists.
    public func insertOrUpdateParagraphTabStopWithoutNodePath(request : InsertOrUpdateParagraphTabStopWithoutNodePathRequest, callback : @escaping (_ response : TabStopsResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/paragraphs/{index}/tabstops";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));

            rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serializeToString(value: request.getIndex()));

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

            if (request.getDestFileName() != nil) {
                queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serializeToString(value: request.getDestFileName()!)));
            }

            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }

            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "POST",
                body: try ObjectSerializer.serializeBody(value: request.getDto()),
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : TabStopsResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: TabStopsResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of insertOrUpdateParagraphTabStopWithoutNodePath method
    // Insert or resplace tab stop if a tab stop with the position exists.
    public func insertOrUpdateParagraphTabStopWithoutNodePath(request : InsertOrUpdateParagraphTabStopWithoutNodePathRequest) throws -> TabStopsResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : TabStopsResponse? = nil;
        var responseError : Error? = nil;
        self.insertOrUpdateParagraphTabStopWithoutNodePath(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        _ = semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of insertPageNumbers method
    // Inserts document page numbers.
    public func insertPageNumbers(request : InsertPageNumbersRequest, callback : @escaping (_ response : DocumentResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/PageNumbers";
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

            if (request.getDestFileName() != nil) {
                queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serializeToString(value: request.getDestFileName()!)));
            }

            if (request.getRevisionAuthor() != nil) {
                queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serializeToString(value: request.getRevisionAuthor()!)));
            }

            if (request.getRevisionDateTime() != nil) {
                queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serializeToString(value: request.getRevisionDateTime()!)));
            }

            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }

            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "PUT",
                body: try ObjectSerializer.serializeBody(value: request.getPageNumber()),
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : DocumentResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: DocumentResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of insertPageNumbers method
    // Inserts document page numbers.
    public func insertPageNumbers(request : InsertPageNumbersRequest) throws -> DocumentResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : DocumentResponse? = nil;
        var responseError : Error? = nil;
        self.insertPageNumbers(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        _ = semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of insertParagraph method
    // Adds paragraph to document, returns added paragraph's data.
    public func insertParagraph(request : InsertParagraphRequest, callback : @escaping (_ response : ParagraphResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/{nodePath}/paragraphs";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));

            rawPath = rawPath.replacingOccurrences(of: "{nodePath}", with: try ObjectSerializer.serializeToString(value: request.getNodePath()));

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

            if (request.getDestFileName() != nil) {
                queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serializeToString(value: request.getDestFileName()!)));
            }

            if (request.getRevisionAuthor() != nil) {
                queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serializeToString(value: request.getRevisionAuthor()!)));
            }

            if (request.getRevisionDateTime() != nil) {
                queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serializeToString(value: request.getRevisionDateTime()!)));
            }

            if (request.getInsertBeforeNode() != nil) {
                queryItems.append(URLQueryItem(name: "insertBeforeNode", value: try ObjectSerializer.serializeToString(value: request.getInsertBeforeNode()!)));
            }

            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }

            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "POST",
                body: try ObjectSerializer.serializeBody(value: request.getParagraph()),
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : ParagraphResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: ParagraphResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of insertParagraph method
    // Adds paragraph to document, returns added paragraph's data.
    public func insertParagraph(request : InsertParagraphRequest) throws -> ParagraphResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : ParagraphResponse? = nil;
        var responseError : Error? = nil;
        self.insertParagraph(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        _ = semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of insertParagraphWithoutNodePath method
    // Adds paragraph to document, returns added paragraph's data.
    public func insertParagraphWithoutNodePath(request : InsertParagraphWithoutNodePathRequest, callback : @escaping (_ response : ParagraphResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/paragraphs";
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

            if (request.getDestFileName() != nil) {
                queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serializeToString(value: request.getDestFileName()!)));
            }

            if (request.getRevisionAuthor() != nil) {
                queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serializeToString(value: request.getRevisionAuthor()!)));
            }

            if (request.getRevisionDateTime() != nil) {
                queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serializeToString(value: request.getRevisionDateTime()!)));
            }

            if (request.getInsertBeforeNode() != nil) {
                queryItems.append(URLQueryItem(name: "insertBeforeNode", value: try ObjectSerializer.serializeToString(value: request.getInsertBeforeNode()!)));
            }

            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }

            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "POST",
                body: try ObjectSerializer.serializeBody(value: request.getParagraph()),
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : ParagraphResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: ParagraphResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of insertParagraphWithoutNodePath method
    // Adds paragraph to document, returns added paragraph's data.
    public func insertParagraphWithoutNodePath(request : InsertParagraphWithoutNodePathRequest) throws -> ParagraphResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : ParagraphResponse? = nil;
        var responseError : Error? = nil;
        self.insertParagraphWithoutNodePath(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        _ = semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of insertRun method
    // Adds run to document, returns added paragraph's data.
    public func insertRun(request : InsertRunRequest, callback : @escaping (_ response : RunResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/{paragraphPath}/runs";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));

            rawPath = rawPath.replacingOccurrences(of: "{paragraphPath}", with: try ObjectSerializer.serializeToString(value: request.getParagraphPath()));

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

            if (request.getDestFileName() != nil) {
                queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serializeToString(value: request.getDestFileName()!)));
            }

            if (request.getRevisionAuthor() != nil) {
                queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serializeToString(value: request.getRevisionAuthor()!)));
            }

            if (request.getRevisionDateTime() != nil) {
                queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serializeToString(value: request.getRevisionDateTime()!)));
            }

            if (request.getInsertBeforeNode() != nil) {
                queryItems.append(URLQueryItem(name: "insertBeforeNode", value: try ObjectSerializer.serializeToString(value: request.getInsertBeforeNode()!)));
            }

            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }

            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "POST",
                body: try ObjectSerializer.serializeBody(value: request.getRun()),
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : RunResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: RunResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of insertRun method
    // Adds run to document, returns added paragraph's data.
    public func insertRun(request : InsertRunRequest) throws -> RunResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : RunResponse? = nil;
        var responseError : Error? = nil;
        self.insertRun(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        _ = semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of insertStyle method
    // Adds a style to the document, returns an added style.
    public func insertStyle(request : InsertStyleRequest, callback : @escaping (_ response : StyleResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/styles/insert";
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

            if (request.getDestFileName() != nil) {
                queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serializeToString(value: request.getDestFileName()!)));
            }

            if (request.getRevisionAuthor() != nil) {
                queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serializeToString(value: request.getRevisionAuthor()!)));
            }

            if (request.getRevisionDateTime() != nil) {
                queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serializeToString(value: request.getRevisionDateTime()!)));
            }

            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }

            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "POST",
                body: try ObjectSerializer.serializeBody(value: request.getStyleInsert()),
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : StyleResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: StyleResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of insertStyle method
    // Adds a style to the document, returns an added style.
    public func insertStyle(request : InsertStyleRequest) throws -> StyleResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : StyleResponse? = nil;
        var responseError : Error? = nil;
        self.insertStyle(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        _ = semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of insertTable method
    // Adds table to document, returns added table's data.
    public func insertTable(request : InsertTableRequest, callback : @escaping (_ response : TableResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/{nodePath}/tables";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));

            rawPath = rawPath.replacingOccurrences(of: "{nodePath}", with: try ObjectSerializer.serializeToString(value: request.getNodePath()));

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

            if (request.getDestFileName() != nil) {
                queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serializeToString(value: request.getDestFileName()!)));
            }

            if (request.getRevisionAuthor() != nil) {
                queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serializeToString(value: request.getRevisionAuthor()!)));
            }

            if (request.getRevisionDateTime() != nil) {
                queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serializeToString(value: request.getRevisionDateTime()!)));
            }

            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }

            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "POST",
                body: try ObjectSerializer.serializeBody(value: request.getTable()),
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : TableResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: TableResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of insertTable method
    // Adds table to document, returns added table's data.
    public func insertTable(request : InsertTableRequest) throws -> TableResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : TableResponse? = nil;
        var responseError : Error? = nil;
        self.insertTable(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        _ = semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of insertTableCell method
    // Adds table cell to table, returns added cell's data.
    public func insertTableCell(request : InsertTableCellRequest, callback : @escaping (_ response : TableCellResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/{tableRowPath}/cells";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));

            rawPath = rawPath.replacingOccurrences(of: "{tableRowPath}", with: try ObjectSerializer.serializeToString(value: request.getTableRowPath()));

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

            if (request.getDestFileName() != nil) {
                queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serializeToString(value: request.getDestFileName()!)));
            }

            if (request.getRevisionAuthor() != nil) {
                queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serializeToString(value: request.getRevisionAuthor()!)));
            }

            if (request.getRevisionDateTime() != nil) {
                queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serializeToString(value: request.getRevisionDateTime()!)));
            }

            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }

            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "POST",
                body: try ObjectSerializer.serializeBody(value: request.getCell()),
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : TableCellResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: TableCellResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of insertTableCell method
    // Adds table cell to table, returns added cell's data.
    public func insertTableCell(request : InsertTableCellRequest) throws -> TableCellResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : TableCellResponse? = nil;
        var responseError : Error? = nil;
        self.insertTableCell(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        _ = semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of insertTableRow method
    // Adds table row to table, returns added row's data.
    public func insertTableRow(request : InsertTableRowRequest, callback : @escaping (_ response : TableRowResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/{tablePath}/rows";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));

            rawPath = rawPath.replacingOccurrences(of: "{tablePath}", with: try ObjectSerializer.serializeToString(value: request.getTablePath()));

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

            if (request.getDestFileName() != nil) {
                queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serializeToString(value: request.getDestFileName()!)));
            }

            if (request.getRevisionAuthor() != nil) {
                queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serializeToString(value: request.getRevisionAuthor()!)));
            }

            if (request.getRevisionDateTime() != nil) {
                queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serializeToString(value: request.getRevisionDateTime()!)));
            }

            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }

            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "POST",
                body: try ObjectSerializer.serializeBody(value: request.getRow()),
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : TableRowResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: TableRowResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of insertTableRow method
    // Adds table row to table, returns added row's data.
    public func insertTableRow(request : InsertTableRowRequest) throws -> TableRowResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : TableRowResponse? = nil;
        var responseError : Error? = nil;
        self.insertTableRow(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        _ = semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of insertTableWithoutNodePath method
    // Adds table to document, returns added table's data.
    public func insertTableWithoutNodePath(request : InsertTableWithoutNodePathRequest, callback : @escaping (_ response : TableResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/tables";
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

            if (request.getDestFileName() != nil) {
                queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serializeToString(value: request.getDestFileName()!)));
            }

            if (request.getRevisionAuthor() != nil) {
                queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serializeToString(value: request.getRevisionAuthor()!)));
            }

            if (request.getRevisionDateTime() != nil) {
                queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serializeToString(value: request.getRevisionDateTime()!)));
            }

            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }

            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "POST",
                body: try ObjectSerializer.serializeBody(value: request.getTable()),
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : TableResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: TableResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of insertTableWithoutNodePath method
    // Adds table to document, returns added table's data.
    public func insertTableWithoutNodePath(request : InsertTableWithoutNodePathRequest) throws -> TableResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : TableResponse? = nil;
        var responseError : Error? = nil;
        self.insertTableWithoutNodePath(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        _ = semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of insertWatermarkImage method
    // Inserts document watermark image.
    public func insertWatermarkImage(request : InsertWatermarkImageRequest, callback : @escaping (_ response : DocumentResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/watermarks/images";
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

            if (request.getDestFileName() != nil) {
                queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serializeToString(value: request.getDestFileName()!)));
            }

            if (request.getRevisionAuthor() != nil) {
                queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serializeToString(value: request.getRevisionAuthor()!)));
            }

            if (request.getRevisionDateTime() != nil) {
                queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serializeToString(value: request.getRevisionDateTime()!)));
            }

            if (request.getRotationAngle() != nil) {
                queryItems.append(URLQueryItem(name: "rotationAngle", value: try ObjectSerializer.serializeToString(value: request.getRotationAngle()!)));
            }

            if (request.getImage() != nil) {
                queryItems.append(URLQueryItem(name: "image", value: try ObjectSerializer.serializeToString(value: request.getImage()!)));
            }

            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }
            var formParams : [RequestFormParam] = [];
            if (request.getImageFile() != nil) {
                formParams.append(RequestFormParam(name: "imageFile", body: try ObjectSerializer.serializeFile(value: request.getImageFile()!)));
            }


            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "POST",
                body: nil,
                headers: nil,
                formParams: formParams,
                callback: { response, error in
                    var responseObject : DocumentResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: DocumentResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of insertWatermarkImage method
    // Inserts document watermark image.
    public func insertWatermarkImage(request : InsertWatermarkImageRequest) throws -> DocumentResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : DocumentResponse? = nil;
        var responseError : Error? = nil;
        self.insertWatermarkImage(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        _ = semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of insertWatermarkText method
    // Inserts document watermark text.
    public func insertWatermarkText(request : InsertWatermarkTextRequest, callback : @escaping (_ response : DocumentResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/watermarks/texts";
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

            if (request.getDestFileName() != nil) {
                queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serializeToString(value: request.getDestFileName()!)));
            }

            if (request.getRevisionAuthor() != nil) {
                queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serializeToString(value: request.getRevisionAuthor()!)));
            }

            if (request.getRevisionDateTime() != nil) {
                queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serializeToString(value: request.getRevisionDateTime()!)));
            }

            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }

            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "POST",
                body: try ObjectSerializer.serializeBody(value: request.getWatermarkText()),
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : DocumentResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: DocumentResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of insertWatermarkText method
    // Inserts document watermark text.
    public func insertWatermarkText(request : InsertWatermarkTextRequest) throws -> DocumentResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : DocumentResponse? = nil;
        var responseError : Error? = nil;
        self.insertWatermarkText(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        _ = semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of loadWebDocument method
    // Loads new document from web into the file with any supported format of data.
    public func loadWebDocument(request : LoadWebDocumentRequest, callback : @escaping (_ response : SaveResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/loadWebDocument";
            rawPath = rawPath.replacingOccurrences(of: "//", with: "/");

            let urlPath = (try self.configuration.getApiRootUrl()).appendingPathComponent(rawPath);
            var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
            var queryItems : [URLQueryItem] = [];
            if (request.getStorage() != nil) {
                queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serializeToString(value: request.getStorage()!)));
            }

            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }

            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "PUT",
                body: try ObjectSerializer.serializeBody(value: request.getData()),
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : SaveResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: SaveResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of loadWebDocument method
    // Loads new document from web into the file with any supported format of data.
    public func loadWebDocument(request : LoadWebDocumentRequest) throws -> SaveResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : SaveResponse? = nil;
        var responseError : Error? = nil;
        self.loadWebDocument(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        _ = semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of moveFile method
    // Move file.
    public func moveFile(request : MoveFileRequest, callback : @escaping (_ error : Error?) -> ()) {
        do {
            var rawPath = "/words/storage/file/move/{srcPath}";
            rawPath = rawPath.replacingOccurrences(of: "{srcPath}", with: try ObjectSerializer.serializeToString(value: request.getSrcPath()));

            rawPath = rawPath.replacingOccurrences(of: "//", with: "/");

            let urlPath = (try self.configuration.getApiRootUrl()).appendingPathComponent(rawPath);
            var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
            var queryItems : [URLQueryItem] = [];
            queryItems.append(URLQueryItem(name: "destPath", value: try ObjectSerializer.serializeToString(value: request.getDestPath())));

            if (request.getSrcStorageName() != nil) {
                queryItems.append(URLQueryItem(name: "srcStorageName", value: try ObjectSerializer.serializeToString(value: request.getSrcStorageName()!)));
            }

            if (request.getDestStorageName() != nil) {
                queryItems.append(URLQueryItem(name: "destStorageName", value: try ObjectSerializer.serializeToString(value: request.getDestStorageName()!)));
            }

            if (request.getVersionId() != nil) {
                queryItems.append(URLQueryItem(name: "versionId", value: try ObjectSerializer.serializeToString(value: request.getVersionId()!)));
            }

            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }

            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "PUT",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    callback(error);
                }
            );
        }
        catch let error {
            callback(error);
        }
    }

    // Sync representation of moveFile method
    // Move file.
    public func moveFile(request : MoveFileRequest) throws {
        let semaphore = DispatchSemaphore(value: 0);
        var responseError : Error? = nil;
        self.moveFile(request : request, callback: { error in
            responseError = error;
            semaphore.signal();
        });

        _ = semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
    }

    // Async representation of moveFolder method
    // Move folder.
    public func moveFolder(request : MoveFolderRequest, callback : @escaping (_ error : Error?) -> ()) {
        do {
            var rawPath = "/words/storage/folder/move/{srcPath}";
            rawPath = rawPath.replacingOccurrences(of: "{srcPath}", with: try ObjectSerializer.serializeToString(value: request.getSrcPath()));

            rawPath = rawPath.replacingOccurrences(of: "//", with: "/");

            let urlPath = (try self.configuration.getApiRootUrl()).appendingPathComponent(rawPath);
            var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
            var queryItems : [URLQueryItem] = [];
            queryItems.append(URLQueryItem(name: "destPath", value: try ObjectSerializer.serializeToString(value: request.getDestPath())));

            if (request.getSrcStorageName() != nil) {
                queryItems.append(URLQueryItem(name: "srcStorageName", value: try ObjectSerializer.serializeToString(value: request.getSrcStorageName()!)));
            }

            if (request.getDestStorageName() != nil) {
                queryItems.append(URLQueryItem(name: "destStorageName", value: try ObjectSerializer.serializeToString(value: request.getDestStorageName()!)));
            }

            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }

            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "PUT",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    callback(error);
                }
            );
        }
        catch let error {
            callback(error);
        }
    }

    // Sync representation of moveFolder method
    // Move folder.
    public func moveFolder(request : MoveFolderRequest) throws {
        let semaphore = DispatchSemaphore(value: 0);
        var responseError : Error? = nil;
        self.moveFolder(request : request, callback: { error in
            responseError = error;
            semaphore.signal();
        });

        _ = semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
    }

    // Async representation of protectDocument method
    // Protects document.
    public func protectDocument(request : ProtectDocumentRequest, callback : @escaping (_ response : ProtectionDataResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/protection";
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

            if (request.getDestFileName() != nil) {
                queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serializeToString(value: request.getDestFileName()!)));
            }

            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }

            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "PUT",
                body: try ObjectSerializer.serializeBody(value: request.getProtectionRequest()),
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : ProtectionDataResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: ProtectionDataResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of protectDocument method
    // Protects document.
    public func protectDocument(request : ProtectDocumentRequest) throws -> ProtectionDataResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : ProtectionDataResponse? = nil;
        var responseError : Error? = nil;
        self.protectDocument(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        _ = semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of rejectAllRevisions method
    // Rejects all revisions in document.
    public func rejectAllRevisions(request : RejectAllRevisionsRequest, callback : @escaping (_ response : RevisionsModificationResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/revisions/rejectAll";
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

            if (request.getDestFileName() != nil) {
                queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serializeToString(value: request.getDestFileName()!)));
            }

            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }

            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "PUT",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : RevisionsModificationResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: RevisionsModificationResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of rejectAllRevisions method
    // Rejects all revisions in document.
    public func rejectAllRevisions(request : RejectAllRevisionsRequest) throws -> RevisionsModificationResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : RevisionsModificationResponse? = nil;
        var responseError : Error? = nil;
        self.rejectAllRevisions(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        _ = semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of removeRange method
    // Removes the range from the document.
    public func removeRange(request : RemoveRangeRequest, callback : @escaping (_ response : DocumentResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/range/{rangeStartIdentifier}/{rangeEndIdentifier}";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));

            rawPath = rawPath.replacingOccurrences(of: "{rangeStartIdentifier}", with: try ObjectSerializer.serializeToString(value: request.getRangeStartIdentifier()));

            if (request.getRangeEndIdentifier() != nil) {
                rawPath = rawPath.replacingOccurrences(of: "{rangeEndIdentifier}", with: try ObjectSerializer.serializeToString(value: request.getRangeEndIdentifier()!));
            }

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

            if (request.getDestFileName() != nil) {
                queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serializeToString(value: request.getDestFileName()!)));
            }

            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }

            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "DELETE",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : DocumentResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: DocumentResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of removeRange method
    // Removes the range from the document.
    public func removeRange(request : RemoveRangeRequest) throws -> DocumentResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : DocumentResponse? = nil;
        var responseError : Error? = nil;
        self.removeRange(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        _ = semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of renderDrawingObject method
    // Renders drawing object to specified format.
    public func renderDrawingObject(request : RenderDrawingObjectRequest, callback : @escaping (_ response : Data?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/{nodePath}/drawingObjects/{index}/render";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));

            rawPath = rawPath.replacingOccurrences(of: "{nodePath}", with: try ObjectSerializer.serializeToString(value: request.getNodePath()));

            rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serializeToString(value: request.getIndex()));

            rawPath = rawPath.replacingOccurrences(of: "//", with: "/");

            let urlPath = (try self.configuration.getApiRootUrl()).appendingPathComponent(rawPath);
            var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
            var queryItems : [URLQueryItem] = [];
            queryItems.append(URLQueryItem(name: "format", value: try ObjectSerializer.serializeToString(value: request.getFormat())));

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

            if (request.getFontsLocation() != nil) {
                queryItems.append(URLQueryItem(name: "fontsLocation", value: try ObjectSerializer.serializeToString(value: request.getFontsLocation()!)));
            }

            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }

            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "GET",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    callback(response, error);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of renderDrawingObject method
    // Renders drawing object to specified format.
    public func renderDrawingObject(request : RenderDrawingObjectRequest) throws -> Data {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : Data? = nil;
        var responseError : Error? = nil;
        self.renderDrawingObject(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        _ = semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of renderDrawingObjectWithoutNodePath method
    // Renders drawing object to specified format.
    public func renderDrawingObjectWithoutNodePath(request : RenderDrawingObjectWithoutNodePathRequest, callback : @escaping (_ response : Data?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/drawingObjects/{index}/render";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));

            rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serializeToString(value: request.getIndex()));

            rawPath = rawPath.replacingOccurrences(of: "//", with: "/");

            let urlPath = (try self.configuration.getApiRootUrl()).appendingPathComponent(rawPath);
            var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
            var queryItems : [URLQueryItem] = [];
            queryItems.append(URLQueryItem(name: "format", value: try ObjectSerializer.serializeToString(value: request.getFormat())));

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

            if (request.getFontsLocation() != nil) {
                queryItems.append(URLQueryItem(name: "fontsLocation", value: try ObjectSerializer.serializeToString(value: request.getFontsLocation()!)));
            }

            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }

            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "GET",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    callback(response, error);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of renderDrawingObjectWithoutNodePath method
    // Renders drawing object to specified format.
    public func renderDrawingObjectWithoutNodePath(request : RenderDrawingObjectWithoutNodePathRequest) throws -> Data {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : Data? = nil;
        var responseError : Error? = nil;
        self.renderDrawingObjectWithoutNodePath(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        _ = semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of renderMathObject method
    // Renders math object to specified format.
    public func renderMathObject(request : RenderMathObjectRequest, callback : @escaping (_ response : Data?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/{nodePath}/OfficeMathObjects/{index}/render";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));

            rawPath = rawPath.replacingOccurrences(of: "{nodePath}", with: try ObjectSerializer.serializeToString(value: request.getNodePath()));

            rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serializeToString(value: request.getIndex()));

            rawPath = rawPath.replacingOccurrences(of: "//", with: "/");

            let urlPath = (try self.configuration.getApiRootUrl()).appendingPathComponent(rawPath);
            var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
            var queryItems : [URLQueryItem] = [];
            queryItems.append(URLQueryItem(name: "format", value: try ObjectSerializer.serializeToString(value: request.getFormat())));

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

            if (request.getFontsLocation() != nil) {
                queryItems.append(URLQueryItem(name: "fontsLocation", value: try ObjectSerializer.serializeToString(value: request.getFontsLocation()!)));
            }

            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }

            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "GET",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    callback(response, error);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of renderMathObject method
    // Renders math object to specified format.
    public func renderMathObject(request : RenderMathObjectRequest) throws -> Data {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : Data? = nil;
        var responseError : Error? = nil;
        self.renderMathObject(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        _ = semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of renderMathObjectWithoutNodePath method
    // Renders math object to specified format.
    public func renderMathObjectWithoutNodePath(request : RenderMathObjectWithoutNodePathRequest, callback : @escaping (_ response : Data?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/OfficeMathObjects/{index}/render";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));

            rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serializeToString(value: request.getIndex()));

            rawPath = rawPath.replacingOccurrences(of: "//", with: "/");

            let urlPath = (try self.configuration.getApiRootUrl()).appendingPathComponent(rawPath);
            var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
            var queryItems : [URLQueryItem] = [];
            queryItems.append(URLQueryItem(name: "format", value: try ObjectSerializer.serializeToString(value: request.getFormat())));

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

            if (request.getFontsLocation() != nil) {
                queryItems.append(URLQueryItem(name: "fontsLocation", value: try ObjectSerializer.serializeToString(value: request.getFontsLocation()!)));
            }

            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }

            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "GET",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    callback(response, error);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of renderMathObjectWithoutNodePath method
    // Renders math object to specified format.
    public func renderMathObjectWithoutNodePath(request : RenderMathObjectWithoutNodePathRequest) throws -> Data {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : Data? = nil;
        var responseError : Error? = nil;
        self.renderMathObjectWithoutNodePath(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        _ = semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of renderPage method
    // Renders page to specified format.
    public func renderPage(request : RenderPageRequest, callback : @escaping (_ response : Data?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/pages/{pageIndex}/render";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));

            rawPath = rawPath.replacingOccurrences(of: "{pageIndex}", with: try ObjectSerializer.serializeToString(value: request.getPageIndex()));

            rawPath = rawPath.replacingOccurrences(of: "//", with: "/");

            let urlPath = (try self.configuration.getApiRootUrl()).appendingPathComponent(rawPath);
            var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
            var queryItems : [URLQueryItem] = [];
            queryItems.append(URLQueryItem(name: "format", value: try ObjectSerializer.serializeToString(value: request.getFormat())));

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

            if (request.getFontsLocation() != nil) {
                queryItems.append(URLQueryItem(name: "fontsLocation", value: try ObjectSerializer.serializeToString(value: request.getFontsLocation()!)));
            }

            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }

            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "GET",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    callback(response, error);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of renderPage method
    // Renders page to specified format.
    public func renderPage(request : RenderPageRequest) throws -> Data {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : Data? = nil;
        var responseError : Error? = nil;
        self.renderPage(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        _ = semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of renderParagraph method
    // Renders paragraph to specified format.
    public func renderParagraph(request : RenderParagraphRequest, callback : @escaping (_ response : Data?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/{nodePath}/paragraphs/{index}/render";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));

            rawPath = rawPath.replacingOccurrences(of: "{nodePath}", with: try ObjectSerializer.serializeToString(value: request.getNodePath()));

            rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serializeToString(value: request.getIndex()));

            rawPath = rawPath.replacingOccurrences(of: "//", with: "/");

            let urlPath = (try self.configuration.getApiRootUrl()).appendingPathComponent(rawPath);
            var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
            var queryItems : [URLQueryItem] = [];
            queryItems.append(URLQueryItem(name: "format", value: try ObjectSerializer.serializeToString(value: request.getFormat())));

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

            if (request.getFontsLocation() != nil) {
                queryItems.append(URLQueryItem(name: "fontsLocation", value: try ObjectSerializer.serializeToString(value: request.getFontsLocation()!)));
            }

            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }

            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "GET",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    callback(response, error);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of renderParagraph method
    // Renders paragraph to specified format.
    public func renderParagraph(request : RenderParagraphRequest) throws -> Data {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : Data? = nil;
        var responseError : Error? = nil;
        self.renderParagraph(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        _ = semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of renderParagraphWithoutNodePath method
    // Renders paragraph to specified format.
    public func renderParagraphWithoutNodePath(request : RenderParagraphWithoutNodePathRequest, callback : @escaping (_ response : Data?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/paragraphs/{index}/render";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));

            rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serializeToString(value: request.getIndex()));

            rawPath = rawPath.replacingOccurrences(of: "//", with: "/");

            let urlPath = (try self.configuration.getApiRootUrl()).appendingPathComponent(rawPath);
            var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
            var queryItems : [URLQueryItem] = [];
            queryItems.append(URLQueryItem(name: "format", value: try ObjectSerializer.serializeToString(value: request.getFormat())));

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

            if (request.getFontsLocation() != nil) {
                queryItems.append(URLQueryItem(name: "fontsLocation", value: try ObjectSerializer.serializeToString(value: request.getFontsLocation()!)));
            }

            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }

            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "GET",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    callback(response, error);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of renderParagraphWithoutNodePath method
    // Renders paragraph to specified format.
    public func renderParagraphWithoutNodePath(request : RenderParagraphWithoutNodePathRequest) throws -> Data {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : Data? = nil;
        var responseError : Error? = nil;
        self.renderParagraphWithoutNodePath(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        _ = semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of renderTable method
    // Renders table to specified format.
    public func renderTable(request : RenderTableRequest, callback : @escaping (_ response : Data?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/{nodePath}/tables/{index}/render";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));

            rawPath = rawPath.replacingOccurrences(of: "{nodePath}", with: try ObjectSerializer.serializeToString(value: request.getNodePath()));

            rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serializeToString(value: request.getIndex()));

            rawPath = rawPath.replacingOccurrences(of: "//", with: "/");

            let urlPath = (try self.configuration.getApiRootUrl()).appendingPathComponent(rawPath);
            var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
            var queryItems : [URLQueryItem] = [];
            queryItems.append(URLQueryItem(name: "format", value: try ObjectSerializer.serializeToString(value: request.getFormat())));

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

            if (request.getFontsLocation() != nil) {
                queryItems.append(URLQueryItem(name: "fontsLocation", value: try ObjectSerializer.serializeToString(value: request.getFontsLocation()!)));
            }

            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }

            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "GET",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    callback(response, error);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of renderTable method
    // Renders table to specified format.
    public func renderTable(request : RenderTableRequest) throws -> Data {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : Data? = nil;
        var responseError : Error? = nil;
        self.renderTable(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        _ = semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of renderTableWithoutNodePath method
    // Renders table to specified format.
    public func renderTableWithoutNodePath(request : RenderTableWithoutNodePathRequest, callback : @escaping (_ response : Data?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/tables/{index}/render";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));

            rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serializeToString(value: request.getIndex()));

            rawPath = rawPath.replacingOccurrences(of: "//", with: "/");

            let urlPath = (try self.configuration.getApiRootUrl()).appendingPathComponent(rawPath);
            var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
            var queryItems : [URLQueryItem] = [];
            queryItems.append(URLQueryItem(name: "format", value: try ObjectSerializer.serializeToString(value: request.getFormat())));

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

            if (request.getFontsLocation() != nil) {
                queryItems.append(URLQueryItem(name: "fontsLocation", value: try ObjectSerializer.serializeToString(value: request.getFontsLocation()!)));
            }

            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }

            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "GET",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    callback(response, error);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of renderTableWithoutNodePath method
    // Renders table to specified format.
    public func renderTableWithoutNodePath(request : RenderTableWithoutNodePathRequest) throws -> Data {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : Data? = nil;
        var responseError : Error? = nil;
        self.renderTableWithoutNodePath(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        _ = semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of replaceText method
    // Replaces document text.
    public func replaceText(request : ReplaceTextRequest, callback : @escaping (_ response : ReplaceTextResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/replaceText";
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

            if (request.getDestFileName() != nil) {
                queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serializeToString(value: request.getDestFileName()!)));
            }

            if (request.getRevisionAuthor() != nil) {
                queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serializeToString(value: request.getRevisionAuthor()!)));
            }

            if (request.getRevisionDateTime() != nil) {
                queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serializeToString(value: request.getRevisionDateTime()!)));
            }

            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }

            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "PUT",
                body: try ObjectSerializer.serializeBody(value: request.getReplaceText()),
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : ReplaceTextResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: ReplaceTextResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of replaceText method
    // Replaces document text.
    public func replaceText(request : ReplaceTextRequest) throws -> ReplaceTextResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : ReplaceTextResponse? = nil;
        var responseError : Error? = nil;
        self.replaceText(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        _ = semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of replaceWithText method
    // Replaces the content in the range.
    public func replaceWithText(request : ReplaceWithTextRequest, callback : @escaping (_ response : DocumentResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/range/{rangeStartIdentifier}/{rangeEndIdentifier}";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));

            rawPath = rawPath.replacingOccurrences(of: "{rangeStartIdentifier}", with: try ObjectSerializer.serializeToString(value: request.getRangeStartIdentifier()));

            if (request.getRangeEndIdentifier() != nil) {
                rawPath = rawPath.replacingOccurrences(of: "{rangeEndIdentifier}", with: try ObjectSerializer.serializeToString(value: request.getRangeEndIdentifier()!));
            }

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

            if (request.getDestFileName() != nil) {
                queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serializeToString(value: request.getDestFileName()!)));
            }

            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }

            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "POST",
                body: try ObjectSerializer.serializeBody(value: request.getRangeText()),
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : DocumentResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: DocumentResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of replaceWithText method
    // Replaces the content in the range.
    public func replaceWithText(request : ReplaceWithTextRequest) throws -> DocumentResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : DocumentResponse? = nil;
        var responseError : Error? = nil;
        self.replaceWithText(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        _ = semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of resetCache method
    // Resets font's cache.
    public func resetCache(request : ResetCacheRequest, callback : @escaping (_ error : Error?) -> ()) {
        do {
            var rawPath = "/words/fonts/cache";
            rawPath = rawPath.replacingOccurrences(of: "//", with: "/");

            let urlPath = (try self.configuration.getApiRootUrl()).appendingPathComponent(rawPath);

            apiInvoker.invoke(
                url: urlPath,
                method: "DELETE",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    callback(error);
                }
            );
        }
        catch let error {
            callback(error);
        }
    }

    // Sync representation of resetCache method
    // Resets font's cache.
    public func resetCache(request : ResetCacheRequest) throws {
        let semaphore = DispatchSemaphore(value: 0);
        var responseError : Error? = nil;
        self.resetCache(request : request, callback: { error in
            responseError = error;
            semaphore.signal();
        });

        _ = semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
    }

    // Async representation of saveAs method
    // Converts document to destination format with detailed settings and saves result to storage.
    public func saveAs(request : SaveAsRequest, callback : @escaping (_ response : SaveResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/saveAs";
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

            if (request.getFontsLocation() != nil) {
                queryItems.append(URLQueryItem(name: "fontsLocation", value: try ObjectSerializer.serializeToString(value: request.getFontsLocation()!)));
            }

            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }

            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "PUT",
                body: try ObjectSerializer.serializeBody(value: request.getSaveOptionsData()),
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : SaveResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: SaveResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of saveAs method
    // Converts document to destination format with detailed settings and saves result to storage.
    public func saveAs(request : SaveAsRequest) throws -> SaveResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : SaveResponse? = nil;
        var responseError : Error? = nil;
        self.saveAs(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        _ = semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of saveAsRange method
    // Saves the selected range as a new document.
    public func saveAsRange(request : SaveAsRangeRequest, callback : @escaping (_ response : DocumentResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/range/{rangeStartIdentifier}/{rangeEndIdentifier}/SaveAs";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));

            rawPath = rawPath.replacingOccurrences(of: "{rangeStartIdentifier}", with: try ObjectSerializer.serializeToString(value: request.getRangeStartIdentifier()));

            if (request.getRangeEndIdentifier() != nil) {
                rawPath = rawPath.replacingOccurrences(of: "{rangeEndIdentifier}", with: try ObjectSerializer.serializeToString(value: request.getRangeEndIdentifier()!));
            }

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

            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }

            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "POST",
                body: try ObjectSerializer.serializeBody(value: request.getDocumentParameters()),
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : DocumentResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: DocumentResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of saveAsRange method
    // Saves the selected range as a new document.
    public func saveAsRange(request : SaveAsRangeRequest) throws -> DocumentResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : DocumentResponse? = nil;
        var responseError : Error? = nil;
        self.saveAsRange(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        _ = semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of saveAsTiff method
    // Converts document to tiff with detailed settings and saves result to storage.
    public func saveAsTiff(request : SaveAsTiffRequest, callback : @escaping (_ response : SaveResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/saveAs/tiff";
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

            if (request.getUseAntiAliasing() != nil) {
                queryItems.append(URLQueryItem(name: "useAntiAliasing", value: try ObjectSerializer.serializeToString(value: request.getUseAntiAliasing()!)));
            }

            if (request.getUseHighQualityRendering() != nil) {
                queryItems.append(URLQueryItem(name: "useHighQualityRendering", value: try ObjectSerializer.serializeToString(value: request.getUseHighQualityRendering()!)));
            }

            if (request.getImageBrightness() != nil) {
                queryItems.append(URLQueryItem(name: "imageBrightness", value: try ObjectSerializer.serializeToString(value: request.getImageBrightness()!)));
            }

            if (request.getImageColorMode() != nil) {
                queryItems.append(URLQueryItem(name: "imageColorMode", value: try ObjectSerializer.serializeToString(value: request.getImageColorMode()!)));
            }

            if (request.getImageContrast() != nil) {
                queryItems.append(URLQueryItem(name: "imageContrast", value: try ObjectSerializer.serializeToString(value: request.getImageContrast()!)));
            }

            if (request.getNumeralFormat() != nil) {
                queryItems.append(URLQueryItem(name: "numeralFormat", value: try ObjectSerializer.serializeToString(value: request.getNumeralFormat()!)));
            }

            if (request.getPageCount() != nil) {
                queryItems.append(URLQueryItem(name: "pageCount", value: try ObjectSerializer.serializeToString(value: request.getPageCount()!)));
            }

            if (request.getPageIndex() != nil) {
                queryItems.append(URLQueryItem(name: "pageIndex", value: try ObjectSerializer.serializeToString(value: request.getPageIndex()!)));
            }

            if (request.getPaperColor() != nil) {
                queryItems.append(URLQueryItem(name: "paperColor", value: try ObjectSerializer.serializeToString(value: request.getPaperColor()!)));
            }

            if (request.getPixelFormat() != nil) {
                queryItems.append(URLQueryItem(name: "pixelFormat", value: try ObjectSerializer.serializeToString(value: request.getPixelFormat()!)));
            }

            if (request.getResolution() != nil) {
                queryItems.append(URLQueryItem(name: "resolution", value: try ObjectSerializer.serializeToString(value: request.getResolution()!)));
            }

            if (request.getScale() != nil) {
                queryItems.append(URLQueryItem(name: "scale", value: try ObjectSerializer.serializeToString(value: request.getScale()!)));
            }

            if (request.getTiffCompression() != nil) {
                queryItems.append(URLQueryItem(name: "tiffCompression", value: try ObjectSerializer.serializeToString(value: request.getTiffCompression()!)));
            }

            if (request.getDmlRenderingMode() != nil) {
                queryItems.append(URLQueryItem(name: "dmlRenderingMode", value: try ObjectSerializer.serializeToString(value: request.getDmlRenderingMode()!)));
            }

            if (request.getDmlEffectsRenderingMode() != nil) {
                queryItems.append(URLQueryItem(name: "dmlEffectsRenderingMode", value: try ObjectSerializer.serializeToString(value: request.getDmlEffectsRenderingMode()!)));
            }

            if (request.getTiffBinarizationMethod() != nil) {
                queryItems.append(URLQueryItem(name: "tiffBinarizationMethod", value: try ObjectSerializer.serializeToString(value: request.getTiffBinarizationMethod()!)));
            }

            if (request.getZipOutput() != nil) {
                queryItems.append(URLQueryItem(name: "zipOutput", value: try ObjectSerializer.serializeToString(value: request.getZipOutput()!)));
            }

            if (request.getFontsLocation() != nil) {
                queryItems.append(URLQueryItem(name: "fontsLocation", value: try ObjectSerializer.serializeToString(value: request.getFontsLocation()!)));
            }

            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }

            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "PUT",
                body: try ObjectSerializer.serializeBody(value: request.getSaveOptions()),
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : SaveResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: SaveResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of saveAsTiff method
    // Converts document to tiff with detailed settings and saves result to storage.
    public func saveAsTiff(request : SaveAsTiffRequest) throws -> SaveResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : SaveResponse? = nil;
        var responseError : Error? = nil;
        self.saveAsTiff(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        _ = semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of search method
    // Searches text in document.
    public func search(request : SearchRequest, callback : @escaping (_ response : SearchResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/search";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));

            rawPath = rawPath.replacingOccurrences(of: "//", with: "/");

            let urlPath = (try self.configuration.getApiRootUrl()).appendingPathComponent(rawPath);
            var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
            var queryItems : [URLQueryItem] = [];
            queryItems.append(URLQueryItem(name: "pattern", value: try ObjectSerializer.serializeToString(value: request.getPattern())));

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

            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }

            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "GET",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : SearchResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: SearchResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of search method
    // Searches text in document.
    public func search(request : SearchRequest) throws -> SearchResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : SearchResponse? = nil;
        var responseError : Error? = nil;
        self.search(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        _ = semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of splitDocument method
    // Splits document.
    public func splitDocument(request : SplitDocumentRequest, callback : @escaping (_ response : SplitDocumentResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/split";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));

            rawPath = rawPath.replacingOccurrences(of: "//", with: "/");

            let urlPath = (try self.configuration.getApiRootUrl()).appendingPathComponent(rawPath);
            var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
            var queryItems : [URLQueryItem] = [];
            queryItems.append(URLQueryItem(name: "format", value: try ObjectSerializer.serializeToString(value: request.getFormat())));

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

            if (request.getDestFileName() != nil) {
                queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serializeToString(value: request.getDestFileName()!)));
            }

            if (request.getFrom() != nil) {
                queryItems.append(URLQueryItem(name: "from", value: try ObjectSerializer.serializeToString(value: request.getFrom()!)));
            }

            if (request.getTo() != nil) {
                queryItems.append(URLQueryItem(name: "to", value: try ObjectSerializer.serializeToString(value: request.getTo()!)));
            }

            if (request.getZipOutput() != nil) {
                queryItems.append(URLQueryItem(name: "zipOutput", value: try ObjectSerializer.serializeToString(value: request.getZipOutput()!)));
            }

            if (request.getFontsLocation() != nil) {
                queryItems.append(URLQueryItem(name: "fontsLocation", value: try ObjectSerializer.serializeToString(value: request.getFontsLocation()!)));
            }

            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }

            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "PUT",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : SplitDocumentResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: SplitDocumentResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of splitDocument method
    // Splits document.
    public func splitDocument(request : SplitDocumentRequest) throws -> SplitDocumentResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : SplitDocumentResponse? = nil;
        var responseError : Error? = nil;
        self.splitDocument(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        _ = semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of unprotectDocument method
    // Unprotects document.
    public func unprotectDocument(request : UnprotectDocumentRequest, callback : @escaping (_ response : ProtectionDataResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/protection";
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

            if (request.getDestFileName() != nil) {
                queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serializeToString(value: request.getDestFileName()!)));
            }

            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }

            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "DELETE",
                body: try ObjectSerializer.serializeBody(value: request.getProtectionRequest()),
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : ProtectionDataResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: ProtectionDataResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of unprotectDocument method
    // Unprotects document.
    public func unprotectDocument(request : UnprotectDocumentRequest) throws -> ProtectionDataResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : ProtectionDataResponse? = nil;
        var responseError : Error? = nil;
        self.unprotectDocument(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        _ = semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of updateBookmark method
    // Updates document bookmark.
    public func updateBookmark(request : UpdateBookmarkRequest, callback : @escaping (_ response : BookmarkResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/bookmarks/{bookmarkName}";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));

            rawPath = rawPath.replacingOccurrences(of: "{bookmarkName}", with: try ObjectSerializer.serializeToString(value: request.getBookmarkName()));

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

            if (request.getDestFileName() != nil) {
                queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serializeToString(value: request.getDestFileName()!)));
            }

            if (request.getRevisionAuthor() != nil) {
                queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serializeToString(value: request.getRevisionAuthor()!)));
            }

            if (request.getRevisionDateTime() != nil) {
                queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serializeToString(value: request.getRevisionDateTime()!)));
            }

            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }

            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "PUT",
                body: try ObjectSerializer.serializeBody(value: request.getBookmarkData()),
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : BookmarkResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: BookmarkResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of updateBookmark method
    // Updates document bookmark.
    public func updateBookmark(request : UpdateBookmarkRequest) throws -> BookmarkResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : BookmarkResponse? = nil;
        var responseError : Error? = nil;
        self.updateBookmark(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        _ = semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of updateBorder method
    // 'nodePath' should refer to paragraph, cell or row.
    public func updateBorder(request : UpdateBorderRequest, callback : @escaping (_ response : BorderResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/{nodePath}/borders/{borderType}";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));

            rawPath = rawPath.replacingOccurrences(of: "{nodePath}", with: try ObjectSerializer.serializeToString(value: request.getNodePath()));

            rawPath = rawPath.replacingOccurrences(of: "{borderType}", with: try ObjectSerializer.serializeToString(value: request.getBorderType()));

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

            if (request.getDestFileName() != nil) {
                queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serializeToString(value: request.getDestFileName()!)));
            }

            if (request.getRevisionAuthor() != nil) {
                queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serializeToString(value: request.getRevisionAuthor()!)));
            }

            if (request.getRevisionDateTime() != nil) {
                queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serializeToString(value: request.getRevisionDateTime()!)));
            }

            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }

            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "PUT",
                body: try ObjectSerializer.serializeBody(value: request.getBorderProperties()),
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : BorderResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: BorderResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of updateBorder method
    // 'nodePath' should refer to paragraph, cell or row.
    public func updateBorder(request : UpdateBorderRequest) throws -> BorderResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : BorderResponse? = nil;
        var responseError : Error? = nil;
        self.updateBorder(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        _ = semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of updateComment method
    // Updates the comment, returns updated comment data.
    public func updateComment(request : UpdateCommentRequest, callback : @escaping (_ response : CommentResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/comments/{commentIndex}";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));

            rawPath = rawPath.replacingOccurrences(of: "{commentIndex}", with: try ObjectSerializer.serializeToString(value: request.getCommentIndex()));

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

            if (request.getDestFileName() != nil) {
                queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serializeToString(value: request.getDestFileName()!)));
            }

            if (request.getRevisionAuthor() != nil) {
                queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serializeToString(value: request.getRevisionAuthor()!)));
            }

            if (request.getRevisionDateTime() != nil) {
                queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serializeToString(value: request.getRevisionDateTime()!)));
            }

            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }

            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "PUT",
                body: try ObjectSerializer.serializeBody(value: request.getComment()),
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : CommentResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: CommentResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of updateComment method
    // Updates the comment, returns updated comment data.
    public func updateComment(request : UpdateCommentRequest) throws -> CommentResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : CommentResponse? = nil;
        var responseError : Error? = nil;
        self.updateComment(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        _ = semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of updateDrawingObject method
    // Updates drawing object, returns updated  drawing object's data.
    public func updateDrawingObject(request : UpdateDrawingObjectRequest, callback : @escaping (_ response : DrawingObjectResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/{nodePath}/drawingObjects/{index}";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));

            rawPath = rawPath.replacingOccurrences(of: "{nodePath}", with: try ObjectSerializer.serializeToString(value: request.getNodePath()));

            rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serializeToString(value: request.getIndex()));

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

            if (request.getDestFileName() != nil) {
                queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serializeToString(value: request.getDestFileName()!)));
            }

            if (request.getRevisionAuthor() != nil) {
                queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serializeToString(value: request.getRevisionAuthor()!)));
            }

            if (request.getRevisionDateTime() != nil) {
                queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serializeToString(value: request.getRevisionDateTime()!)));
            }

            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }
            var formParams : [RequestFormParam] = [];
            formParams.append(RequestFormParam(name: "drawingObject", body: try ObjectSerializer.serialize(value: request.getDrawingObject())));

            formParams.append(RequestFormParam(name: "imageFile", body: try ObjectSerializer.serializeFile(value: request.getImageFile())));


            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "PUT",
                body: nil,
                headers: nil,
                formParams: formParams,
                callback: { response, error in
                    var responseObject : DrawingObjectResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: DrawingObjectResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of updateDrawingObject method
    // Updates drawing object, returns updated  drawing object's data.
    public func updateDrawingObject(request : UpdateDrawingObjectRequest) throws -> DrawingObjectResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : DrawingObjectResponse? = nil;
        var responseError : Error? = nil;
        self.updateDrawingObject(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        _ = semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of updateDrawingObjectWithoutNodePath method
    // Updates drawing object, returns updated  drawing object's data.
    public func updateDrawingObjectWithoutNodePath(request : UpdateDrawingObjectWithoutNodePathRequest, callback : @escaping (_ response : DrawingObjectResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/drawingObjects/{index}";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));

            rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serializeToString(value: request.getIndex()));

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

            if (request.getDestFileName() != nil) {
                queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serializeToString(value: request.getDestFileName()!)));
            }

            if (request.getRevisionAuthor() != nil) {
                queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serializeToString(value: request.getRevisionAuthor()!)));
            }

            if (request.getRevisionDateTime() != nil) {
                queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serializeToString(value: request.getRevisionDateTime()!)));
            }

            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }
            var formParams : [RequestFormParam] = [];
            formParams.append(RequestFormParam(name: "drawingObject", body: try ObjectSerializer.serialize(value: request.getDrawingObject())));

            formParams.append(RequestFormParam(name: "imageFile", body: try ObjectSerializer.serializeFile(value: request.getImageFile())));


            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "PUT",
                body: nil,
                headers: nil,
                formParams: formParams,
                callback: { response, error in
                    var responseObject : DrawingObjectResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: DrawingObjectResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of updateDrawingObjectWithoutNodePath method
    // Updates drawing object, returns updated  drawing object's data.
    public func updateDrawingObjectWithoutNodePath(request : UpdateDrawingObjectWithoutNodePathRequest) throws -> DrawingObjectResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : DrawingObjectResponse? = nil;
        var responseError : Error? = nil;
        self.updateDrawingObjectWithoutNodePath(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        _ = semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of updateField method
    // Updates field's properties, returns updated field's data.
    public func updateField(request : UpdateFieldRequest, callback : @escaping (_ response : FieldResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/{nodePath}/fields/{index}";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));

            rawPath = rawPath.replacingOccurrences(of: "{nodePath}", with: try ObjectSerializer.serializeToString(value: request.getNodePath()));

            rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serializeToString(value: request.getIndex()));

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

            if (request.getDestFileName() != nil) {
                queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serializeToString(value: request.getDestFileName()!)));
            }

            if (request.getRevisionAuthor() != nil) {
                queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serializeToString(value: request.getRevisionAuthor()!)));
            }

            if (request.getRevisionDateTime() != nil) {
                queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serializeToString(value: request.getRevisionDateTime()!)));
            }

            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }

            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "PUT",
                body: try ObjectSerializer.serializeBody(value: request.getField()),
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : FieldResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: FieldResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of updateField method
    // Updates field's properties, returns updated field's data.
    public func updateField(request : UpdateFieldRequest) throws -> FieldResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : FieldResponse? = nil;
        var responseError : Error? = nil;
        self.updateField(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        _ = semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of updateFields method
    // Updates (reevaluate) fields in document.
    public func updateFields(request : UpdateFieldsRequest, callback : @escaping (_ response : DocumentResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/updateFields";
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

            if (request.getDestFileName() != nil) {
                queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serializeToString(value: request.getDestFileName()!)));
            }

            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }

            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "PUT",
                body: nil,
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : DocumentResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: DocumentResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of updateFields method
    // Updates (reevaluate) fields in document.
    public func updateFields(request : UpdateFieldsRequest) throws -> DocumentResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : DocumentResponse? = nil;
        var responseError : Error? = nil;
        self.updateFields(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        _ = semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of updateFootnote method
    // Updates footnote's properties, returns updated run's data.
    public func updateFootnote(request : UpdateFootnoteRequest, callback : @escaping (_ response : FootnoteResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/{nodePath}/footnotes/{index}";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));

            rawPath = rawPath.replacingOccurrences(of: "{nodePath}", with: try ObjectSerializer.serializeToString(value: request.getNodePath()));

            rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serializeToString(value: request.getIndex()));

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

            if (request.getDestFileName() != nil) {
                queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serializeToString(value: request.getDestFileName()!)));
            }

            if (request.getRevisionAuthor() != nil) {
                queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serializeToString(value: request.getRevisionAuthor()!)));
            }

            if (request.getRevisionDateTime() != nil) {
                queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serializeToString(value: request.getRevisionDateTime()!)));
            }

            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }

            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "PUT",
                body: try ObjectSerializer.serializeBody(value: request.getFootnoteDto()),
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : FootnoteResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: FootnoteResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of updateFootnote method
    // Updates footnote's properties, returns updated run's data.
    public func updateFootnote(request : UpdateFootnoteRequest) throws -> FootnoteResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : FootnoteResponse? = nil;
        var responseError : Error? = nil;
        self.updateFootnote(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        _ = semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of updateFootnoteWithoutNodePath method
    // Updates footnote's properties, returns updated run's data.
    public func updateFootnoteWithoutNodePath(request : UpdateFootnoteWithoutNodePathRequest, callback : @escaping (_ response : FootnoteResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/footnotes/{index}";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));

            rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serializeToString(value: request.getIndex()));

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

            if (request.getDestFileName() != nil) {
                queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serializeToString(value: request.getDestFileName()!)));
            }

            if (request.getRevisionAuthor() != nil) {
                queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serializeToString(value: request.getRevisionAuthor()!)));
            }

            if (request.getRevisionDateTime() != nil) {
                queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serializeToString(value: request.getRevisionDateTime()!)));
            }

            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }

            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "PUT",
                body: try ObjectSerializer.serializeBody(value: request.getFootnoteDto()),
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : FootnoteResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: FootnoteResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of updateFootnoteWithoutNodePath method
    // Updates footnote's properties, returns updated run's data.
    public func updateFootnoteWithoutNodePath(request : UpdateFootnoteWithoutNodePathRequest) throws -> FootnoteResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : FootnoteResponse? = nil;
        var responseError : Error? = nil;
        self.updateFootnoteWithoutNodePath(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        _ = semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of updateFormField method
    // Updates properties of form field, returns updated form field.
    public func updateFormField(request : UpdateFormFieldRequest, callback : @escaping (_ response : FormFieldResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/{nodePath}/formfields/{index}";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));

            rawPath = rawPath.replacingOccurrences(of: "{nodePath}", with: try ObjectSerializer.serializeToString(value: request.getNodePath()));

            rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serializeToString(value: request.getIndex()));

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

            if (request.getDestFileName() != nil) {
                queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serializeToString(value: request.getDestFileName()!)));
            }

            if (request.getRevisionAuthor() != nil) {
                queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serializeToString(value: request.getRevisionAuthor()!)));
            }

            if (request.getRevisionDateTime() != nil) {
                queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serializeToString(value: request.getRevisionDateTime()!)));
            }

            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }

            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "PUT",
                body: try ObjectSerializer.serializeBody(value: request.getFormField()),
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : FormFieldResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: FormFieldResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of updateFormField method
    // Updates properties of form field, returns updated form field.
    public func updateFormField(request : UpdateFormFieldRequest) throws -> FormFieldResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : FormFieldResponse? = nil;
        var responseError : Error? = nil;
        self.updateFormField(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        _ = semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of updateFormFieldWithoutNodePath method
    // Updates properties of form field, returns updated form field.
    public func updateFormFieldWithoutNodePath(request : UpdateFormFieldWithoutNodePathRequest, callback : @escaping (_ response : FormFieldResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/formfields/{index}";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));

            rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serializeToString(value: request.getIndex()));

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

            if (request.getDestFileName() != nil) {
                queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serializeToString(value: request.getDestFileName()!)));
            }

            if (request.getRevisionAuthor() != nil) {
                queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serializeToString(value: request.getRevisionAuthor()!)));
            }

            if (request.getRevisionDateTime() != nil) {
                queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serializeToString(value: request.getRevisionDateTime()!)));
            }

            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }

            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "PUT",
                body: try ObjectSerializer.serializeBody(value: request.getFormField()),
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : FormFieldResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: FormFieldResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of updateFormFieldWithoutNodePath method
    // Updates properties of form field, returns updated form field.
    public func updateFormFieldWithoutNodePath(request : UpdateFormFieldWithoutNodePathRequest) throws -> FormFieldResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : FormFieldResponse? = nil;
        var responseError : Error? = nil;
        self.updateFormFieldWithoutNodePath(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        _ = semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of updateList method
    // Updates list properties, returns updated list.
    public func updateList(request : UpdateListRequest, callback : @escaping (_ response : ListResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/lists/{listId}";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));

            rawPath = rawPath.replacingOccurrences(of: "{listId}", with: try ObjectSerializer.serializeToString(value: request.getListId()));

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

            if (request.getDestFileName() != nil) {
                queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serializeToString(value: request.getDestFileName()!)));
            }

            if (request.getRevisionAuthor() != nil) {
                queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serializeToString(value: request.getRevisionAuthor()!)));
            }

            if (request.getRevisionDateTime() != nil) {
                queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serializeToString(value: request.getRevisionDateTime()!)));
            }

            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }

            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "PUT",
                body: try ObjectSerializer.serializeBody(value: request.getListUpdate()),
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : ListResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: ListResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of updateList method
    // Updates list properties, returns updated list.
    public func updateList(request : UpdateListRequest) throws -> ListResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : ListResponse? = nil;
        var responseError : Error? = nil;
        self.updateList(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        _ = semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of updateListLevel method
    // Updates list level in document list, returns updated list.
    public func updateListLevel(request : UpdateListLevelRequest, callback : @escaping (_ response : ListResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/lists/{listId}/listLevels/{listLevel}";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));

            rawPath = rawPath.replacingOccurrences(of: "{listId}", with: try ObjectSerializer.serializeToString(value: request.getListId()));

            rawPath = rawPath.replacingOccurrences(of: "{listLevel}", with: try ObjectSerializer.serializeToString(value: request.getListLevel()));

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

            if (request.getDestFileName() != nil) {
                queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serializeToString(value: request.getDestFileName()!)));
            }

            if (request.getRevisionAuthor() != nil) {
                queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serializeToString(value: request.getRevisionAuthor()!)));
            }

            if (request.getRevisionDateTime() != nil) {
                queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serializeToString(value: request.getRevisionDateTime()!)));
            }

            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }

            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "PUT",
                body: try ObjectSerializer.serializeBody(value: request.getListUpdate()),
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : ListResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: ListResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of updateListLevel method
    // Updates list level in document list, returns updated list.
    public func updateListLevel(request : UpdateListLevelRequest) throws -> ListResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : ListResponse? = nil;
        var responseError : Error? = nil;
        self.updateListLevel(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        _ = semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of updateParagraphFormat method
    // Updates paragraph format properties, returns updated format properties.
    public func updateParagraphFormat(request : UpdateParagraphFormatRequest, callback : @escaping (_ response : ParagraphFormatResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/{nodePath}/paragraphs/{index}/format";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));

            rawPath = rawPath.replacingOccurrences(of: "{nodePath}", with: try ObjectSerializer.serializeToString(value: request.getNodePath()));

            rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serializeToString(value: request.getIndex()));

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

            if (request.getDestFileName() != nil) {
                queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serializeToString(value: request.getDestFileName()!)));
            }

            if (request.getRevisionAuthor() != nil) {
                queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serializeToString(value: request.getRevisionAuthor()!)));
            }

            if (request.getRevisionDateTime() != nil) {
                queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serializeToString(value: request.getRevisionDateTime()!)));
            }

            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }

            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "PUT",
                body: try ObjectSerializer.serializeBody(value: request.getDto()),
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : ParagraphFormatResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: ParagraphFormatResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of updateParagraphFormat method
    // Updates paragraph format properties, returns updated format properties.
    public func updateParagraphFormat(request : UpdateParagraphFormatRequest) throws -> ParagraphFormatResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : ParagraphFormatResponse? = nil;
        var responseError : Error? = nil;
        self.updateParagraphFormat(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        _ = semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of updateParagraphFormatWithoutNodePath method
    // Updates paragraph format properties, returns updated format properties.
    public func updateParagraphFormatWithoutNodePath(request : UpdateParagraphFormatWithoutNodePathRequest, callback : @escaping (_ response : ParagraphFormatResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/paragraphs/{index}/format";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));

            rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serializeToString(value: request.getIndex()));

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

            if (request.getDestFileName() != nil) {
                queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serializeToString(value: request.getDestFileName()!)));
            }

            if (request.getRevisionAuthor() != nil) {
                queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serializeToString(value: request.getRevisionAuthor()!)));
            }

            if (request.getRevisionDateTime() != nil) {
                queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serializeToString(value: request.getRevisionDateTime()!)));
            }

            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }

            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "PUT",
                body: try ObjectSerializer.serializeBody(value: request.getDto()),
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : ParagraphFormatResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: ParagraphFormatResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of updateParagraphFormatWithoutNodePath method
    // Updates paragraph format properties, returns updated format properties.
    public func updateParagraphFormatWithoutNodePath(request : UpdateParagraphFormatWithoutNodePathRequest) throws -> ParagraphFormatResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : ParagraphFormatResponse? = nil;
        var responseError : Error? = nil;
        self.updateParagraphFormatWithoutNodePath(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        _ = semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of updateParagraphListFormat method
    // Updates paragraph list format properties, returns updated list format properties.
    public func updateParagraphListFormat(request : UpdateParagraphListFormatRequest, callback : @escaping (_ response : ParagraphListFormatResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/{nodePath}/paragraphs/{index}/listFormat";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));

            rawPath = rawPath.replacingOccurrences(of: "{nodePath}", with: try ObjectSerializer.serializeToString(value: request.getNodePath()));

            rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serializeToString(value: request.getIndex()));

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

            if (request.getDestFileName() != nil) {
                queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serializeToString(value: request.getDestFileName()!)));
            }

            if (request.getRevisionAuthor() != nil) {
                queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serializeToString(value: request.getRevisionAuthor()!)));
            }

            if (request.getRevisionDateTime() != nil) {
                queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serializeToString(value: request.getRevisionDateTime()!)));
            }

            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }

            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "PUT",
                body: try ObjectSerializer.serializeBody(value: request.getDto()),
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : ParagraphListFormatResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: ParagraphListFormatResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of updateParagraphListFormat method
    // Updates paragraph list format properties, returns updated list format properties.
    public func updateParagraphListFormat(request : UpdateParagraphListFormatRequest) throws -> ParagraphListFormatResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : ParagraphListFormatResponse? = nil;
        var responseError : Error? = nil;
        self.updateParagraphListFormat(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        _ = semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of updateParagraphListFormatWithoutNodePath method
    // Updates paragraph list format properties, returns updated list format properties.
    public func updateParagraphListFormatWithoutNodePath(request : UpdateParagraphListFormatWithoutNodePathRequest, callback : @escaping (_ response : ParagraphListFormatResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/paragraphs/{index}/listFormat";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));

            rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serializeToString(value: request.getIndex()));

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

            if (request.getDestFileName() != nil) {
                queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serializeToString(value: request.getDestFileName()!)));
            }

            if (request.getRevisionAuthor() != nil) {
                queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serializeToString(value: request.getRevisionAuthor()!)));
            }

            if (request.getRevisionDateTime() != nil) {
                queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serializeToString(value: request.getRevisionDateTime()!)));
            }

            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }

            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "PUT",
                body: try ObjectSerializer.serializeBody(value: request.getDto()),
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : ParagraphListFormatResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: ParagraphListFormatResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of updateParagraphListFormatWithoutNodePath method
    // Updates paragraph list format properties, returns updated list format properties.
    public func updateParagraphListFormatWithoutNodePath(request : UpdateParagraphListFormatWithoutNodePathRequest) throws -> ParagraphListFormatResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : ParagraphListFormatResponse? = nil;
        var responseError : Error? = nil;
        self.updateParagraphListFormatWithoutNodePath(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        _ = semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of updateRun method
    // Updates run's properties, returns updated run's data.
    public func updateRun(request : UpdateRunRequest, callback : @escaping (_ response : RunResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/{paragraphPath}/runs/{index}";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));

            rawPath = rawPath.replacingOccurrences(of: "{paragraphPath}", with: try ObjectSerializer.serializeToString(value: request.getParagraphPath()));

            rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serializeToString(value: request.getIndex()));

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

            if (request.getDestFileName() != nil) {
                queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serializeToString(value: request.getDestFileName()!)));
            }

            if (request.getRevisionAuthor() != nil) {
                queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serializeToString(value: request.getRevisionAuthor()!)));
            }

            if (request.getRevisionDateTime() != nil) {
                queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serializeToString(value: request.getRevisionDateTime()!)));
            }

            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }

            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "PUT",
                body: try ObjectSerializer.serializeBody(value: request.getRun()),
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : RunResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: RunResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of updateRun method
    // Updates run's properties, returns updated run's data.
    public func updateRun(request : UpdateRunRequest) throws -> RunResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : RunResponse? = nil;
        var responseError : Error? = nil;
        self.updateRun(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        _ = semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of updateRunFont method
    // Updates font properties, returns updated font data.
    public func updateRunFont(request : UpdateRunFontRequest, callback : @escaping (_ response : FontResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/{paragraphPath}/runs/{index}/font";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));

            rawPath = rawPath.replacingOccurrences(of: "{paragraphPath}", with: try ObjectSerializer.serializeToString(value: request.getParagraphPath()));

            rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serializeToString(value: request.getIndex()));

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

            if (request.getDestFileName() != nil) {
                queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serializeToString(value: request.getDestFileName()!)));
            }

            if (request.getRevisionAuthor() != nil) {
                queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serializeToString(value: request.getRevisionAuthor()!)));
            }

            if (request.getRevisionDateTime() != nil) {
                queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serializeToString(value: request.getRevisionDateTime()!)));
            }

            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }

            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "PUT",
                body: try ObjectSerializer.serializeBody(value: request.getFontDto()),
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : FontResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: FontResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of updateRunFont method
    // Updates font properties, returns updated font data.
    public func updateRunFont(request : UpdateRunFontRequest) throws -> FontResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : FontResponse? = nil;
        var responseError : Error? = nil;
        self.updateRunFont(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        _ = semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of updateSectionPageSetup method
    // Updates page setup of section.
    public func updateSectionPageSetup(request : UpdateSectionPageSetupRequest, callback : @escaping (_ response : SectionPageSetupResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/sections/{sectionIndex}/pageSetup";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));

            rawPath = rawPath.replacingOccurrences(of: "{sectionIndex}", with: try ObjectSerializer.serializeToString(value: request.getSectionIndex()));

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

            if (request.getDestFileName() != nil) {
                queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serializeToString(value: request.getDestFileName()!)));
            }

            if (request.getRevisionAuthor() != nil) {
                queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serializeToString(value: request.getRevisionAuthor()!)));
            }

            if (request.getRevisionDateTime() != nil) {
                queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serializeToString(value: request.getRevisionDateTime()!)));
            }

            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }

            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "PUT",
                body: try ObjectSerializer.serializeBody(value: request.getPageSetup()),
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : SectionPageSetupResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: SectionPageSetupResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of updateSectionPageSetup method
    // Updates page setup of section.
    public func updateSectionPageSetup(request : UpdateSectionPageSetupRequest) throws -> SectionPageSetupResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : SectionPageSetupResponse? = nil;
        var responseError : Error? = nil;
        self.updateSectionPageSetup(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        _ = semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of updateStyle method
    // Updates style properties, returns an updated style.
    public func updateStyle(request : UpdateStyleRequest, callback : @escaping (_ response : StyleResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/styles/{styleName}/update";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));

            rawPath = rawPath.replacingOccurrences(of: "{styleName}", with: try ObjectSerializer.serializeToString(value: request.getStyleName()));

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

            if (request.getDestFileName() != nil) {
                queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serializeToString(value: request.getDestFileName()!)));
            }

            if (request.getRevisionAuthor() != nil) {
                queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serializeToString(value: request.getRevisionAuthor()!)));
            }

            if (request.getRevisionDateTime() != nil) {
                queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serializeToString(value: request.getRevisionDateTime()!)));
            }

            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }

            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "PUT",
                body: try ObjectSerializer.serializeBody(value: request.getStyleUpdate()),
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : StyleResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: StyleResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of updateStyle method
    // Updates style properties, returns an updated style.
    public func updateStyle(request : UpdateStyleRequest) throws -> StyleResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : StyleResponse? = nil;
        var responseError : Error? = nil;
        self.updateStyle(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        _ = semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of updateTableCellFormat method
    // Updates a table cell format.
    public func updateTableCellFormat(request : UpdateTableCellFormatRequest, callback : @escaping (_ response : TableCellFormatResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/{tableRowPath}/cells/{index}/cellformat";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));

            rawPath = rawPath.replacingOccurrences(of: "{tableRowPath}", with: try ObjectSerializer.serializeToString(value: request.getTableRowPath()));

            rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serializeToString(value: request.getIndex()));

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

            if (request.getDestFileName() != nil) {
                queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serializeToString(value: request.getDestFileName()!)));
            }

            if (request.getRevisionAuthor() != nil) {
                queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serializeToString(value: request.getRevisionAuthor()!)));
            }

            if (request.getRevisionDateTime() != nil) {
                queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serializeToString(value: request.getRevisionDateTime()!)));
            }

            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }

            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "PUT",
                body: try ObjectSerializer.serializeBody(value: request.getFormat()),
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : TableCellFormatResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: TableCellFormatResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of updateTableCellFormat method
    // Updates a table cell format.
    public func updateTableCellFormat(request : UpdateTableCellFormatRequest) throws -> TableCellFormatResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : TableCellFormatResponse? = nil;
        var responseError : Error? = nil;
        self.updateTableCellFormat(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        _ = semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of updateTableProperties method
    // Updates a table properties.
    public func updateTableProperties(request : UpdateTablePropertiesRequest, callback : @escaping (_ response : TablePropertiesResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/{nodePath}/tables/{index}/properties";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));

            rawPath = rawPath.replacingOccurrences(of: "{nodePath}", with: try ObjectSerializer.serializeToString(value: request.getNodePath()));

            rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serializeToString(value: request.getIndex()));

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

            if (request.getDestFileName() != nil) {
                queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serializeToString(value: request.getDestFileName()!)));
            }

            if (request.getRevisionAuthor() != nil) {
                queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serializeToString(value: request.getRevisionAuthor()!)));
            }

            if (request.getRevisionDateTime() != nil) {
                queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serializeToString(value: request.getRevisionDateTime()!)));
            }

            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }

            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "PUT",
                body: try ObjectSerializer.serializeBody(value: request.getProperties()),
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : TablePropertiesResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: TablePropertiesResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of updateTableProperties method
    // Updates a table properties.
    public func updateTableProperties(request : UpdateTablePropertiesRequest) throws -> TablePropertiesResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : TablePropertiesResponse? = nil;
        var responseError : Error? = nil;
        self.updateTableProperties(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        _ = semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of updateTablePropertiesWithoutNodePath method
    // Updates a table properties.
    public func updateTablePropertiesWithoutNodePath(request : UpdateTablePropertiesWithoutNodePathRequest, callback : @escaping (_ response : TablePropertiesResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/tables/{index}/properties";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));

            rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serializeToString(value: request.getIndex()));

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

            if (request.getDestFileName() != nil) {
                queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serializeToString(value: request.getDestFileName()!)));
            }

            if (request.getRevisionAuthor() != nil) {
                queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serializeToString(value: request.getRevisionAuthor()!)));
            }

            if (request.getRevisionDateTime() != nil) {
                queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serializeToString(value: request.getRevisionDateTime()!)));
            }

            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }

            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "PUT",
                body: try ObjectSerializer.serializeBody(value: request.getProperties()),
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : TablePropertiesResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: TablePropertiesResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of updateTablePropertiesWithoutNodePath method
    // Updates a table properties.
    public func updateTablePropertiesWithoutNodePath(request : UpdateTablePropertiesWithoutNodePathRequest) throws -> TablePropertiesResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : TablePropertiesResponse? = nil;
        var responseError : Error? = nil;
        self.updateTablePropertiesWithoutNodePath(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        _ = semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of updateTableRowFormat method
    // Updates a table row format.
    public func updateTableRowFormat(request : UpdateTableRowFormatRequest, callback : @escaping (_ response : TableRowFormatResponse?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/{name}/{tablePath}/rows/{index}/rowformat";
            rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: request.getName()));

            rawPath = rawPath.replacingOccurrences(of: "{tablePath}", with: try ObjectSerializer.serializeToString(value: request.getTablePath()));

            rawPath = rawPath.replacingOccurrences(of: "{index}", with: try ObjectSerializer.serializeToString(value: request.getIndex()));

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

            if (request.getDestFileName() != nil) {
                queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serializeToString(value: request.getDestFileName()!)));
            }

            if (request.getRevisionAuthor() != nil) {
                queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serializeToString(value: request.getRevisionAuthor()!)));
            }

            if (request.getRevisionDateTime() != nil) {
                queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serializeToString(value: request.getRevisionDateTime()!)));
            }

            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }

            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "PUT",
                body: try ObjectSerializer.serializeBody(value: request.getFormat()),
                headers: nil,
                formParams: nil,
                callback: { response, error in
                    var responseObject : TableRowFormatResponse? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: TableRowFormatResponse.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of updateTableRowFormat method
    // Updates a table row format.
    public func updateTableRowFormat(request : UpdateTableRowFormatRequest) throws -> TableRowFormatResponse {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : TableRowFormatResponse? = nil;
        var responseError : Error? = nil;
        self.updateTableRowFormat(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        _ = semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }

    // Async representation of uploadFile method
    // Upload file.
    public func uploadFile(request : UploadFileRequest, callback : @escaping (_ response : FilesUploadResult?, _ error : Error?) -> ()) {
        do {
            var rawPath = "/words/storage/file/{path}";
            rawPath = rawPath.replacingOccurrences(of: "{path}", with: try ObjectSerializer.serializeToString(value: request.getPath()));

            rawPath = rawPath.replacingOccurrences(of: "//", with: "/");

            let urlPath = (try self.configuration.getApiRootUrl()).appendingPathComponent(rawPath);
            var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
            var queryItems : [URLQueryItem] = [];
            if (request.getStorageName() != nil) {
                queryItems.append(URLQueryItem(name: "storageName", value: try ObjectSerializer.serializeToString(value: request.getStorageName()!)));
            }

            if (queryItems.count > 0) {
                urlBuilder.queryItems = queryItems;
            }
            var formParams : [RequestFormParam] = [];
            formParams.append(RequestFormParam(name: "fileContent", body: try ObjectSerializer.serializeFile(value: request.getFileContent())));


            apiInvoker.invoke(
                url: urlBuilder.url!,
                method: "PUT",
                body: nil,
                headers: nil,
                formParams: formParams,
                callback: { response, error in
                    var responseObject : FilesUploadResult? = nil;
                    var responseError = error;
                    if (responseError == nil) {
                        do {
                            responseObject = try ObjectSerializer.deserialize(type: FilesUploadResult.self, from: response!);
                        }
                        catch let deserializeError {
                            responseError = deserializeError;
                        }
                    }
                    callback(responseObject, responseError);
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    // Sync representation of uploadFile method
    // Upload file.
    public func uploadFile(request : UploadFileRequest) throws -> FilesUploadResult {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : FilesUploadResult? = nil;
        var responseError : Error? = nil;
        self.uploadFile(request : request, callback: { response, error in
            responseObject = response;
            responseError = error;
            semaphore.signal();
        });

        _ = semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
        return responseObject!;
    }
}
