/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="Table.swift">
 *   Copyright (c) 2019 Aspose.Words for Cloud
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

public class Table : NodeLink, WordsApiModel {
        
    // Gets or sets table properties.
    private var tableProperties : TableProperties?;
    // Gets or sets collection of table&#39;s rows.
    private var tableRowList : [TableRow]?;
        
    private enum CodingKeys: String, CodingKey {
        case tableProperties;
        case tableRowList;
        case invalidCodingKey;
    }
        
    public override init() {
        super.init();
    }
    
    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder);
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.tableProperties = try container.decodeIfPresent(TableProperties.self, forKey: .tableProperties);
        self.tableRowList = try container.decodeIfPresent([TableRow].self, forKey: .tableRowList);
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder);
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.tableProperties != nil) {
            try container.encode(self.tableProperties, forKey: .tableProperties);
        }
        if (self.tableRowList != nil) {
            try container.encode(self.tableRowList, forKey: .tableRowList);
        }
    }
        
    public func setTableProperties(tableProperties : TableProperties?) {
        self.tableProperties = tableProperties;
    }
    
    public func getTableProperties() -> TableProperties? {
        return self.tableProperties;
    }
    public func setTableRowList(tableRowList : [TableRow]?) {
        self.tableRowList = tableRowList;
    }
    
    public func getTableRowList() -> [TableRow]? {
        return self.tableRowList;
    }
}
