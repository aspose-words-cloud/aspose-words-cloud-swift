/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="CompareDocumentOnlineRequest.swift">
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

// Request model for compareDocumentOnline operation.
public class CompareDocumentOnlineRequest : WordsApiRequest {
    private let document : InputStream;
    private let compareData : CompareData;
    private let loadEncoding : String?;
    private let password : String?;
    private let destFileName : String?;

    private enum CodingKeys: String, CodingKey {
        case document;
        case compareData;
        case loadEncoding;
        case password;
        case destFileName;
        case invalidCodingKey;
    }

    // Initializes a new instance of the CompareDocumentOnlineRequest class.
    public init(document : InputStream, compareData : CompareData, loadEncoding : String? = nil, password : String? = nil, destFileName : String? = nil) {
        self.document = document;
        self.compareData = compareData;
        self.loadEncoding = loadEncoding;
        self.password = password;
        self.destFileName = destFileName;
    }

    // The document.
    public func getDocument() -> InputStream {
        return self.document;
    }

    // Compare data.
    public func getCompareData() -> CompareData {
        return self.compareData;
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

    // Creates the api request data
    public func createApiRequestData(configuration : Configuration) throws -> WordsApiRequestData {
         var rawPath = "/words/online/put/compareDocument";
         rawPath = rawPath.replacingOccurrences(of: "//", with: "/");

         let urlPath = (try configuration.getApiRootUrl()).appendingPathComponent(rawPath);
         var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
         var queryItems : [URLQueryItem] = [];
         if (self.getLoadEncoding() != nil) {
             queryItems.append(URLQueryItem(name: "loadEncoding", value: try ObjectSerializer.serializeToString(value: self.getLoadEncoding()!)));
         }

         if (self.getPassword() != nil) {
             queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serializeToString(value: self.getPassword()!)));
         }

         if (self.getDestFileName() != nil) {
             queryItems.append(URLQueryItem(name: "destFileName", value: try ObjectSerializer.serializeToString(value: self.getDestFileName()!)));
         }

         if (queryItems.count > 0) {
             urlBuilder.queryItems = queryItems;
         }
         var formParams : [RequestFormParam] = [];
         formParams.append(RequestFormParam(name: "document", body: try ObjectSerializer.serializeFile(value: self.getDocument()), contentType: "application/octet-stream"));

         formParams.append(RequestFormParam(name: "compareData", body: try ObjectSerializer.serialize(value: self.getCompareData()), contentType: "application/json"));


         var result = WordsApiRequestData(url: urlBuilder.url!, method: "PUT");
         result.setBody(formParams: formParams);
         return result;
    }

    // Deserialize response of this request
    public func deserializeResponse(data : Data) throws -> Any? {
        let multipart = try ObjectSerializer.parseMultipart(data: data);
        return CompareDocumentOnlineResponse(
            model: try ObjectSerializer.deserialize(
                type: DocumentResponse.self,
                from: (try ObjectSerializer.getMultipartByName(multipart: multipart, name: "Model")).getBody()
            ),
            document: (try ObjectSerializer.getMultipartByName(multipart: multipart, name: "Document")).getBody()
        );
    }
}
