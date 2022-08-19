/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="InsertRunOnlineRequest.swift">
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

// Request model for insertRunOnline operation.
@available(macOS 10.12, iOS 10.3, watchOS 3.3, tvOS 12.0, *)
public class InsertRunOnlineRequest : WordsApiRequest {
    private let document : InputStream;
    private let paragraphPath : String;
    private let run : RunInsert;
    private let loadEncoding : String?;
    private let password : String?;
    private let encryptedPassword : String?;
    private let destFileName : String?;
    private let revisionAuthor : String?;
    private let revisionDateTime : String?;
    private let insertBeforeNode : String?;

    private enum CodingKeys: String, CodingKey {
        case document;
        case paragraphPath;
        case run;
        case loadEncoding;
        case password;
        case encryptedPassword;
        case destFileName;
        case revisionAuthor;
        case revisionDateTime;
        case insertBeforeNode;
        case invalidCodingKey;
    }

    // Initializes a new instance of the InsertRunOnlineRequest class.
    public init(document : InputStream, paragraphPath : String, run : RunInsert, loadEncoding : String? = nil, password : String? = nil, encryptedPassword : String? = nil, destFileName : String? = nil, revisionAuthor : String? = nil, revisionDateTime : String? = nil, insertBeforeNode : String? = nil) {
        self.document = document;
        self.paragraphPath = paragraphPath;
        self.run = run;
        self.loadEncoding = loadEncoding;
        self.password = password;
        self.encryptedPassword = encryptedPassword;
        self.destFileName = destFileName;
        self.revisionAuthor = revisionAuthor;
        self.revisionDateTime = revisionDateTime;
        self.insertBeforeNode = insertBeforeNode;
    }

    // The document.
    public func getDocument() -> InputStream {
        return self.document;
    }

    // The path to the paragraph in the document tree.
    public func getParagraphPath() -> String {
        return self.paragraphPath;
    }

    // Run data.
    public func getRun() -> RunInsert {
        return self.run;
    }

    // Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    public func getLoadEncoding() -> String? {
        return self.loadEncoding;
    }

    // Password of protected Word document. Use the parameter to pass a password via SDK. SDK encrypts it automatically. We don't recommend to use the parameter to pass a plain password for direct call of API.
    public func getPassword() -> String? {
        return self.password;
    }

    // Password of protected Word document. Use the parameter to pass an encrypted password for direct calls of API. See SDK code for encyption details.
    public func getEncryptedPassword() -> String? {
        return self.encryptedPassword;
    }

    // Result path of the document after the operation. If this parameter is omitted then result of the operation will be saved as the source document.
    public func getDestFileName() -> String? {
        return self.destFileName;
    }

    // Initials of the author to use for revisions.If you set this parameter and then make some changes to the document programmatically, save the document and later open the document in MS Word you will see these changes as revisions.
    public func getRevisionAuthor() -> String? {
        return self.revisionAuthor;
    }

    // The date and time to use for revisions.
    public func getRevisionDateTime() -> String? {
        return self.revisionDateTime;
    }

    // The index of the node. A new Run object will be inserted before the node with the specified node Id.
    public func getInsertBeforeNode() -> String? {
        return self.insertBeforeNode;
    }

    // Creates the api request data
    public func createApiRequestData(apiInvoker : ApiInvoker, configuration : Configuration) throws -> WordsApiRequestData {
         var rawPath = "/words/online/post/{paragraphPath}/runs";
         rawPath = rawPath.replacingOccurrences(of: "{paragraphPath}", with: try ObjectSerializer.serializeToString(value: self.getParagraphPath()));

         rawPath = rawPath.replacingOccurrences(of: "//", with: "/");

         let urlPath = (try configuration.getApiRootUrl()).appendingPathComponent(rawPath);
         var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
         var queryItems : [URLQueryItem] = [];
             if (self.getLoadEncoding() != nil) {

         #if os(Linux) 
                     queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serializeToString(value: self.getLoadEncoding()!)));

         #else
                     queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serializeToString(value: self.getLoadEncoding()!)));

         #endif        
             }


             if (self.getPassword() != nil) {

         #if os(Linux) 
                     queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serializeToString(value: self.getPassword()!)));

         #else
                     queryItems.append(URLQueryItem(name: "encryptedPassword", value: try apiInvoker.encryptString(value: self.getPassword()!)));

         #endif        
             }


             if (self.getEncryptedPassword() != nil) {

         #if os(Linux) 
                     queryItems.append(URLQueryItem(name: "encryptedPassword", value: try ObjectSerializer.serializeToString(value: self.getEncryptedPassword()!)));

         #else
                     queryItems.append(URLQueryItem(name: "encryptedPassword", value: try ObjectSerializer.serializeToString(value: self.getEncryptedPassword()!)));

         #endif        
             }


             if (self.getDestFileName() != nil) {

         #if os(Linux) 
                     queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serializeToString(value: self.getDestFileName()!)));

         #else
                     queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serializeToString(value: self.getDestFileName()!)));

         #endif        
             }


             if (self.getRevisionAuthor() != nil) {

         #if os(Linux) 
                     queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serializeToString(value: self.getRevisionAuthor()!)));

         #else
                     queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serializeToString(value: self.getRevisionAuthor()!)));

         #endif        
             }


             if (self.getRevisionDateTime() != nil) {

         #if os(Linux) 
                     queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serializeToString(value: self.getRevisionDateTime()!)));

         #else
                     queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serializeToString(value: self.getRevisionDateTime()!)));

         #endif        
             }


             if (self.getInsertBeforeNode() != nil) {

         #if os(Linux) 
                     queryItems.append(URLQueryItem(name: "insertBeforeNode", value: try ObjectSerializer.serializeToString(value: self.getInsertBeforeNode()!)));

         #else
                     queryItems.append(URLQueryItem(name: "insertBeforeNode", value: try ObjectSerializer.serializeToString(value: self.getInsertBeforeNode()!)));

         #endif        
             }

         if (queryItems.count > 0) {
             urlBuilder.queryItems = queryItems;
         }
         var formParams = [RequestFormParam]();
         var requestFilesContent = [FileContent]();
         formParams.append(RequestFormParam(name: "document", body: try ObjectSerializer.serializeFile(value: self.getDocument()), contentType: "application/octet-stream"));

         formParams.append(RequestFormParam(name: "run", body: try ObjectSerializer.serialize(value: self.getRun()), contentType: "application/json"));
         self.getRun().collectFilesContent(resultFilesContent: requestFilesContent);

         for requestFileContent in requestFilesContent {
             formParams.append(RequestFormParam(name: requestFileContent.id, filename: requestFileContent.filename, body: try ObjectSerializer.serializeFile(value: requestFileContent.content), contentType: "application/octet-stream"));
         }

         var result = WordsApiRequestData(url: urlBuilder.url!, method: "PUT");
         if (formParams.count > 0) {
             result.setBody(formParams: formParams);
         }
         return result;
    }

    // Deserialize response of this request
    public func deserializeResponse(data : Data, headers : [String: String]) throws -> Any? {
        let multipart = try ObjectSerializer.parseMultipart(data: data);
        return InsertRunOnlineResponse(
            model: try ObjectSerializer.deserialize(
                type: RunResponse.self,
                from: (try ObjectSerializer.getMultipartByName(multipart: multipart, name: "Model")).getBody()
            ),
            document: try ObjectSerializer.parseFilesCollection(part: try ObjectSerializer.getMultipartByName(multipart: multipart, name: "Document"))
        );
    }
}
