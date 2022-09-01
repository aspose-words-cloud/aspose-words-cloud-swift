/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="ClassifyRequest.swift">
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

// Request model for classify operation.
@available(macOS 10.12, iOS 10.3, watchOS 3.3, tvOS 12.0, *)
public class ClassifyRequest : WordsApiRequest {
    private let text : String;
    private let bestClassesCount : String?;

    private enum CodingKeys: String, CodingKey {
        case text;
        case bestClassesCount;
        case invalidCodingKey;
    }

    // Initializes a new instance of the ClassifyRequest class.
    public init(text : String, bestClassesCount : String? = nil) {
        self.text = text;
        self.bestClassesCount = bestClassesCount;
    }

    // The text to classify.
    public func getText() -> String {
        return self.text;
    }

    // The number of the best classes to return.
    public func getBestClassesCount() -> String? {
        return self.bestClassesCount;
    }

    // Creates the api request data
    public func createApiRequestData(apiInvoker : ApiInvoker, configuration : Configuration) throws -> WordsApiRequestData {
         var rawPath = "/words/classify";
         rawPath = rawPath.replacingOccurrences(of: "//", with: "/");

         let urlPath = (try configuration.getApiRootUrl()).appendingPathComponent(rawPath);
         var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
         var queryItems : [URLQueryItem] = [];
             if (self.getBestClassesCount() != nil) {

         #if os(Linux) 
                     queryItems.append(URLQueryItem(name: "bestClassesCount", value: try ObjectSerializer.serializeToString(value: self.getBestClassesCount()!)));

         #else
                     queryItems.append(URLQueryItem(name: "bestClassesCount", value: try ObjectSerializer.serializeToString(value: self.getBestClassesCount()!)));

         #endif        
             }

         if (queryItems.count > 0) {
             urlBuilder.queryItems = queryItems;
         }
         var formParams = [RequestFormParam]();
         var requestFilesContent = [FileContent]();
         apiInvoker.prepareFilesContent(&requestFilesContent);
         formParams.append(RequestFormParam(name: "text", body: try ObjectSerializer.serialize(value: self.getText()), contentType: "text/plain"));

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
        return try ObjectSerializer.deserialize(type: ClassificationResponse.self, from: data);
    }
}
