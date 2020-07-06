/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="MarkdownSaveOptionsData.swift">
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

// Container class for markdown save options.
public class MarkdownSaveOptionsData : TxtSaveOptionsBaseData {
    // Gets or sets a value that specifies how to align contents in tables when exporting into the Markdown format.
    // The default value is Auto.
    public enum TableContentAlignment : String, Codable
    {
        // Enum value "auto"
        case auto = "Auto"

        // Enum value "_left"
        case _left = "Left"

        // Enum value "center"
        case center = "Center"

        // Enum value "_right"
        case _right = "Right"
    }

    // Field of tableContentAlignment. Container class for markdown save options.
    private var tableContentAlignment : TableContentAlignment?;

    private enum CodingKeys: String, CodingKey {
        case tableContentAlignment;
        case invalidCodingKey;
    }

    public override init() {
        super.init();
    }

    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder);
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.tableContentAlignment = try container.decodeIfPresent(TableContentAlignment.self, forKey: .tableContentAlignment);
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder);
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.tableContentAlignment != nil) {
            try container.encode(self.tableContentAlignment, forKey: .tableContentAlignment);
        }
    }

    // Sets tableContentAlignment. Gets or sets a value that specifies how to align contents in tables when exporting into the Markdown format. The default value is Auto.
    public func setTableContentAlignment(tableContentAlignment : TableContentAlignment?) {
        self.tableContentAlignment = tableContentAlignment;
    }

    // Gets tableContentAlignment. Gets or sets a value that specifies how to align contents in tables when exporting into the Markdown format. The default value is Auto.
    public func getTableContentAlignment() -> TableContentAlignment? {
        return self.tableContentAlignment;
    }
}
