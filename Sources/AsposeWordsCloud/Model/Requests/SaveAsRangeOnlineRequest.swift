/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="SaveAsRangeOnlineRequest.swift">
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

// Request model for saveAsRangeOnline operation.
public class SaveAsRangeOnlineRequest : WordsApiRequest {
    private let rangeStartIdentifier : String;
    private let document : InputStream;
    private let documentParameters : RangeDocument;
    private let rangeEndIdentifier : String?;
    private let loadEncoding : String?;
    private let password : String?;

    private enum CodingKeys: String, CodingKey {
        case rangeStartIdentifier;
        case document;
        case documentParameters;
        case rangeEndIdentifier;
        case loadEncoding;
        case password;
        case invalidCodingKey;
    }

    // Initializes a new instance of the SaveAsRangeOnlineRequest class.
    public init(rangeStartIdentifier : String, document : InputStream, documentParameters : RangeDocument, rangeEndIdentifier : String? = nil, loadEncoding : String? = nil, password : String? = nil) {
        self.rangeStartIdentifier = rangeStartIdentifier;
        self.document = document;
        self.documentParameters = documentParameters;
        self.rangeEndIdentifier = rangeEndIdentifier;
        self.loadEncoding = loadEncoding;
        self.password = password;
    }

    // The range start identifier.
    public func getRangeStartIdentifier() -> String {
        return self.rangeStartIdentifier;
    }

    // The document.
    public func getDocument() -> InputStream {
        return self.document;
    }

    // Parameters of a new document.
    public func getDocumentParameters() -> RangeDocument {
        return self.documentParameters;
    }

    // The range end identifier.
    public func getRangeEndIdentifier() -> String? {
        return self.rangeEndIdentifier;
    }

    // Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    public func getLoadEncoding() -> String? {
        return self.loadEncoding;
    }

    // Password for opening an encrypted document.
    public func getPassword() -> String? {
        return self.password;
    }

    // Creates the api request data
    public func createApiRequestData(configuration : Configuration) throws -> WordsApiRequestData {
         var rawPath = "/words/online/range/{rangeStartIdentifier}/{rangeEndIdentifier}/SaveAs";
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
             queryItems.append(URLQueryItem(name: "password", value: try ObjectSerializer.serializeToString(value: self.getPassword()!)));
         }

         if (queryItems.count > 0) {
             urlBuilder.queryItems = queryItems;
         }
         var formParams : [RequestFormParam] = [];
         formParams.append(RequestFormParam(name: "document", body: try ObjectSerializer.serializeFile(value: self.getDocument()), contentType: "application/octet-stream"));

         formParams.append(RequestFormParam(name: "documentParameters", body: try ObjectSerializer.serialize(value: self.getDocumentParameters()), contentType: "application/json"));


         var result = WordsApiRequestData(url: urlBuilder.url!, method: "POST");
         result.setBody(formParams: formParams);
         return result;
    }

    // Deserialize response of this request
    public func deserializeResponse(data : Data) throws -> Any? {
        let parts = try ObjectSerializer.parseMultipart(data: data);
        return nil;
    }
}
