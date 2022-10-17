/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="TableInsertDto.swift">
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

// DTO container with a table element.
@available(macOS 10.12, iOS 10.3, watchOS 3.3, tvOS 12.0, *)
public class TableInsertDto : Codable, WordsApiModel {
    // Field of columnsCount. DTO container with a table element.
    private var _columnsCount : Int? = nil;

    public var columnsCount : Int? {
        get {
            return self._columnsCount;
        }
        set {
            self._columnsCount = newValue;
        }
    }

    // Field of position. DTO container with a table element.
    private var _position : DocumentPosition? = nil;

    public var position : DocumentPosition? {
        get {
            return self._position;
        }
        set {
            self._position = newValue;
        }
    }

    // Field of rowsCount. DTO container with a table element.
    private var _rowsCount : Int? = nil;

    public var rowsCount : Int? {
        get {
            return self._rowsCount;
        }
        set {
            self._rowsCount = newValue;
        }
    }

    private enum CodingKeys: String, CodingKey {
        case columnsCount = "ColumnsCount";
        case position = "Position";
        case rowsCount = "RowsCount";
        case invalidCodingKey;
    }

    public init() {
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.columnsCount = try container.decodeIfPresent(Int.self, forKey: .columnsCount);
        self.position = try container.decodeIfPresent(DocumentPosition.self, forKey: .position);
        self.rowsCount = try container.decodeIfPresent(Int.self, forKey: .rowsCount);
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.columnsCount != nil) {
            try container.encode(self.columnsCount, forKey: .columnsCount);
        }
        if (self.position != nil) {
            try container.encode(self.position, forKey: .position);
        }
        if (self.rowsCount != nil) {
            try container.encode(self.rowsCount, forKey: .rowsCount);
        }
    }

    public func collectFilesContent(_ resultFilesContent : inout [FileReference]) {
    }

    // Sets columnsCount. Gets or sets the number of columns. The default value is 2.
    public func setColumnsCount(columnsCount : Int?) -> TableInsertDto {
        self.columnsCount = columnsCount;
        return self;
    }

    // Gets columnsCount. Gets or sets the number of columns. The default value is 2.
    public func getColumnsCount() -> Int? {
        return self.columnsCount;
    }


    // Sets position. Gets or sets the position to insert the table. The table will be inserted before the specified position.
    public func setPosition(position : DocumentPosition?) -> TableInsertDto {
        self.position = position;
        return self;
    }

    // Gets position. Gets or sets the position to insert the table. The table will be inserted before the specified position.
    public func getPosition() -> DocumentPosition? {
        return self.position;
    }


    // Sets rowsCount. Gets or sets the number of rows. The default value is 2.
    public func setRowsCount(rowsCount : Int?) -> TableInsertDto {
        self.rowsCount = rowsCount;
        return self;
    }

    // Gets rowsCount. Gets or sets the number of rows. The default value is 2.
    public func getRowsCount() -> Int? {
        return self.rowsCount;
    }
}
