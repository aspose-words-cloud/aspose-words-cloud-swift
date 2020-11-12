/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="ReportEngineSettings.swift">
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

// Report engine settings.
public class ReportEngineSettings : Codable, WordsApiModel {
    // Gets or sets type of datasource.
    public enum DataSourceType : String, Codable
    {
        // Enum value "xml"
        case xml = "Xml"

        // Enum value "json"
        case json = "Json"

        // Enum value "csv"
        case csv = "Csv"
    }

    // Field of csvDataLoadOptions. Report engine settings.
    private var csvDataLoadOptions : CsvDataLoadOptions?;

    // Field of dataSourceName. Report engine settings.
    private var dataSourceName : String?;

    // Field of dataSourceType. Report engine settings.
    private var dataSourceType : DataSourceType?;

    // Field of reportBuildOptions. Report engine settings.
    private var reportBuildOptions : [ReportBuildOptions]?;

    private enum CodingKeys: String, CodingKey {
        case csvDataLoadOptions = "CsvDataLoadOptions";
        case dataSourceName = "DataSourceName";
        case dataSourceType = "DataSourceType";
        case reportBuildOptions = "ReportBuildOptions";
        case invalidCodingKey;
    }

    public init() {
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.csvDataLoadOptions = try container.decodeIfPresent(CsvDataLoadOptions.self, forKey: .csvDataLoadOptions);
        self.dataSourceName = try container.decodeIfPresent(String.self, forKey: .dataSourceName);
        self.dataSourceType = try container.decodeIfPresent(DataSourceType.self, forKey: .dataSourceType);
        self.reportBuildOptions = try container.decodeIfPresent([ReportBuildOptions].self, forKey: .reportBuildOptions);
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.csvDataLoadOptions != nil) {
            try container.encode(self.csvDataLoadOptions, forKey: .csvDataLoadOptions);
        }
        if (self.dataSourceName != nil) {
            try container.encode(self.dataSourceName, forKey: .dataSourceName);
        }
        if (self.dataSourceType != nil) {
            try container.encode(self.dataSourceType, forKey: .dataSourceType);
        }
        if (self.reportBuildOptions != nil) {
            try container.encode(self.reportBuildOptions, forKey: .reportBuildOptions);
        }
    }

    // Sets csvDataLoadOptions. Gets or sets options for parsing CSV data.
    public func setCsvDataLoadOptions(csvDataLoadOptions : CsvDataLoadOptions?) {
        self.csvDataLoadOptions = csvDataLoadOptions;
    }

    // Gets csvDataLoadOptions. Gets or sets options for parsing CSV data.
    public func getCsvDataLoadOptions() -> CsvDataLoadOptions? {
        return self.csvDataLoadOptions;
    }

    // Sets dataSourceName. Gets or sets a name to reference the data source object in the template.
    public func setDataSourceName(dataSourceName : String?) {
        self.dataSourceName = dataSourceName;
    }

    // Gets dataSourceName. Gets or sets a name to reference the data source object in the template.
    public func getDataSourceName() -> String? {
        return self.dataSourceName;
    }

    // Sets dataSourceType. Gets or sets type of datasource.
    public func setDataSourceType(dataSourceType : DataSourceType?) {
        self.dataSourceType = dataSourceType;
    }

    // Gets dataSourceType. Gets or sets type of datasource.
    public func getDataSourceType() -> DataSourceType? {
        return self.dataSourceType;
    }

    // Sets reportBuildOptions. Gets or sets type of options to build report.
    public func setReportBuildOptions(reportBuildOptions : [ReportBuildOptions]?) {
        self.reportBuildOptions = reportBuildOptions;
    }

    // Gets reportBuildOptions. Gets or sets type of options to build report.
    public func getReportBuildOptions() -> [ReportBuildOptions]? {
        return self.reportBuildOptions;
    }
}
