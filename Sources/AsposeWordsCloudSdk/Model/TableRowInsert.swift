/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="TableRowInsert.swift">
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

public class TableRowInsert : Codable {
        
    // Gets or sets table row will be inserted after row with specified 0-based index.
    private var insertAfter : Int?;
    // Gets or sets count of columns. Default is 1.
    private var columnsCount : Int?;
        
    private enum CodingKeys: String, CodingKey {
        case insertAfter;
        case columnsCount;
        case invalidCodingKey;
    }
        
    public init() {
        
    }
    
    public required init(from decoder: Decoder) throws {
        
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.insertAfter = try container.decodeIfPresent(Int.self, forKey: .insertAfter);
        self.columnsCount = try container.decode(Int.self, forKey: .columnsCount);
    }

    public func encode(to encoder: Encoder) throws {
        
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.insertAfter != nil) {
            try container.encode(self.insertAfter, forKey: .insertAfter);
        }
        if (self.columnsCount == nil) {
            throw WordsApiError.requiredArgumentError(argumentName: "columnsCount");
        }
        try container.encode(self.columnsCount, forKey: .columnsCount);
    }
        
    public func setInsertAfter(insertAfter : Int?) {
        self.insertAfter = insertAfter;
    }
    
    public func getInsertAfter() -> Int? {
        return self.insertAfter;
    }
    public func setColumnsCount(columnsCount : Int) {
        self.columnsCount = columnsCount;
    }
    
    public func getColumnsCount() -> Int {
        return self.columnsCount!;
    }
}
