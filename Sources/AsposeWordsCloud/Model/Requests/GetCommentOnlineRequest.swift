/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="GetCommentOnlineRequest.swift">
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

// Request model for getCommentOnline operation.
@available(macOS 10.12, iOS 10.3, watchOS 3.3, tvOS 12.0, *)
public class GetCommentOnlineRequest : WordsApiRequest {
    private let document : InputStream;
    private let commentIndex : Int;
    private let loadEncoding : String?;
    private let password : String?;
    private let encryptedPassword : String?;

    private enum CodingKeys: String, CodingKey {
        case document;
        case commentIndex;
        case loadEncoding;
        case password;
        case encryptedPassword;
        case invalidCodingKey;
    }

    // Initializes a new instance of the GetCommentOnlineRequest class.
    public init(document : InputStream, commentIndex : Int, loadEncoding : String? = nil, password : String? = nil, encryptedPassword : String? = nil) {
        self.document = document;
        self.commentIndex = commentIndex;
        self.loadEncoding = loadEncoding;
        self.password = password;
        self.encryptedPassword = encryptedPassword;
    }

    // The document.
    public func getDocument() -> InputStream {
        return self.document;
    }

    // The index of the comment.
    public func getCommentIndex() -> Int {
        return self.commentIndex;
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

    // Creates the api request data
    public func createApiRequestData(apiInvoker : ApiInvoker, configuration : Configuration) throws -> WordsApiRequestData {
         var rawPath = "/words/online/get/comments/{commentIndex}";
         rawPath = rawPath.replacingOccurrences(of: "{commentIndex}", with: try ObjectSerializer.serializeToString(value: self.getCommentIndex()));

         rawPath = rawPath.replacingOccurrences(of: "//", with: "/");

         let urlPath = (try configuration.getApiRootUrl()).appendingPathComponent(rawPath);
         var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
         var queryItems : [URLQueryItem] = [];
         if (self.getLoadEncoding() != nil) {
         #if os(Linux)queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serializeToString(value: self.getLoadEncoding()!)));
         #elsequeryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serializeToString(value: self.getLoadEncoding()!)));
         #endif        }
         if (self.getPassword() != nil) {
         #if os(Linux)queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serializeToString(value: self.getPassword()!)));
         #elsequeryItems.append(URLQueryItem(name: apiInvoker.isEncryptionAllowed() ? "encryptedPassword" : "password", value: try apiInvoker.encryptString(value: self.getPassword()!)));
         #endif        }
         if (self.getEncryptedPassword() != nil) {
         #if os(Linux)queryItems.append(URLQueryItem(name: "encryptedPassword", value: try ObjectSerializer.serializeToString(value: self.getEncryptedPassword()!)));
         #elsequeryItems.append(URLQueryItem(name: "encryptedPassword", value: try ObjectSerializer.serializeToString(value: self.getEncryptedPassword()!)));
         #endif        }
         if (queryItems.count > 0) {
             urlBuilder.queryItems = queryItems;
         }
         var formParams : [RequestFormParam] = [];
         formParams.append(RequestFormParam(name: "document", body: try ObjectSerializer.serializeFile(value: self.getDocument()), contentType: "application/octet-stream"));


         var result = WordsApiRequestData(url: urlBuilder.url!, method: "PUT");
         result.setBody(formParams: formParams);
         return result;
    }

    // Deserialize response of this request
    public func deserializeResponse(data : Data) throws -> Any? {
        return try ObjectSerializer.deserialize(type: CommentResponse.self, from: data);
    }
}
