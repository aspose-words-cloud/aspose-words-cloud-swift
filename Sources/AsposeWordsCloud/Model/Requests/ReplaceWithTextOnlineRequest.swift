/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="ReplaceWithTextOnlineRequest.swift">
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

// Request model for replaceWithTextOnline operation.
@available(macOS 10.12, iOS 10.3, watchOS 3.3, tvOS 12.0, *)
public class ReplaceWithTextOnlineRequest : WordsApiRequest {
    private let document : InputStream;
    private let rangeStartIdentifier : String;
    private let rangeText : ReplaceRange;
    private let rangeEndIdentifier : String?;
    private let loadEncoding : String?;
    private let password : String?;
    private let encryptedPassword : String?;
    private let destFileName : String?;

    private enum CodingKeys: String, CodingKey {
        case document;
        case rangeStartIdentifier;
        case rangeText;
        case rangeEndIdentifier;
        case loadEncoding;
        case password;
        case encryptedPassword;
        case destFileName;
        case invalidCodingKey;
    }

    // Initializes a new instance of the ReplaceWithTextOnlineRequest class.
    public init(document : InputStream, rangeStartIdentifier : String, rangeText : ReplaceRange, rangeEndIdentifier : String? = nil, loadEncoding : String? = nil, password : String? = nil, encryptedPassword : String? = nil, destFileName : String? = nil) {
        self.document = document;
        self.rangeStartIdentifier = rangeStartIdentifier;
        self.rangeText = rangeText;
        self.rangeEndIdentifier = rangeEndIdentifier;
        self.loadEncoding = loadEncoding;
        self.password = password;
        self.encryptedPassword = encryptedPassword;
        self.destFileName = destFileName;
    }

    // The document.
    public func getDocument() -> InputStream {
        return self.document;
    }

    // The range start identifier.
    public func getRangeStartIdentifier() -> String {
        return self.rangeStartIdentifier;
    }

    // Model with text for replacement.
    public func getRangeText() -> ReplaceRange {
        return self.rangeText;
    }

    // The range end identifier.
    public func getRangeEndIdentifier() -> String? {
        return self.rangeEndIdentifier;
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

    // Creates the api request data
    public func createApiRequestData(apiInvoker : ApiInvoker, configuration : Configuration) throws -> WordsApiRequestData {
         var rawPath = "/words/online/post/range/{rangeStartIdentifier}/{rangeEndIdentifier}";
         rawPath = rawPath.replacingOccurrences(of: "{rangeStartIdentifier}", with: try ObjectSerializer.serializeToString(value: self.getRangeStartIdentifier()));

         if (self.getRangeEndIdentifier() != nil) {
             rawPath = rawPath.replacingOccurrences(of: "{rangeEndIdentifier}", with: try ObjectSerializer.serializeToString(value: self.getRangeEndIdentifier()!));
         }
         else {
             rawPath = rawPath.replacingOccurrences(of: "{rangeEndIdentifier}", with: "");
         }

         rawPath = rawPath.replacingOccurrences(of: "//", with: "/");

         let urlPath = (try configuration.getApiRootUrl()).appendingPathComponent(rawPath);
         var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
         var queryItems : [URLQueryItem] = [];
         if (self.getLoadEncoding() != nil) {
         queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serializeToString(value: self.getLoadEncoding()!)));
         }
         if (self.getPassword() != nil) {
         queryItems.append(URLQueryItem(name: apiInvoker.isEncryptionAllowed() ? "encryptedPassword" : "password", value: try apiInvoker.encryptString(value: self.getPassword()!)));
         }
         if (self.getEncryptedPassword() != nil) {
         queryItems.append(URLQueryItem(name: "encryptedPassword", value: try ObjectSerializer.serializeToString(value: self.getEncryptedPassword()!)));
         }
         if (self.getDestFileName() != nil) {
         queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serializeToString(value: self.getDestFileName()!)));
         }
         if (queryItems.count > 0) {
             urlBuilder.queryItems = queryItems;
         }
         var formParams : [RequestFormParam] = [];
         formParams.append(RequestFormParam(name: "document", body: try ObjectSerializer.serializeFile(value: self.getDocument()), contentType: "application/octet-stream"));

         formParams.append(RequestFormParam(name: "rangeText", body: try ObjectSerializer.serialize(value: self.getRangeText()), contentType: "application/json"));


         var result = WordsApiRequestData(url: urlBuilder.url!, method: "PUT");
         result.setBody(formParams: formParams);
         return result;
    }

    // Deserialize response of this request
    public func deserializeResponse(data : Data, headers : [String: String]) throws -> Any? {
        let multipart = try ObjectSerializer.parseMultipart(data: data);
        return ReplaceWithTextOnlineResponse(
            model: try ObjectSerializer.deserialize(
                type: DocumentResponse.self,
                from: (try ObjectSerializer.getMultipartByName(multipart: multipart, name: "Model")).getBody()
            ),
            document: try ObjectSerializer.parseFilesCollection(part: try ObjectSerializer.getMultipartByName(multipart: multipart, name: "Document"))
        );
    }
}
