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

    // Initializes a new instance of the WordsAPI class based on ClientId and clientSecret.
    public init(clientId: String, clientSecret: String) {
        self.configuration = Configuration(clientId: clientId, clientSecret: clientSecret);
        self.apiInvoker = ApiInvoker(configuration: configuration);
    }

    // Async representation of acceptAllRevisions method
    // Accepts all revisions in the document.
    public func acceptAllRevisions(request : AcceptAllRevisionsRequest, callback : @escaping (_ response : RevisionsModificationResponse?, _ error : Error?) -> ()) {
        do {
            apiInvoker.invoke(
                apiRequestData: try request.createApiRequestData(configuration: self.configuration),
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
    // Accepts all revisions in the document.
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
    // Appends documents to the original document.
    public func appendDocument(request : AppendDocumentRequest, callback : @escaping (_ response : DocumentResponse?, _ error : Error?) -> ()) {
        do {
            apiInvoker.invoke(
                apiRequestData: try request.createApiRequestData(configuration: self.configuration),
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
    // Appends documents to the original document.
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
    // Applies a style to the document node.
    public func applyStyleToDocumentElement(request : ApplyStyleToDocumentElementRequest, callback : @escaping (_ response : WordsResponse?, _ error : Error?) -> ()) {
        do {
            apiInvoker.invoke(
                apiRequestData: try request.createApiRequestData(configuration: self.configuration),
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
    // Applies a style to the document node.
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
    // Executes the report generation process using the specified document template and the external data source in XML, JSON or CSV format.
    public func buildReport(request : BuildReportRequest, callback : @escaping (_ response : DocumentResponse?, _ error : Error?) -> ()) {
        do {
            apiInvoker.invoke(
                apiRequestData: try request.createApiRequestData(configuration: self.configuration),
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
    // Executes the report generation process using the specified document template and the external data source in XML, JSON or CSV format.
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
    // Executes the report generation process online using the specified document template and the external data source in XML, JSON or CSV format.
    public func buildReportOnline(request : BuildReportOnlineRequest, callback : @escaping (_ response : Data?, _ error : Error?) -> ()) {
        do {
            apiInvoker.invoke(
                apiRequestData: try request.createApiRequestData(configuration: self.configuration),
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
    // Executes the report generation process online using the specified document template and the external data source in XML, JSON or CSV format.
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
    // Runs a multi-class text classification for the specified raw text.
    public func classify(request : ClassifyRequest, callback : @escaping (_ response : ClassificationResponse?, _ error : Error?) -> ()) {
        do {
            apiInvoker.invoke(
                apiRequestData: try request.createApiRequestData(configuration: self.configuration),
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
    // Runs a multi-class text classification for the specified raw text.
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
    // Runs a multi-class text classification for the document.
    public func classifyDocument(request : ClassifyDocumentRequest, callback : @escaping (_ response : ClassificationResponse?, _ error : Error?) -> ()) {
        do {
            apiInvoker.invoke(
                apiRequestData: try request.createApiRequestData(configuration: self.configuration),
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
    // Runs a multi-class text classification for the document.
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
    // Compares two documents.
    public func compareDocument(request : CompareDocumentRequest, callback : @escaping (_ response : DocumentResponse?, _ error : Error?) -> ()) {
        do {
            apiInvoker.invoke(
                apiRequestData: try request.createApiRequestData(configuration: self.configuration),
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
    // Compares two documents.
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
    // Converts a document on a local drive to the specified format.
    public func convertDocument(request : ConvertDocumentRequest, callback : @escaping (_ response : Data?, _ error : Error?) -> ()) {
        do {
            apiInvoker.invoke(
                apiRequestData: try request.createApiRequestData(configuration: self.configuration),
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
    // Converts a document on a local drive to the specified format.
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
            apiInvoker.invoke(
                apiRequestData: try request.createApiRequestData(configuration: self.configuration),
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
            apiInvoker.invoke(
                apiRequestData: try request.createApiRequestData(configuration: self.configuration),
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
    // Makes a copy of the style in the document.
    public func copyStyle(request : CopyStyleRequest, callback : @escaping (_ response : StyleResponse?, _ error : Error?) -> ()) {
        do {
            apiInvoker.invoke(
                apiRequestData: try request.createApiRequestData(configuration: self.configuration),
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
    // Makes a copy of the style in the document.
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
    // Supported extensions: ".doc", ".docx", ".docm", ".dot", ".dotm", ".dotx", ".flatopc", ".fopc", ".flatopc_macro", ".fopc_macro", ".flatopc_template", ".fopc_template", ".flatopc_template_macro", ".fopc_template_macro", ".wordml", ".wml", ".rtf".
    public func createDocument(request : CreateDocumentRequest, callback : @escaping (_ response : DocumentResponse?, _ error : Error?) -> ()) {
        do {
            apiInvoker.invoke(
                apiRequestData: try request.createApiRequestData(configuration: self.configuration),
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
            apiInvoker.invoke(
                apiRequestData: try request.createApiRequestData(configuration: self.configuration),
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
    // Adds a new or updates an existing document property.
    public func createOrUpdateDocumentProperty(request : CreateOrUpdateDocumentPropertyRequest, callback : @escaping (_ response : DocumentPropertyResponse?, _ error : Error?) -> ()) {
        do {
            apiInvoker.invoke(
                apiRequestData: try request.createApiRequestData(configuration: self.configuration),
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
    // Adds a new or updates an existing document property.
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
    // Removes paragraph tab stops from the document node.
    public func deleteAllParagraphTabStops(request : DeleteAllParagraphTabStopsRequest, callback : @escaping (_ response : TabStopsResponse?, _ error : Error?) -> ()) {
        do {
            apiInvoker.invoke(
                apiRequestData: try request.createApiRequestData(configuration: self.configuration),
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
    // Removes paragraph tab stops from the document node.
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

    // Async representation of deleteBorder method
    // The 'nodePath' parameter should refer to a paragraph, a cell or a row.
    public func deleteBorder(request : DeleteBorderRequest, callback : @escaping (_ response : BorderResponse?, _ error : Error?) -> ()) {
        do {
            apiInvoker.invoke(
                apiRequestData: try request.createApiRequestData(configuration: self.configuration),
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
    // The 'nodePath' parameter should refer to a paragraph, a cell or a row.
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
    // The 'nodePath' parameter should refer to a paragraph, a cell or a row.
    public func deleteBorders(request : DeleteBordersRequest, callback : @escaping (_ response : BordersResponse?, _ error : Error?) -> ()) {
        do {
            apiInvoker.invoke(
                apiRequestData: try request.createApiRequestData(configuration: self.configuration),
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
    // The 'nodePath' parameter should refer to a paragraph, a cell or a row.
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
    // Removes a comment from the document.
    public func deleteComment(request : DeleteCommentRequest, callback : @escaping (_ error : Error?) -> ()) {
        do {
            apiInvoker.invoke(
                apiRequestData: try request.createApiRequestData(configuration: self.configuration),
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
    // Removes a comment from the document.
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
    // Removes a document property.
    public func deleteDocumentProperty(request : DeleteDocumentPropertyRequest, callback : @escaping (_ error : Error?) -> ()) {
        do {
            apiInvoker.invoke(
                apiRequestData: try request.createApiRequestData(configuration: self.configuration),
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
    // Removes a document property.
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
    // Removes a DrawingObject from the document node.
    public func deleteDrawingObject(request : DeleteDrawingObjectRequest, callback : @escaping (_ error : Error?) -> ()) {
        do {
            apiInvoker.invoke(
                apiRequestData: try request.createApiRequestData(configuration: self.configuration),
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
    // Removes a DrawingObject from the document node.
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

    // Async representation of deleteField method
    // Removes a field from the document node.
    public func deleteField(request : DeleteFieldRequest, callback : @escaping (_ error : Error?) -> ()) {
        do {
            apiInvoker.invoke(
                apiRequestData: try request.createApiRequestData(configuration: self.configuration),
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
    // Removes a field from the document node.
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
    // Removes fields from the document node.
    public func deleteFields(request : DeleteFieldsRequest, callback : @escaping (_ error : Error?) -> ()) {
        do {
            apiInvoker.invoke(
                apiRequestData: try request.createApiRequestData(configuration: self.configuration),
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
    // Removes fields from the document node.
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

    // Async representation of deleteFile method
    // Delete file.
    public func deleteFile(request : DeleteFileRequest, callback : @escaping (_ error : Error?) -> ()) {
        do {
            apiInvoker.invoke(
                apiRequestData: try request.createApiRequestData(configuration: self.configuration),
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
            apiInvoker.invoke(
                apiRequestData: try request.createApiRequestData(configuration: self.configuration),
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
    // Removes a footnote from the document node.
    public func deleteFootnote(request : DeleteFootnoteRequest, callback : @escaping (_ error : Error?) -> ()) {
        do {
            apiInvoker.invoke(
                apiRequestData: try request.createApiRequestData(configuration: self.configuration),
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
    // Removes a footnote from the document node.
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

    // Async representation of deleteFormField method
    // Removes a form field from the document node.
    public func deleteFormField(request : DeleteFormFieldRequest, callback : @escaping (_ error : Error?) -> ()) {
        do {
            apiInvoker.invoke(
                apiRequestData: try request.createApiRequestData(configuration: self.configuration),
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
    // Removes a form field from the document node.
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

    // Async representation of deleteHeaderFooter method
    // Removes a HeaderFooter object from the document section.
    public func deleteHeaderFooter(request : DeleteHeaderFooterRequest, callback : @escaping (_ error : Error?) -> ()) {
        do {
            apiInvoker.invoke(
                apiRequestData: try request.createApiRequestData(configuration: self.configuration),
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
    // Removes a HeaderFooter object from the document section.
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
    // Removes HeaderFooter objects from the document section.
    public func deleteHeadersFooters(request : DeleteHeadersFootersRequest, callback : @escaping (_ error : Error?) -> ()) {
        do {
            apiInvoker.invoke(
                apiRequestData: try request.createApiRequestData(configuration: self.configuration),
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
    // Removes HeaderFooter objects from the document section.
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
    // Removes macros from the document.
    public func deleteMacros(request : DeleteMacrosRequest, callback : @escaping (_ error : Error?) -> ()) {
        do {
            apiInvoker.invoke(
                apiRequestData: try request.createApiRequestData(configuration: self.configuration),
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
    // Removes macros from the document.
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
    // Removes an OfficeMath object from the document node.
    public func deleteOfficeMathObject(request : DeleteOfficeMathObjectRequest, callback : @escaping (_ error : Error?) -> ()) {
        do {
            apiInvoker.invoke(
                apiRequestData: try request.createApiRequestData(configuration: self.configuration),
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
    // Removes an OfficeMath object from the document node.
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

    // Async representation of deleteParagraph method
    // Removes a paragraph from the document node.
    public func deleteParagraph(request : DeleteParagraphRequest, callback : @escaping (_ error : Error?) -> ()) {
        do {
            apiInvoker.invoke(
                apiRequestData: try request.createApiRequestData(configuration: self.configuration),
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
    // Removes a paragraph from the document node.
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
    // Removes the formatting properties of a paragraph list from the document node.
    public func deleteParagraphListFormat(request : DeleteParagraphListFormatRequest, callback : @escaping (_ response : ParagraphListFormatResponse?, _ error : Error?) -> ()) {
        do {
            apiInvoker.invoke(
                apiRequestData: try request.createApiRequestData(configuration: self.configuration),
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
    // Removes the formatting properties of a paragraph list from the document node.
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

    // Async representation of deleteParagraphTabStop method
    // Removes a paragraph tab stop from the document node.
    public func deleteParagraphTabStop(request : DeleteParagraphTabStopRequest, callback : @escaping (_ response : TabStopsResponse?, _ error : Error?) -> ()) {
        do {
            apiInvoker.invoke(
                apiRequestData: try request.createApiRequestData(configuration: self.configuration),
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
    // Removes a paragraph tab stop from the document node.
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

    // Async representation of deleteRun method
    // Removes a Run object from the paragraph.
    public func deleteRun(request : DeleteRunRequest, callback : @escaping (_ error : Error?) -> ()) {
        do {
            apiInvoker.invoke(
                apiRequestData: try request.createApiRequestData(configuration: self.configuration),
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
    // Removes a Run object from the paragraph.
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
    // Removes a section from the document.
    public func deleteSection(request : DeleteSectionRequest, callback : @escaping (_ error : Error?) -> ()) {
        do {
            apiInvoker.invoke(
                apiRequestData: try request.createApiRequestData(configuration: self.configuration),
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
    // Removes a section from the document.
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
    // Removes a table from the document node.
    public func deleteTable(request : DeleteTableRequest, callback : @escaping (_ error : Error?) -> ()) {
        do {
            apiInvoker.invoke(
                apiRequestData: try request.createApiRequestData(configuration: self.configuration),
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
    // Removes a table from the document node.
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
    // Removes a cell from the table row.
    public func deleteTableCell(request : DeleteTableCellRequest, callback : @escaping (_ error : Error?) -> ()) {
        do {
            apiInvoker.invoke(
                apiRequestData: try request.createApiRequestData(configuration: self.configuration),
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
    // Removes a cell from the table row.
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
    // Removes a row from the table.
    public func deleteTableRow(request : DeleteTableRowRequest, callback : @escaping (_ error : Error?) -> ()) {
        do {
            apiInvoker.invoke(
                apiRequestData: try request.createApiRequestData(configuration: self.configuration),
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
    // Removes a row from the table.
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

    // Async representation of deleteWatermark method
    // Removes a watermark from the document.
    public func deleteWatermark(request : DeleteWatermarkRequest, callback : @escaping (_ response : DocumentResponse?, _ error : Error?) -> ()) {
        do {
            apiInvoker.invoke(
                apiRequestData: try request.createApiRequestData(configuration: self.configuration),
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
    // Removes a watermark from the document.
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
            apiInvoker.invoke(
                apiRequestData: try request.createApiRequestData(configuration: self.configuration),
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
    // Executes a Mail Merge operation.
    public func executeMailMerge(request : ExecuteMailMergeRequest, callback : @escaping (_ response : DocumentResponse?, _ error : Error?) -> ()) {
        do {
            apiInvoker.invoke(
                apiRequestData: try request.createApiRequestData(configuration: self.configuration),
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
    // Executes a Mail Merge operation.
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
    // Executes a Mail Merge operation online.
    public func executeMailMergeOnline(request : ExecuteMailMergeOnlineRequest, callback : @escaping (_ response : Data?, _ error : Error?) -> ()) {
        do {
            apiInvoker.invoke(
                apiRequestData: try request.createApiRequestData(configuration: self.configuration),
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
    // Executes a Mail Merge operation online.
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
    // Reads available fonts from the document.
    public func getAvailableFonts(request : GetAvailableFontsRequest, callback : @escaping (_ response : AvailableFontsResponse?, _ error : Error?) -> ()) {
        do {
            apiInvoker.invoke(
                apiRequestData: try request.createApiRequestData(configuration: self.configuration),
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
    // Reads available fonts from the document.
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
    // Reads a bookmark, specified by name, from the document.
    public func getBookmarkByName(request : GetBookmarkByNameRequest, callback : @escaping (_ response : BookmarkResponse?, _ error : Error?) -> ()) {
        do {
            apiInvoker.invoke(
                apiRequestData: try request.createApiRequestData(configuration: self.configuration),
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
    // Reads a bookmark, specified by name, from the document.
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
    // Reads bookmarks from the document.
    public func getBookmarks(request : GetBookmarksRequest, callback : @escaping (_ response : BookmarksResponse?, _ error : Error?) -> ()) {
        do {
            apiInvoker.invoke(
                apiRequestData: try request.createApiRequestData(configuration: self.configuration),
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
    // Reads bookmarks from the document.
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
    // The 'nodePath' parameter should refer to a paragraph, a cell or a row.
    public func getBorder(request : GetBorderRequest, callback : @escaping (_ response : BorderResponse?, _ error : Error?) -> ()) {
        do {
            apiInvoker.invoke(
                apiRequestData: try request.createApiRequestData(configuration: self.configuration),
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
    // The 'nodePath' parameter should refer to a paragraph, a cell or a row.
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
    // Reads borders from the document node.
    public func getBorders(request : GetBordersRequest, callback : @escaping (_ response : BordersResponse?, _ error : Error?) -> ()) {
        do {
            apiInvoker.invoke(
                apiRequestData: try request.createApiRequestData(configuration: self.configuration),
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
    // Reads borders from the document node.
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
    // Reads a comment from the document.
    public func getComment(request : GetCommentRequest, callback : @escaping (_ response : CommentResponse?, _ error : Error?) -> ()) {
        do {
            apiInvoker.invoke(
                apiRequestData: try request.createApiRequestData(configuration: self.configuration),
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
    // Reads a comment from the document.
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
    // Reads comments from the document.
    public func getComments(request : GetCommentsRequest, callback : @escaping (_ response : CommentsResponse?, _ error : Error?) -> ()) {
        do {
            apiInvoker.invoke(
                apiRequestData: try request.createApiRequestData(configuration: self.configuration),
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
    // Reads comments from the document.
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
    // Reads common information from the document.
    public func getDocument(request : GetDocumentRequest, callback : @escaping (_ response : DocumentResponse?, _ error : Error?) -> ()) {
        do {
            apiInvoker.invoke(
                apiRequestData: try request.createApiRequestData(configuration: self.configuration),
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
    // Reads common information from the document.
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
    // Reads a DrawingObject from the document node.
    public func getDocumentDrawingObjectByIndex(request : GetDocumentDrawingObjectByIndexRequest, callback : @escaping (_ response : DrawingObjectResponse?, _ error : Error?) -> ()) {
        do {
            apiInvoker.invoke(
                apiRequestData: try request.createApiRequestData(configuration: self.configuration),
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
    // Reads a DrawingObject from the document node.
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

    // Async representation of getDocumentDrawingObjectImageData method
    // Reads image data of a DrawingObject from the document node.
    public func getDocumentDrawingObjectImageData(request : GetDocumentDrawingObjectImageDataRequest, callback : @escaping (_ response : Data?, _ error : Error?) -> ()) {
        do {
            apiInvoker.invoke(
                apiRequestData: try request.createApiRequestData(configuration: self.configuration),
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
    // Reads image data of a DrawingObject from the document node.
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

    // Async representation of getDocumentDrawingObjectOleData method
    // Reads OLE data of a DrawingObject from the document node.
    public func getDocumentDrawingObjectOleData(request : GetDocumentDrawingObjectOleDataRequest, callback : @escaping (_ response : Data?, _ error : Error?) -> ()) {
        do {
            apiInvoker.invoke(
                apiRequestData: try request.createApiRequestData(configuration: self.configuration),
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
    // Reads OLE data of a DrawingObject from the document node.
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

    // Async representation of getDocumentDrawingObjects method
    // Reads DrawingObjects from the document node.
    public func getDocumentDrawingObjects(request : GetDocumentDrawingObjectsRequest, callback : @escaping (_ response : DrawingObjectsResponse?, _ error : Error?) -> ()) {
        do {
            apiInvoker.invoke(
                apiRequestData: try request.createApiRequestData(configuration: self.configuration),
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
    // Reads DrawingObjects from the document node.
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

    // Async representation of getDocumentFieldNames method
    // Reads merge field names from the document.
    public func getDocumentFieldNames(request : GetDocumentFieldNamesRequest, callback : @escaping (_ response : FieldNamesResponse?, _ error : Error?) -> ()) {
        do {
            apiInvoker.invoke(
                apiRequestData: try request.createApiRequestData(configuration: self.configuration),
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
    // Reads merge field names from the document.
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
    // Reads merge field names from the document.
    public func getDocumentFieldNamesOnline(request : GetDocumentFieldNamesOnlineRequest, callback : @escaping (_ response : FieldNamesResponse?, _ error : Error?) -> ()) {
        do {
            apiInvoker.invoke(
                apiRequestData: try request.createApiRequestData(configuration: self.configuration),
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
    // Reads merge field names from the document.
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
    // Reads a hyperlink from the document.
    public func getDocumentHyperlinkByIndex(request : GetDocumentHyperlinkByIndexRequest, callback : @escaping (_ response : HyperlinkResponse?, _ error : Error?) -> ()) {
        do {
            apiInvoker.invoke(
                apiRequestData: try request.createApiRequestData(configuration: self.configuration),
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
    // Reads a hyperlink from the document.
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
    // Reads hyperlinks from the document.
    public func getDocumentHyperlinks(request : GetDocumentHyperlinksRequest, callback : @escaping (_ response : HyperlinksResponse?, _ error : Error?) -> ()) {
        do {
            apiInvoker.invoke(
                apiRequestData: try request.createApiRequestData(configuration: self.configuration),
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
    // Reads hyperlinks from the document.
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
    // Reads document properties.
    public func getDocumentProperties(request : GetDocumentPropertiesRequest, callback : @escaping (_ response : DocumentPropertiesResponse?, _ error : Error?) -> ()) {
        do {
            apiInvoker.invoke(
                apiRequestData: try request.createApiRequestData(configuration: self.configuration),
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
    // Reads document properties.
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
    // Reads a document property.
    public func getDocumentProperty(request : GetDocumentPropertyRequest, callback : @escaping (_ response : DocumentPropertyResponse?, _ error : Error?) -> ()) {
        do {
            apiInvoker.invoke(
                apiRequestData: try request.createApiRequestData(configuration: self.configuration),
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
    // Reads a document property.
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
    // Reads protection properties from the document.
    public func getDocumentProtection(request : GetDocumentProtectionRequest, callback : @escaping (_ response : ProtectionDataResponse?, _ error : Error?) -> ()) {
        do {
            apiInvoker.invoke(
                apiRequestData: try request.createApiRequestData(configuration: self.configuration),
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
    // Reads protection properties from the document.
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
            apiInvoker.invoke(
                apiRequestData: try request.createApiRequestData(configuration: self.configuration),
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
    // Converts a document in cloud storage to the specified format.
    public func getDocumentWithFormat(request : GetDocumentWithFormatRequest, callback : @escaping (_ response : Data?, _ error : Error?) -> ()) {
        do {
            apiInvoker.invoke(
                apiRequestData: try request.createApiRequestData(configuration: self.configuration),
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
    // Converts a document in cloud storage to the specified format.
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
    // Reads a field from the document node.
    public func getField(request : GetFieldRequest, callback : @escaping (_ response : FieldResponse?, _ error : Error?) -> ()) {
        do {
            apiInvoker.invoke(
                apiRequestData: try request.createApiRequestData(configuration: self.configuration),
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
    // Reads a field from the document node.
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
    // Reads fields from the document node.
    public func getFields(request : GetFieldsRequest, callback : @escaping (_ response : FieldsResponse?, _ error : Error?) -> ()) {
        do {
            apiInvoker.invoke(
                apiRequestData: try request.createApiRequestData(configuration: self.configuration),
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
    // Reads fields from the document node.
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

    // Async representation of getFilesList method
    // Get all files and folders within a folder.
    public func getFilesList(request : GetFilesListRequest, callback : @escaping (_ response : FilesList?, _ error : Error?) -> ()) {
        do {
            apiInvoker.invoke(
                apiRequestData: try request.createApiRequestData(configuration: self.configuration),
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
    // Reads a footnote from the document node.
    public func getFootnote(request : GetFootnoteRequest, callback : @escaping (_ response : FootnoteResponse?, _ error : Error?) -> ()) {
        do {
            apiInvoker.invoke(
                apiRequestData: try request.createApiRequestData(configuration: self.configuration),
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
    // Reads a footnote from the document node.
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
    // Reads footnotes from the document node.
    public func getFootnotes(request : GetFootnotesRequest, callback : @escaping (_ response : FootnotesResponse?, _ error : Error?) -> ()) {
        do {
            apiInvoker.invoke(
                apiRequestData: try request.createApiRequestData(configuration: self.configuration),
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
    // Reads footnotes from the document node.
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

    // Async representation of getFormField method
    // Reads a form field from the document node.
    public func getFormField(request : GetFormFieldRequest, callback : @escaping (_ response : FormFieldResponse?, _ error : Error?) -> ()) {
        do {
            apiInvoker.invoke(
                apiRequestData: try request.createApiRequestData(configuration: self.configuration),
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
    // Reads a form field from the document node.
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
    // Reads form fields from the document node.
    public func getFormFields(request : GetFormFieldsRequest, callback : @escaping (_ response : FormFieldsResponse?, _ error : Error?) -> ()) {
        do {
            apiInvoker.invoke(
                apiRequestData: try request.createApiRequestData(configuration: self.configuration),
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
    // Reads form fields from the document node.
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

    // Async representation of getHeaderFooter method
    // Reads a HeaderFooter object from the document.
    public func getHeaderFooter(request : GetHeaderFooterRequest, callback : @escaping (_ response : HeaderFooterResponse?, _ error : Error?) -> ()) {
        do {
            apiInvoker.invoke(
                apiRequestData: try request.createApiRequestData(configuration: self.configuration),
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
    // Reads a HeaderFooter object from the document.
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
    // Reads a HeaderFooter object from the document section.
    public func getHeaderFooterOfSection(request : GetHeaderFooterOfSectionRequest, callback : @escaping (_ response : HeaderFooterResponse?, _ error : Error?) -> ()) {
        do {
            apiInvoker.invoke(
                apiRequestData: try request.createApiRequestData(configuration: self.configuration),
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
    // Reads a HeaderFooter object from the document section.
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
    // Reads HeaderFooter objects from the document section.
    public func getHeaderFooters(request : GetHeaderFootersRequest, callback : @escaping (_ response : HeaderFootersResponse?, _ error : Error?) -> ()) {
        do {
            apiInvoker.invoke(
                apiRequestData: try request.createApiRequestData(configuration: self.configuration),
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
    // Reads HeaderFooter objects from the document section.
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
    // Reads a list from the document.
    public func getList(request : GetListRequest, callback : @escaping (_ response : ListResponse?, _ error : Error?) -> ()) {
        do {
            apiInvoker.invoke(
                apiRequestData: try request.createApiRequestData(configuration: self.configuration),
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
    // Reads a list from the document.
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
    // Reads lists from the document.
    public func getLists(request : GetListsRequest, callback : @escaping (_ response : ListsResponse?, _ error : Error?) -> ()) {
        do {
            apiInvoker.invoke(
                apiRequestData: try request.createApiRequestData(configuration: self.configuration),
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
    // Reads lists from the document.
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
    // Reads an OfficeMath object from the document node.
    public func getOfficeMathObject(request : GetOfficeMathObjectRequest, callback : @escaping (_ response : OfficeMathObjectResponse?, _ error : Error?) -> ()) {
        do {
            apiInvoker.invoke(
                apiRequestData: try request.createApiRequestData(configuration: self.configuration),
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
    // Reads an OfficeMath object from the document node.
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
    // Reads OfficeMath objects from the document node.
    public func getOfficeMathObjects(request : GetOfficeMathObjectsRequest, callback : @escaping (_ response : OfficeMathObjectsResponse?, _ error : Error?) -> ()) {
        do {
            apiInvoker.invoke(
                apiRequestData: try request.createApiRequestData(configuration: self.configuration),
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
    // Reads OfficeMath objects from the document node.
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

    // Async representation of getParagraph method
    // Reads a paragraph from the document node.
    public func getParagraph(request : GetParagraphRequest, callback : @escaping (_ response : ParagraphResponse?, _ error : Error?) -> ()) {
        do {
            apiInvoker.invoke(
                apiRequestData: try request.createApiRequestData(configuration: self.configuration),
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
    // Reads a paragraph from the document node.
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
    // Reads the formatting properties of a paragraph from the document node.
    public func getParagraphFormat(request : GetParagraphFormatRequest, callback : @escaping (_ response : ParagraphFormatResponse?, _ error : Error?) -> ()) {
        do {
            apiInvoker.invoke(
                apiRequestData: try request.createApiRequestData(configuration: self.configuration),
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
    // Reads the formatting properties of a paragraph from the document node.
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

    // Async representation of getParagraphListFormat method
    // Reads the formatting properties of a paragraph list from the document node.
    public func getParagraphListFormat(request : GetParagraphListFormatRequest, callback : @escaping (_ response : ParagraphListFormatResponse?, _ error : Error?) -> ()) {
        do {
            apiInvoker.invoke(
                apiRequestData: try request.createApiRequestData(configuration: self.configuration),
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
    // Reads the formatting properties of a paragraph list from the document node.
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

    // Async representation of getParagraphs method
    // Reads paragraphs from the document node.
    public func getParagraphs(request : GetParagraphsRequest, callback : @escaping (_ response : ParagraphLinkCollectionResponse?, _ error : Error?) -> ()) {
        do {
            apiInvoker.invoke(
                apiRequestData: try request.createApiRequestData(configuration: self.configuration),
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
    // Reads paragraphs from the document node.
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

    // Async representation of getParagraphTabStops method
    // Reads paragraph tab stops from the document node.
    public func getParagraphTabStops(request : GetParagraphTabStopsRequest, callback : @escaping (_ response : TabStopsResponse?, _ error : Error?) -> ()) {
        do {
            apiInvoker.invoke(
                apiRequestData: try request.createApiRequestData(configuration: self.configuration),
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
    // Reads paragraph tab stops from the document node.
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

    // Async representation of getRangeText method
    // Reads range text from the document.
    public func getRangeText(request : GetRangeTextRequest, callback : @escaping (_ response : RangeTextResponse?, _ error : Error?) -> ()) {
        do {
            apiInvoker.invoke(
                apiRequestData: try request.createApiRequestData(configuration: self.configuration),
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
    // Reads range text from the document.
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
    // Reads a Run object from the paragraph.
    public func getRun(request : GetRunRequest, callback : @escaping (_ response : RunResponse?, _ error : Error?) -> ()) {
        do {
            apiInvoker.invoke(
                apiRequestData: try request.createApiRequestData(configuration: self.configuration),
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
    // Reads a Run object from the paragraph.
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
    // Reads the font properties of a Run object from the paragraph.
    public func getRunFont(request : GetRunFontRequest, callback : @escaping (_ response : FontResponse?, _ error : Error?) -> ()) {
        do {
            apiInvoker.invoke(
                apiRequestData: try request.createApiRequestData(configuration: self.configuration),
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
    // Reads the font properties of a Run object from the paragraph.
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
    // Reads Run objects from the paragraph.
    public func getRuns(request : GetRunsRequest, callback : @escaping (_ response : RunsResponse?, _ error : Error?) -> ()) {
        do {
            apiInvoker.invoke(
                apiRequestData: try request.createApiRequestData(configuration: self.configuration),
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
    // Reads Run objects from the paragraph.
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
    // Reads a section from the document.
    public func getSection(request : GetSectionRequest, callback : @escaping (_ response : SectionResponse?, _ error : Error?) -> ()) {
        do {
            apiInvoker.invoke(
                apiRequestData: try request.createApiRequestData(configuration: self.configuration),
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
    // Reads a section from the document.
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
    // Reads the page setup of a section from the document.
    public func getSectionPageSetup(request : GetSectionPageSetupRequest, callback : @escaping (_ response : SectionPageSetupResponse?, _ error : Error?) -> ()) {
        do {
            apiInvoker.invoke(
                apiRequestData: try request.createApiRequestData(configuration: self.configuration),
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
    // Reads the page setup of a section from the document.
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
    // Reads sections from the document.
    public func getSections(request : GetSectionsRequest, callback : @escaping (_ response : SectionLinkCollectionResponse?, _ error : Error?) -> ()) {
        do {
            apiInvoker.invoke(
                apiRequestData: try request.createApiRequestData(configuration: self.configuration),
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
    // Reads sections from the document.
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
    // Reads a style from the document.
    public func getStyle(request : GetStyleRequest, callback : @escaping (_ response : StyleResponse?, _ error : Error?) -> ()) {
        do {
            apiInvoker.invoke(
                apiRequestData: try request.createApiRequestData(configuration: self.configuration),
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
    // Reads a style from the document.
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
    // Reads a style from the document node.
    public func getStyleFromDocumentElement(request : GetStyleFromDocumentElementRequest, callback : @escaping (_ response : StyleResponse?, _ error : Error?) -> ()) {
        do {
            apiInvoker.invoke(
                apiRequestData: try request.createApiRequestData(configuration: self.configuration),
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
    // Reads a style from the document node.
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
    // Reads styles from the document.
    public func getStyles(request : GetStylesRequest, callback : @escaping (_ response : StylesResponse?, _ error : Error?) -> ()) {
        do {
            apiInvoker.invoke(
                apiRequestData: try request.createApiRequestData(configuration: self.configuration),
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
    // Reads styles from the document.
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
    // Reads a table from the document node.
    public func getTable(request : GetTableRequest, callback : @escaping (_ response : TableResponse?, _ error : Error?) -> ()) {
        do {
            apiInvoker.invoke(
                apiRequestData: try request.createApiRequestData(configuration: self.configuration),
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
    // Reads a table from the document node.
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
    // Reads a cell from the table row.
    public func getTableCell(request : GetTableCellRequest, callback : @escaping (_ response : TableCellResponse?, _ error : Error?) -> ()) {
        do {
            apiInvoker.invoke(
                apiRequestData: try request.createApiRequestData(configuration: self.configuration),
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
    // Reads a cell from the table row.
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
    // Reads the formatting properties of a table cell.
    public func getTableCellFormat(request : GetTableCellFormatRequest, callback : @escaping (_ response : TableCellFormatResponse?, _ error : Error?) -> ()) {
        do {
            apiInvoker.invoke(
                apiRequestData: try request.createApiRequestData(configuration: self.configuration),
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
    // Reads the formatting properties of a table cell.
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
    // Reads properties of a table from the document node.
    public func getTableProperties(request : GetTablePropertiesRequest, callback : @escaping (_ response : TablePropertiesResponse?, _ error : Error?) -> ()) {
        do {
            apiInvoker.invoke(
                apiRequestData: try request.createApiRequestData(configuration: self.configuration),
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
    // Reads properties of a table from the document node.
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

    // Async representation of getTableRow method
    // Reads a row from the table.
    public func getTableRow(request : GetTableRowRequest, callback : @escaping (_ response : TableRowResponse?, _ error : Error?) -> ()) {
        do {
            apiInvoker.invoke(
                apiRequestData: try request.createApiRequestData(configuration: self.configuration),
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
    // Reads a row from the table.
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
    // Reads the formatting properties of a table row.
    public func getTableRowFormat(request : GetTableRowFormatRequest, callback : @escaping (_ response : TableRowFormatResponse?, _ error : Error?) -> ()) {
        do {
            apiInvoker.invoke(
                apiRequestData: try request.createApiRequestData(configuration: self.configuration),
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
    // Reads the formatting properties of a table row.
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
    // Reads tables from the document node.
    public func getTables(request : GetTablesRequest, callback : @escaping (_ response : TableLinkCollectionResponse?, _ error : Error?) -> ()) {
        do {
            apiInvoker.invoke(
                apiRequestData: try request.createApiRequestData(configuration: self.configuration),
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
    // Reads tables from the document node.
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

    // Async representation of insertComment method
    // Inserts a new comment to the document.
    public func insertComment(request : InsertCommentRequest, callback : @escaping (_ response : CommentResponse?, _ error : Error?) -> ()) {
        do {
            apiInvoker.invoke(
                apiRequestData: try request.createApiRequestData(configuration: self.configuration),
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
    // Inserts a new comment to the document.
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
    // Inserts a new DrawingObject to the document node.
    public func insertDrawingObject(request : InsertDrawingObjectRequest, callback : @escaping (_ response : DrawingObjectResponse?, _ error : Error?) -> ()) {
        do {
            apiInvoker.invoke(
                apiRequestData: try request.createApiRequestData(configuration: self.configuration),
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
    // Inserts a new DrawingObject to the document node.
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

    // Async representation of insertField method
    // Inserts a new field to the document node.
    public func insertField(request : InsertFieldRequest, callback : @escaping (_ response : FieldResponse?, _ error : Error?) -> ()) {
        do {
            apiInvoker.invoke(
                apiRequestData: try request.createApiRequestData(configuration: self.configuration),
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
    // Inserts a new field to the document node.
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

    // Async representation of insertFootnote method
    // Inserts a new footnote to the document node.
    public func insertFootnote(request : InsertFootnoteRequest, callback : @escaping (_ response : FootnoteResponse?, _ error : Error?) -> ()) {
        do {
            apiInvoker.invoke(
                apiRequestData: try request.createApiRequestData(configuration: self.configuration),
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
    // Inserts a new footnote to the document node.
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

    // Async representation of insertFormField method
    // Inserts a new form field to the document node.
    public func insertFormField(request : InsertFormFieldRequest, callback : @escaping (_ response : FormFieldResponse?, _ error : Error?) -> ()) {
        do {
            apiInvoker.invoke(
                apiRequestData: try request.createApiRequestData(configuration: self.configuration),
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
    // Inserts a new form field to the document node.
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

    // Async representation of insertHeaderFooter method
    // Inserts a new HeaderFooter object to the document section.
    public func insertHeaderFooter(request : InsertHeaderFooterRequest, callback : @escaping (_ response : HeaderFooterResponse?, _ error : Error?) -> ()) {
        do {
            apiInvoker.invoke(
                apiRequestData: try request.createApiRequestData(configuration: self.configuration),
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
    // Inserts a new HeaderFooter object to the document section.
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
    // Inserts a new list to the document.
    public func insertList(request : InsertListRequest, callback : @escaping (_ response : ListResponse?, _ error : Error?) -> ()) {
        do {
            apiInvoker.invoke(
                apiRequestData: try request.createApiRequestData(configuration: self.configuration),
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
    // Inserts a new list to the document.
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
    // Inserts a new or updates an existing paragraph tab stop in the document node.
    public func insertOrUpdateParagraphTabStop(request : InsertOrUpdateParagraphTabStopRequest, callback : @escaping (_ response : TabStopsResponse?, _ error : Error?) -> ()) {
        do {
            apiInvoker.invoke(
                apiRequestData: try request.createApiRequestData(configuration: self.configuration),
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
    // Inserts a new or updates an existing paragraph tab stop in the document node.
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

    // Async representation of insertPageNumbers method
    // Inserts page numbers to the document.
    public func insertPageNumbers(request : InsertPageNumbersRequest, callback : @escaping (_ response : DocumentResponse?, _ error : Error?) -> ()) {
        do {
            apiInvoker.invoke(
                apiRequestData: try request.createApiRequestData(configuration: self.configuration),
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
    // Inserts page numbers to the document.
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
    // Inserts a new paragraph to the document node.
    public func insertParagraph(request : InsertParagraphRequest, callback : @escaping (_ response : ParagraphResponse?, _ error : Error?) -> ()) {
        do {
            apiInvoker.invoke(
                apiRequestData: try request.createApiRequestData(configuration: self.configuration),
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
    // Inserts a new paragraph to the document node.
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

    // Async representation of insertRun method
    // Inserts a new Run object to the paragraph.
    public func insertRun(request : InsertRunRequest, callback : @escaping (_ response : RunResponse?, _ error : Error?) -> ()) {
        do {
            apiInvoker.invoke(
                apiRequestData: try request.createApiRequestData(configuration: self.configuration),
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
    // Inserts a new Run object to the paragraph.
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
    // Inserts a new style to the document.
    public func insertStyle(request : InsertStyleRequest, callback : @escaping (_ response : StyleResponse?, _ error : Error?) -> ()) {
        do {
            apiInvoker.invoke(
                apiRequestData: try request.createApiRequestData(configuration: self.configuration),
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
    // Inserts a new style to the document.
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
    // Inserts a new table to the document node.
    public func insertTable(request : InsertTableRequest, callback : @escaping (_ response : TableResponse?, _ error : Error?) -> ()) {
        do {
            apiInvoker.invoke(
                apiRequestData: try request.createApiRequestData(configuration: self.configuration),
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
    // Inserts a new table to the document node.
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
    // Inserts a new cell to the table row.
    public func insertTableCell(request : InsertTableCellRequest, callback : @escaping (_ response : TableCellResponse?, _ error : Error?) -> ()) {
        do {
            apiInvoker.invoke(
                apiRequestData: try request.createApiRequestData(configuration: self.configuration),
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
    // Inserts a new cell to the table row.
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
    // Inserts a new row to the table.
    public func insertTableRow(request : InsertTableRowRequest, callback : @escaping (_ response : TableRowResponse?, _ error : Error?) -> ()) {
        do {
            apiInvoker.invoke(
                apiRequestData: try request.createApiRequestData(configuration: self.configuration),
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
    // Inserts a new row to the table.
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

    // Async representation of insertWatermarkImage method
    // Inserts a new watermark image to the document.
    public func insertWatermarkImage(request : InsertWatermarkImageRequest, callback : @escaping (_ response : DocumentResponse?, _ error : Error?) -> ()) {
        do {
            apiInvoker.invoke(
                apiRequestData: try request.createApiRequestData(configuration: self.configuration),
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
    // Inserts a new watermark image to the document.
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
    // Inserts a new watermark text to the document.
    public func insertWatermarkText(request : InsertWatermarkTextRequest, callback : @escaping (_ response : DocumentResponse?, _ error : Error?) -> ()) {
        do {
            apiInvoker.invoke(
                apiRequestData: try request.createApiRequestData(configuration: self.configuration),
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
    // Inserts a new watermark text to the document.
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
    // Downloads a document from the Web using URL and saves it to cloud storage in the specified format.
    public func loadWebDocument(request : LoadWebDocumentRequest, callback : @escaping (_ response : SaveResponse?, _ error : Error?) -> ()) {
        do {
            apiInvoker.invoke(
                apiRequestData: try request.createApiRequestData(configuration: self.configuration),
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
    // Downloads a document from the Web using URL and saves it to cloud storage in the specified format.
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
            apiInvoker.invoke(
                apiRequestData: try request.createApiRequestData(configuration: self.configuration),
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
            apiInvoker.invoke(
                apiRequestData: try request.createApiRequestData(configuration: self.configuration),
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

    // Async representation of optimizeDocument method
    // Applies document content optimization options, specific to a particular versions of Microsoft Word.
    public func optimizeDocument(request : OptimizeDocumentRequest, callback : @escaping (_ error : Error?) -> ()) {
        do {
            apiInvoker.invoke(
                apiRequestData: try request.createApiRequestData(configuration: self.configuration),
                callback: { response, error in
                    callback(error);
                }
            );
        }
        catch let error {
            callback(error);
        }
    }

    // Sync representation of optimizeDocument method
    // Applies document content optimization options, specific to a particular versions of Microsoft Word.
    public func optimizeDocument(request : OptimizeDocumentRequest) throws {
        let semaphore = DispatchSemaphore(value: 0);
        var responseError : Error? = nil;
        self.optimizeDocument(request : request, callback: { error in
            responseError = error;
            semaphore.signal();
        });

        _ = semaphore.wait();

        if (responseError != nil) {
            throw responseError!;
        }
    }

    // Async representation of protectDocument method
    // Adds protection to the document.
    public func protectDocument(request : ProtectDocumentRequest, callback : @escaping (_ response : ProtectionDataResponse?, _ error : Error?) -> ()) {
        do {
            apiInvoker.invoke(
                apiRequestData: try request.createApiRequestData(configuration: self.configuration),
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
    // Adds protection to the document.
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
    // Rejects all revisions in the document.
    public func rejectAllRevisions(request : RejectAllRevisionsRequest, callback : @escaping (_ response : RevisionsModificationResponse?, _ error : Error?) -> ()) {
        do {
            apiInvoker.invoke(
                apiRequestData: try request.createApiRequestData(configuration: self.configuration),
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
    // Rejects all revisions in the document.
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
    // Removes a range from the document.
    public func removeRange(request : RemoveRangeRequest, callback : @escaping (_ response : DocumentResponse?, _ error : Error?) -> ()) {
        do {
            apiInvoker.invoke(
                apiRequestData: try request.createApiRequestData(configuration: self.configuration),
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
    // Removes a range from the document.
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
    // Renders a DrawingObject to the specified format.
    public func renderDrawingObject(request : RenderDrawingObjectRequest, callback : @escaping (_ response : Data?, _ error : Error?) -> ()) {
        do {
            apiInvoker.invoke(
                apiRequestData: try request.createApiRequestData(configuration: self.configuration),
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
    // Renders a DrawingObject to the specified format.
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

    // Async representation of renderMathObject method
    // Renders an OfficeMath object to the specified format.
    public func renderMathObject(request : RenderMathObjectRequest, callback : @escaping (_ response : Data?, _ error : Error?) -> ()) {
        do {
            apiInvoker.invoke(
                apiRequestData: try request.createApiRequestData(configuration: self.configuration),
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
    // Renders an OfficeMath object to the specified format.
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

    // Async representation of renderPage method
    // Renders a page to the specified format.
    public func renderPage(request : RenderPageRequest, callback : @escaping (_ response : Data?, _ error : Error?) -> ()) {
        do {
            apiInvoker.invoke(
                apiRequestData: try request.createApiRequestData(configuration: self.configuration),
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
    // Renders a page to the specified format.
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
    // Renders a paragraph to the specified format.
    public func renderParagraph(request : RenderParagraphRequest, callback : @escaping (_ response : Data?, _ error : Error?) -> ()) {
        do {
            apiInvoker.invoke(
                apiRequestData: try request.createApiRequestData(configuration: self.configuration),
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
    // Renders a paragraph to the specified format.
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

    // Async representation of renderTable method
    // Renders a table to the specified format.
    public func renderTable(request : RenderTableRequest, callback : @escaping (_ response : Data?, _ error : Error?) -> ()) {
        do {
            apiInvoker.invoke(
                apiRequestData: try request.createApiRequestData(configuration: self.configuration),
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
    // Renders a table to the specified format.
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

    // Async representation of replaceText method
    // Replaces text in the document.
    public func replaceText(request : ReplaceTextRequest, callback : @escaping (_ response : ReplaceTextResponse?, _ error : Error?) -> ()) {
        do {
            apiInvoker.invoke(
                apiRequestData: try request.createApiRequestData(configuration: self.configuration),
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
    // Replaces text in the document.
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
    // Replaces a range with text in the document.
    public func replaceWithText(request : ReplaceWithTextRequest, callback : @escaping (_ response : DocumentResponse?, _ error : Error?) -> ()) {
        do {
            apiInvoker.invoke(
                apiRequestData: try request.createApiRequestData(configuration: self.configuration),
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
    // Replaces a range with text in the document.
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
    // Clears the font cache.
    public func resetCache(request : ResetCacheRequest, callback : @escaping (_ error : Error?) -> ()) {
        do {
            apiInvoker.invoke(
                apiRequestData: try request.createApiRequestData(configuration: self.configuration),
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
    // Clears the font cache.
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
    // Converts a document in cloud storage to the specified format.
    public func saveAs(request : SaveAsRequest, callback : @escaping (_ response : SaveResponse?, _ error : Error?) -> ()) {
        do {
            apiInvoker.invoke(
                apiRequestData: try request.createApiRequestData(configuration: self.configuration),
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
    // Converts a document in cloud storage to the specified format.
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
    // Saves a range as a new document.
    public func saveAsRange(request : SaveAsRangeRequest, callback : @escaping (_ response : DocumentResponse?, _ error : Error?) -> ()) {
        do {
            apiInvoker.invoke(
                apiRequestData: try request.createApiRequestData(configuration: self.configuration),
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
    // Saves a range as a new document.
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
    // Converts a document in cloud storage to TIFF format using detailed conversion settings.
    public func saveAsTiff(request : SaveAsTiffRequest, callback : @escaping (_ response : SaveResponse?, _ error : Error?) -> ()) {
        do {
            apiInvoker.invoke(
                apiRequestData: try request.createApiRequestData(configuration: self.configuration),
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
    // Converts a document in cloud storage to TIFF format using detailed conversion settings.
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
    // Searches text, specified by the regular expression, in the document.
    public func search(request : SearchRequest, callback : @escaping (_ response : SearchResponse?, _ error : Error?) -> ()) {
        do {
            apiInvoker.invoke(
                apiRequestData: try request.createApiRequestData(configuration: self.configuration),
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
    // Searches text, specified by the regular expression, in the document.
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
    // Splits a document into parts and saves them in the specified format.
    public func splitDocument(request : SplitDocumentRequest, callback : @escaping (_ response : SplitDocumentResponse?, _ error : Error?) -> ()) {
        do {
            apiInvoker.invoke(
                apiRequestData: try request.createApiRequestData(configuration: self.configuration),
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
    // Splits a document into parts and saves them in the specified format.
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
    // Removes protection from the document.
    public func unprotectDocument(request : UnprotectDocumentRequest, callback : @escaping (_ response : ProtectionDataResponse?, _ error : Error?) -> ()) {
        do {
            apiInvoker.invoke(
                apiRequestData: try request.createApiRequestData(configuration: self.configuration),
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
    // Removes protection from the document.
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
    // Updates a bookmark in the document.
    public func updateBookmark(request : UpdateBookmarkRequest, callback : @escaping (_ response : BookmarkResponse?, _ error : Error?) -> ()) {
        do {
            apiInvoker.invoke(
                apiRequestData: try request.createApiRequestData(configuration: self.configuration),
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
    // Updates a bookmark in the document.
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
    // The 'nodePath' parameter should refer to a paragraph, a cell or a row.
    public func updateBorder(request : UpdateBorderRequest, callback : @escaping (_ response : BorderResponse?, _ error : Error?) -> ()) {
        do {
            apiInvoker.invoke(
                apiRequestData: try request.createApiRequestData(configuration: self.configuration),
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
    // The 'nodePath' parameter should refer to a paragraph, a cell or a row.
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
    // Updates a comment in the document.
    public func updateComment(request : UpdateCommentRequest, callback : @escaping (_ response : CommentResponse?, _ error : Error?) -> ()) {
        do {
            apiInvoker.invoke(
                apiRequestData: try request.createApiRequestData(configuration: self.configuration),
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
    // Updates a comment in the document.
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
    // Updates a DrawingObject in the document node.
    public func updateDrawingObject(request : UpdateDrawingObjectRequest, callback : @escaping (_ response : DrawingObjectResponse?, _ error : Error?) -> ()) {
        do {
            apiInvoker.invoke(
                apiRequestData: try request.createApiRequestData(configuration: self.configuration),
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
    // Updates a DrawingObject in the document node.
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

    // Async representation of updateField method
    // Updates a field in the document node.
    public func updateField(request : UpdateFieldRequest, callback : @escaping (_ response : FieldResponse?, _ error : Error?) -> ()) {
        do {
            apiInvoker.invoke(
                apiRequestData: try request.createApiRequestData(configuration: self.configuration),
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
    // Updates a field in the document node.
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
    // Reevaluates field values in the document.
    public func updateFields(request : UpdateFieldsRequest, callback : @escaping (_ response : DocumentResponse?, _ error : Error?) -> ()) {
        do {
            apiInvoker.invoke(
                apiRequestData: try request.createApiRequestData(configuration: self.configuration),
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
    // Reevaluates field values in the document.
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
    // Updates a footnote in the document node.
    public func updateFootnote(request : UpdateFootnoteRequest, callback : @escaping (_ response : FootnoteResponse?, _ error : Error?) -> ()) {
        do {
            apiInvoker.invoke(
                apiRequestData: try request.createApiRequestData(configuration: self.configuration),
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
    // Updates a footnote in the document node.
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

    // Async representation of updateFormField method
    // Updates a form field in the document node.
    public func updateFormField(request : UpdateFormFieldRequest, callback : @escaping (_ response : FormFieldResponse?, _ error : Error?) -> ()) {
        do {
            apiInvoker.invoke(
                apiRequestData: try request.createApiRequestData(configuration: self.configuration),
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
    // Updates a form field in the document node.
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

    // Async representation of updateList method
    // Updates a list in the document.
    public func updateList(request : UpdateListRequest, callback : @escaping (_ response : ListResponse?, _ error : Error?) -> ()) {
        do {
            apiInvoker.invoke(
                apiRequestData: try request.createApiRequestData(configuration: self.configuration),
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
    // Updates a list in the document.
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
    // Updates the level of a List element in the document.
    public func updateListLevel(request : UpdateListLevelRequest, callback : @escaping (_ response : ListResponse?, _ error : Error?) -> ()) {
        do {
            apiInvoker.invoke(
                apiRequestData: try request.createApiRequestData(configuration: self.configuration),
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
    // Updates the level of a List element in the document.
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
    // Updates the formatting properties of a paragraph in the document node.
    public func updateParagraphFormat(request : UpdateParagraphFormatRequest, callback : @escaping (_ response : ParagraphFormatResponse?, _ error : Error?) -> ()) {
        do {
            apiInvoker.invoke(
                apiRequestData: try request.createApiRequestData(configuration: self.configuration),
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
    // Updates the formatting properties of a paragraph in the document node.
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

    // Async representation of updateParagraphListFormat method
    // Updates the formatting properties of a paragraph list in the document node.
    public func updateParagraphListFormat(request : UpdateParagraphListFormatRequest, callback : @escaping (_ response : ParagraphListFormatResponse?, _ error : Error?) -> ()) {
        do {
            apiInvoker.invoke(
                apiRequestData: try request.createApiRequestData(configuration: self.configuration),
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
    // Updates the formatting properties of a paragraph list in the document node.
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

    // Async representation of updateRun method
    // Updates a Run object in the paragraph.
    public func updateRun(request : UpdateRunRequest, callback : @escaping (_ response : RunResponse?, _ error : Error?) -> ()) {
        do {
            apiInvoker.invoke(
                apiRequestData: try request.createApiRequestData(configuration: self.configuration),
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
    // Updates a Run object in the paragraph.
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
    // Updates the font properties of a Run object in the paragraph.
    public func updateRunFont(request : UpdateRunFontRequest, callback : @escaping (_ response : FontResponse?, _ error : Error?) -> ()) {
        do {
            apiInvoker.invoke(
                apiRequestData: try request.createApiRequestData(configuration: self.configuration),
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
    // Updates the font properties of a Run object in the paragraph.
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
    // Updates the page setup of a section in the document.
    public func updateSectionPageSetup(request : UpdateSectionPageSetupRequest, callback : @escaping (_ response : SectionPageSetupResponse?, _ error : Error?) -> ()) {
        do {
            apiInvoker.invoke(
                apiRequestData: try request.createApiRequestData(configuration: self.configuration),
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
    // Updates the page setup of a section in the document.
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
    // Updates a style in the document.
    public func updateStyle(request : UpdateStyleRequest, callback : @escaping (_ response : StyleResponse?, _ error : Error?) -> ()) {
        do {
            apiInvoker.invoke(
                apiRequestData: try request.createApiRequestData(configuration: self.configuration),
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
    // Updates a style in the document.
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
    // Updates the formatting properties of a cell in the table row.
    public func updateTableCellFormat(request : UpdateTableCellFormatRequest, callback : @escaping (_ response : TableCellFormatResponse?, _ error : Error?) -> ()) {
        do {
            apiInvoker.invoke(
                apiRequestData: try request.createApiRequestData(configuration: self.configuration),
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
    // Updates the formatting properties of a cell in the table row.
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
    // Updates properties of a table in the document node.
    public func updateTableProperties(request : UpdateTablePropertiesRequest, callback : @escaping (_ response : TablePropertiesResponse?, _ error : Error?) -> ()) {
        do {
            apiInvoker.invoke(
                apiRequestData: try request.createApiRequestData(configuration: self.configuration),
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
    // Updates properties of a table in the document node.
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

    // Async representation of updateTableRowFormat method
    // Updates the formatting properties of a table row.
    public func updateTableRowFormat(request : UpdateTableRowFormatRequest, callback : @escaping (_ response : TableRowFormatResponse?, _ error : Error?) -> ()) {
        do {
            apiInvoker.invoke(
                apiRequestData: try request.createApiRequestData(configuration: self.configuration),
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
    // Updates the formatting properties of a table row.
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
            apiInvoker.invoke(
                apiRequestData: try request.createApiRequestData(configuration: self.configuration),
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

    // Async representation of batch method
    public func batch(requests : [WordsApiRequest], callback : @escaping (_ response : [Any?]?, _ error : Error?) -> ()) {
        do {
            let apiRequestData = try requests.map { try $0.createApiRequestData(configuration: self.configuration) };
            let formParams = try apiRequestData.map { RequestFormParam(name: nil, body: try $0.toBatchPart(configuration: self.configuration), contentType: "application/http; msgtype=request") };
            let apiBatchUrl = (try self.configuration.getApiRootUrl()).appendingPathComponent("/words/batch");
            var apiBatchRequestData = WordsApiRequestData(url: apiBatchUrl, method: "PUT");
            apiBatchRequestData.setBody(formParams: formParams);
            apiInvoker.invoke(
                apiRequestData: apiBatchRequestData,
                callback: { response, error in
                    if (response != nil) {
                        do {
                            let parts = try ObjectSerializer.parseMultipart(data: response!);
                            if (parts.count != requests.count) {
                                throw WordsApiError.invalidMultipartResponse(message: "Parts count of multipart request and response are mismatch.");
                            }

                            var result = [Any?]();
                            for (index, part) in parts.enumerated() {
                                result.append(try ObjectSerializer.deserializeBatchPart(request: requests[index], partData: part));
                            }

                            callback(result, nil);
                        }
                        catch let error {
                            callback(nil, error);
                        }
                    }
                    else {
                        callback(nil, error);
                    }
                }
            );
        }
        catch let error {
            callback(nil, error);
        }
    }

    public func batch(requests : [WordsApiRequest]) throws -> [Any?] {
        let semaphore = DispatchSemaphore(value: 0);
        var responseObject : [Any?]? = nil;
        var responseError : Error? = nil;
        self.batch(requests : requests, callback: { response, error in
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
