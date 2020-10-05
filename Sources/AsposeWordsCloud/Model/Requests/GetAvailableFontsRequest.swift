/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="GetAvailableFontsRequest.swift">
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

// Request model for getAvailableFonts operation.
public class GetAvailableFontsRequest {
    private let fontsLocation : String?;

    private enum CodingKeys: String, CodingKey {
        case fontsLocation;
        case invalidCodingKey;
    }

    // Initializes a new instance of the GetAvailableFontsRequest class.
    public init(fontsLocation : String? = nil) {
        self.fontsLocation = fontsLocation;
    }

    // Creates the api request data
    public func createApiRequest(configuration : Configuration) throws -> ApiRequest {
         var rawPath = "/words/fonts/available";
         rawPath = rawPath.replacingOccurrences(of: "//", with: "/");

         let urlPath = (try configuration.getApiRootUrl()).appendingPathComponent(rawPath);
         var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
         var queryItems : [URLQueryItem] = [];
         if (self.getFontsLocation() != nil) {
             queryItems.append(URLQueryItem(name: "fontsLocation", value: try ObjectSerializer.serializeToString(value: self.getFontsLocation()!)));
         }

         if (queryItems.count > 0) {
             urlBuilder.queryItems = queryItems;
         }

         let result = ApiRequest(url: urlBuilder.url!, method: "GET");
         return result;
    }

    // Folder in filestorage with custom fonts.
    public func getFontsLocation() -> String? {
        return self.fontsLocation;
    }
}
