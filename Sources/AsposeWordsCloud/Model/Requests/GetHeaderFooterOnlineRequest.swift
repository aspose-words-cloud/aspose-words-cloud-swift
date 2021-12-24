/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="GetHeaderFooterOnlineRequest.swift">
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

// Request model for getHeaderFooterOnline operation.
@available(macOS 10.12, iOS 10.3, watchOS 3.3, tvOS 12.0, *)
public class GetHeaderFooterOnlineRequest : WordsApiRequest {
    private let document : InputStream;
    private let headerFooterIndex : Int;
    private let loadEncoding : String?;
    private let password : String?;
    private let encryptedPassword : String?;
    private let filterByType : String?;

    private enum CodingKeys: String, CodingKey {
        case document;
        case headerFooterIndex;
        case loadEncoding;
        case password;
        case encryptedPassword;
        case filterByType;
        case invalidCodingKey;
    }

    // Initializes a new instance of the GetHeaderFooterOnlineRequest class.
    public init(document : InputStream, headerFooterIndex : Int, loadEncoding : String? = nil, password : String? = nil, encryptedPassword : String? = nil, filterByType : String? = nil) {
        self.document = document;
        self.headerFooterIndex = headerFooterIndex;
        self.loadEncoding = loadEncoding;
        self.password = password;
        self.encryptedPassword = encryptedPassword;
        self.filterByType = filterByType;
    }

    // The document.
    public func getDocument() -> InputStream {
        return self.document;
    }

    // The index of the HeaderFooter object.
    public func getHeaderFooterIndex() -> Int {
        return self.headerFooterIndex;
    }

    // Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    public func getLoadEncoding() -> String? {
        return self.loadEncoding;
    }

    // Password for opening an encrypted document. The password is provided as is (obsolete).
    public func getPassword() -> String? {
        return self.password;
    }

    // Password for opening an encrypted document. The password must be encrypted on RSA public key provided by GetPublicKey() method and then encoded as base64 string.
    public func getEncryptedPassword() -> String? {
        return self.encryptedPassword;
    }

    // The list of HeaderFooter types.
    public func getFilterByType() -> String? {
        return self.filterByType;
    }

    // Creates the api request data
    public func createApiRequestData(apiInvoker : ApiInvoker, configuration : Configuration) throws -> WordsApiRequestData {
         var rawPath = "/words/online/get/headersfooters/{headerFooterIndex}";
         rawPath = rawPath.replacingOccurrences(of: "{headerFooterIndex}", with: try ObjectSerializer.serializeToString(value: self.getHeaderFooterIndex()));

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
         if (self.getFilterByType() != nil) {
         queryItems.append(URLQueryItem(name: "filterByType", value: try ObjectSerializer.serializeToString(value: self.getFilterByType()!)));
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
        return try ObjectSerializer.deserialize(type: HeaderFooterResponse.self, from: data);
    }
}
