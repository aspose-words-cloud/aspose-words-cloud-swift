/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="SaveAsRangeRequest.swift">
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

// Request model for saveAsRange operation.
@available(macOS 10.12, iOS 10.3, watchOS 3.3, tvOS 12.0, *)
public class SaveAsRangeRequest : WordsApiRequest {
    private let name : String;
    private let rangeStartIdentifier : String;
    private let documentParameters : RangeDocument;
    private let rangeEndIdentifier : String?;
    private let folder : String?;
    private let storage : String?;
    private let loadEncoding : String?;
    private let password : String?;
    private let encryptedPassword : String?;

    private enum CodingKeys: String, CodingKey {
        case name;
        case rangeStartIdentifier;
        case documentParameters;
        case rangeEndIdentifier;
        case folder;
        case storage;
        case loadEncoding;
        case password;
        case encryptedPassword;
        case invalidCodingKey;
    }

    // Initializes a new instance of the SaveAsRangeRequest class.
    public init(name : String, rangeStartIdentifier : String, documentParameters : RangeDocument, rangeEndIdentifier : String? = nil, folder : String? = nil, storage : String? = nil, loadEncoding : String? = nil, password : String? = nil, encryptedPassword : String? = nil) {
        self.name = name;
        self.rangeStartIdentifier = rangeStartIdentifier;
        self.documentParameters = documentParameters;
        self.rangeEndIdentifier = rangeEndIdentifier;
        self.folder = folder;
        self.storage = storage;
        self.loadEncoding = loadEncoding;
        self.password = password;
        self.encryptedPassword = encryptedPassword;
    }

    // The filename of the input document.
    public func getName() -> String {
        return self.name;
    }

    // The range start identifier.
    public func getRangeStartIdentifier() -> String {
        return self.rangeStartIdentifier;
    }

    // Parameters of a new document.
    public func getDocumentParameters() -> RangeDocument {
        return self.documentParameters;
    }

    // The range end identifier.
    public func getRangeEndIdentifier() -> String? {
        return self.rangeEndIdentifier;
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
         var rawPath = "/words/{name}/range/{rangeStartIdentifier}/{rangeEndIdentifier}/SaveAs";
         rawPath = rawPath.replacingOccurrences(of: "{name}", with: try ObjectSerializer.serializeToString(value: self.getName()));

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
         if (self.getFolder() != nil) {
         #if os(Linux)queryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serializeToString(value: self.getFolder()!)));
         #elsequeryItems.append(URLQueryItem(name: "folder", value: try ObjectSerializer.serializeToString(value: self.getFolder()!)));
         #endif        }
         if (self.getStorage() != nil) {
         #if os(Linux)queryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serializeToString(value: self.getStorage()!)));
         #elsequeryItems.append(URLQueryItem(name: "storage", value: try ObjectSerializer.serializeToString(value: self.getStorage()!)));
         #endif        }
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

         var result = WordsApiRequestData(url: urlBuilder.url!, method: "POST");
         result.setBody(body: try ObjectSerializer.serializeBody(value: self.getDocumentParameters()), contentType: "application/json");
         return result;
    }

    // Deserialize response of this request
    public func deserializeResponse(data : Data) throws -> Any? {
        return try ObjectSerializer.deserialize(type: DocumentResponse.self, from: data);
    }
}
