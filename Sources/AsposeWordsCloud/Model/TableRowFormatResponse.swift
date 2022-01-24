/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="TableRowFormatResponse.swift">
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

// The REST response with the formatting properties of a table row.
@available(macOS 10.12, iOS 10.3, watchOS 3.3, tvOS 12.0, *)
public class TableRowFormatResponse : WordsResponse {
    // Field of rowFormat. The REST response with the formatting properties of a table row.
    private var _rowFormat : TableRowFormat?;

    public var rowFormat : TableRowFormat? {
        get {
            return self._rowFormat;
        }
        set {
            self._rowFormat = newValue;
        }
    }

    private enum CodingKeys: String, CodingKey {
        case rowFormat = "RowFormat";
        case invalidCodingKey;
    }

    public override init() {
        super.init();
    }

    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder);
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.rowFormat = try container.decodeIfPresent(TableRowFormat.self, forKey: .rowFormat);
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder);
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.rowFormat != nil) {
            try container.encode(self.rowFormat, forKey: .rowFormat);
        }
    }

    // Sets rowFormat. Gets or sets the formatting properties of a table row.
    public func setRowFormat(rowFormat : TableRowFormat?) -> TableRowFormatResponse {
        self.rowFormat = rowFormat;
        return self;
    }

    // Gets rowFormat. Gets or sets the formatting properties of a table row.
    public func getRowFormat() -> TableRowFormat? {
        return self.rowFormat;
    }
}
