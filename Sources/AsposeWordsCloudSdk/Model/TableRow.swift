/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="TableRow.swift">
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

public class TableRow : NodeLink {
        
    // Gets or sets provides access to the formatting properties of the row.
    private let rowFormat : TableRowFormat?;
    // Gets or sets collection of table&#39;s rows.
    private let tableCellList : [TableCell]?;
        
    private enum CodingKeys: String, CodingKey {
        case rowFormat;
        case tableCellList;
    }
        
    public init(rowFormat : TableRowFormat? = nil, tableCellList : [TableCell]? = nil) {
        self.rowFormat = rowFormat;
        self.tableCellList = tableCellList;
    }
    
    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self);
        try super.init(from: try container.superDecoder());
        self.rowFormat = try container.decodeIfPresent(TableRowFormat.self, forKey: .rowFormat);
        self.tableCellList = try container.decodeIfPresent([TableCell].self, forKey: .tableCellList);
    }

    public override func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.rowFormat != nil) {
            try container.encode(self.rowFormat, forKey: .rowFormat);
        }
        if (self.tableCellList != nil) {
            try container.encode(self.tableCellList, forKey: .tableCellList);
        }
        try super.encode(to: container.superEncoder());
    }
        
    public func getRowFormat() -> TableRowFormat? {
        return self.rowFormat;
    }
    public func getTableCellList() -> [TableCell]? {
        return self.tableCellList;
    }
}