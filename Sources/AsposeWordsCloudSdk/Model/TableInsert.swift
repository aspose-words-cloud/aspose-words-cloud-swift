/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="TableInsert.swift">
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

public class TableInsert : Codable, WordsApiModel {
        
    // Gets or sets table will be inserted before specified position.
    private var position : DocumentPosition?;
    // Gets or sets count of columns. Default is 2.
    private var columnsCount : Int?;
    // Gets or sets count of rows. Default is 2.
    private var rowsCount : Int?;
        
    private enum CodingKeys: String, CodingKey {
        case position;
        case columnsCount;
        case rowsCount;
        case invalidCodingKey;
    }
        
    public init() {
        
    }
    
    public required init(from decoder: Decoder) throws {
        
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.position = try container.decodeIfPresent(DocumentPosition.self, forKey: .position);
        self.columnsCount = try container.decode(Int.self, forKey: .columnsCount);
        self.rowsCount = try container.decode(Int.self, forKey: .rowsCount);
    }

    public func encode(to encoder: Encoder) throws {
        
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.position != nil) {
            try container.encode(self.position, forKey: .position);
        }
        if (self.columnsCount == nil) {
            throw WordsApiError.requiredArgumentError(argumentName: "columnsCount");
        }
        try container.encode(self.columnsCount, forKey: .columnsCount);
        if (self.rowsCount == nil) {
            throw WordsApiError.requiredArgumentError(argumentName: "rowsCount");
        }
        try container.encode(self.rowsCount, forKey: .rowsCount);
    }
        
    public func setPosition(position : DocumentPosition?) {
        self.position = position;
    }
    
    public func getPosition() -> DocumentPosition? {
        return self.position;
    }
    public func setColumnsCount(columnsCount : Int) {
        self.columnsCount = columnsCount;
    }
    
    public func getColumnsCount() -> Int {
        return self.columnsCount!;
    }
    public func setRowsCount(rowsCount : Int) {
        self.rowsCount = rowsCount;
    }
    
    public func getRowsCount() -> Int {
        return self.rowsCount!;
    }
}
