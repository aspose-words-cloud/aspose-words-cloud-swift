/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="GetDocumentFieldNamesOnlineRequest.swift">
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

// Request model for getDocumentFieldNamesOnline operation.
public class GetDocumentFieldNamesOnlineRequest {
    private let template : InputStream;
    private let useNonMergeFields : Bool?;

    private enum CodingKeys: String, CodingKey {
        case template;
        case useNonMergeFields;
        case invalidCodingKey;
    }

    // Initializes a new instance of the GetDocumentFieldNamesOnlineRequest class.
    public init(template : InputStream, useNonMergeFields : Bool? = nil) {
        self.template = template;
        self.useNonMergeFields = useNonMergeFields;
    }

    // Creates the api request data
    public func createApiRequest(configuration : Configuration) throws -> ApiRequest {
         var rawPath = "/words/mailMerge/FieldNames";
         rawPath = rawPath.replacingOccurrences(of: "//", with: "/");

         let urlPath = (try configuration.getApiRootUrl()).appendingPathComponent(rawPath);
         var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
         var queryItems : [URLQueryItem] = [];
         if (self.getUseNonMergeFields() != nil) {
             queryItems.append(URLQueryItem(name: "useNonMergeFields", value: try ObjectSerializer.serializeToString(value: self.getUseNonMergeFields()!)));
         }

         if (queryItems.count > 0) {
             urlBuilder.queryItems = queryItems;
         }
         var formParams : [RequestFormParam] = [];
         formParams.append(RequestFormParam(name: "template", body: try ObjectSerializer.serializeFile(value: self.getTemplate()), contentType: "application/octet-stream"));


         var result = ApiRequest(url: urlBuilder.url!, method: "PUT");
         result.setBody(formParams: formParams);
         return result;
    }

    // File with template.
    public func getTemplate() -> InputStream {
        return self.template;
    }

    // Use non merge fields or not.
    public func getUseNonMergeFields() -> Bool? {
        return self.useNonMergeFields;
    }
}
