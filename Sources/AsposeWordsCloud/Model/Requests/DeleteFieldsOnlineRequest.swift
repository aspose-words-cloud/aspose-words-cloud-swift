/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="DeleteFieldsOnlineRequest.swift">
 *   Copyright (c) 2021 Aspose.Words for Cloud
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

// Request model for deleteFieldsOnline operation.
public class DeleteFieldsOnlineRequest : WordsApiRequest {
    private let document : InputStream;
    private let nodePath : String?;
    private let loadEncoding : String?;
    private let password : String?;
    private let destFileName : String?;
    private let revisionAuthor : String?;
    private let revisionDateTime : String?;

    private enum CodingKeys: String, CodingKey {
        case document;
        case nodePath;
        case loadEncoding;
        case password;
        case destFileName;
        case revisionAuthor;
        case revisionDateTime;
        case invalidCodingKey;
    }

    // Initializes a new instance of the DeleteFieldsOnlineRequest class.
    public init(document : InputStream, nodePath : String? = nil, loadEncoding : String? = nil, password : String? = nil, destFileName : String? = nil, revisionAuthor : String? = nil, revisionDateTime : String? = nil) {
        self.document = document;
        self.nodePath = nodePath;
        self.loadEncoding = loadEncoding;
        self.password = password;
        self.destFileName = destFileName;
        self.revisionAuthor = revisionAuthor;
        self.revisionDateTime = revisionDateTime;
    }

    // The document.
    public func getDocument() -> InputStream {
        return self.document;
    }

    // The path to the node in the document tree.
    public func getNodePath() -> String? {
        return self.nodePath;
    }

    // Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    public func getLoadEncoding() -> String? {
        return self.loadEncoding;
    }

    // Password for opening an encrypted document.
    public func getPassword() -> String? {
        return self.password;
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

    // Creates the api request data
    public func createApiRequestData(apiInvoker : ApiInvoker, configuration : Configuration) throws -> WordsApiRequestData {
         var rawPath = "/words/online/delete/{nodePath}/fields";
         if (self.getNodePath() != nil) {
             rawPath = rawPath.replacingOccurrences(of: "{nodePath}", with: try ObjectSerializer.serializeToString(value: self.getNodePath()!));
         }
         else {
             rawPath = rawPath.replacingOccurrences(of: "{nodePath}", with: "");
         }

         rawPath = rawPath.replacingOccurrences(of: "//", with: "/");

         let urlPath = (try configuration.getApiRootUrl()).appendingPathComponent(rawPath);
         var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
         var queryItems : [URLQueryItem] = [];
         if (self.getLoadEncoding() != nil) {
         queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serializeToString(value: self.getLoadEncoding()!)));
         }
         if (self.getPassword() != nil) {
         queryItems.append(URLQueryItem(name: "encryptedPassword", value: try apiInvoker.encryptString(value: self.getPassword()!)));
         }
         if (self.getDestFileName() != nil) {
         queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serializeToString(value: self.getDestFileName()!)));
         }
         if (self.getRevisionAuthor() != nil) {
         queryItems.append(URLQueryItem(name: "revisionAuthor", value: try ObjectSerializer.serializeToString(value: self.getRevisionAuthor()!)));
         }
         if (self.getRevisionDateTime() != nil) {
         queryItems.append(URLQueryItem(name: "revisionDateTime", value: try ObjectSerializer.serializeToString(value: self.getRevisionDateTime()!)));
         }
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
        return data;
    }
}
