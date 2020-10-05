/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="BuildReportOnlineRequest.swift">
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

// Request model for buildReportOnline operation.
public class BuildReportOnlineRequest {
    private let template : InputStream;
    private let data : String;
    private let reportEngineSettings : ReportEngineSettings;
    private let documentFileName : String?;

    private enum CodingKeys: String, CodingKey {
        case template;
        case data;
        case reportEngineSettings;
        case documentFileName;
        case invalidCodingKey;
    }

    // Initializes a new instance of the BuildReportOnlineRequest class.
    public init(template : InputStream, data : String, reportEngineSettings : ReportEngineSettings, documentFileName : String? = nil) {
        self.template = template;
        self.data = data;
        self.reportEngineSettings = reportEngineSettings;
        self.documentFileName = documentFileName;
    }

    // File with template.
    public func getTemplate() -> InputStream {
        return self.template;
    }

    // A string providing a data to populate the specified template. The string must be of one of the following types: xml, json, csv.
    public func getData() -> String {
        return self.data;
    }

    // An object providing a settings of report engine.
    public func getReportEngineSettings() -> ReportEngineSettings {
        return self.reportEngineSettings;
    }

    // This file name will be used when resulting document has dynamic field for document file name {filename}. If it is not set, "template" will be used instead.
    public func getDocumentFileName() -> String? {
        return self.documentFileName;
    }

    // Creates the api request data
    public func createApiRequest(configuration : Configuration) throws -> ApiRequest {
         var rawPath = "/words/buildReport";
         rawPath = rawPath.replacingOccurrences(of: "//", with: "/");

         let urlPath = (try configuration.getApiRootUrl()).appendingPathComponent(rawPath);
         var urlBuilder = URLComponents(url: urlPath, resolvingAgainstBaseURL: false)!;
         var queryItems : [URLQueryItem] = [];
         if (self.getDocumentFileName() != nil) {
             queryItems.append(URLQueryItem(name: "documentFileName", value: try ObjectSerializer.serializeToString(value: self.getDocumentFileName()!)));
         }

         if (queryItems.count > 0) {
             urlBuilder.queryItems = queryItems;
         }
         var formParams : [RequestFormParam] = [];
         formParams.append(RequestFormParam(name: "template", body: try ObjectSerializer.serializeFile(value: self.getTemplate()), contentType: "application/octet-stream"));

         formParams.append(RequestFormParam(name: "data", body: try ObjectSerializer.serialize(value: self.getData()), contentType: "application/json"));

         formParams.append(RequestFormParam(name: "reportEngineSettings", body: try ObjectSerializer.serialize(value: self.getReportEngineSettings()), contentType: "application/json"));


         var result = ApiRequest(url: urlBuilder.url!, method: "PUT");
         result.setBody(formParams: formParams);
         return result;
    }
}
