/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="TableRow.swift">
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

// DTO container with a table row element.
@available(macOS 10.12, iOS 10.3, watchOS 3.3, tvOS 12.0, *)
public class TableRow : NodeLink {
    // Field of rowFormat. DTO container with a table row element.
    private var _rowFormat : TableRowFormat? = nil;

    public var rowFormat : TableRowFormat? {
        get {
            return self._rowFormat;
        }
        set {
            self._rowFormat = newValue;
        }
    }

    // Field of tableCellList. DTO container with a table row element.
    private var _tableCellList : [TableCell]? = nil;

    public var tableCellList : [TableCell]? {
        get {
            return self._tableCellList;
        }
        set {
            self._tableCellList = newValue;
        }
    }

    private enum CodingKeys: String, CodingKey {
        case rowFormat = "RowFormat";
        case tableCellList = "TableCellList";
        case invalidCodingKey;
    }

    public override init() {
        super.init();
    }

    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder);
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.rowFormat = try container.decodeIfPresent(TableRowFormat.self, forKey: .rowFormat);
        self.tableCellList = try container.decodeIfPresent([TableCell].self, forKey: .tableCellList);
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder);
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.rowFormat != nil) {
            try container.encode(self.rowFormat, forKey: .rowFormat);
        }
        if (self.tableCellList != nil) {
            try container.encode(self.tableCellList, forKey: .tableCellList);
        }
    }

    public override func collectFilesContent(_ resultFilesContent : inout [FileContent]) {
        super.collectFilesContent(resultFilesContent);
        if (self.rowFormat != nil)
        {
            self.rowFormat!.collectFilesContent(resultFilesContent);
        }

        if (self.tableCellList != nil)
        {
            for element in self.tableCellList! {
                element.collectFilesContent(resultFilesContent);
            }
        }

    }

    // Sets rowFormat. Gets or sets the formatting properties of a row.
    public func setRowFormat(rowFormat : TableRowFormat?) -> TableRow {
        self.rowFormat = rowFormat;
        return self;
    }

    // Gets rowFormat. Gets or sets the formatting properties of a row.
    public func getRowFormat() -> TableRowFormat? {
        return self.rowFormat;
    }


    // Sets tableCellList. Gets or sets the collection of rows.
    public func setTableCellList(tableCellList : [TableCell]?) -> TableRow {
        self.tableCellList = tableCellList;
        return self;
    }

    // Gets tableCellList. Gets or sets the collection of rows.
    public func getTableCellList() -> [TableCell]? {
        return self.tableCellList;
    }
}
