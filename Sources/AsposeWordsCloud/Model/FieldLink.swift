/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="FieldLink.swift">
 *   Copyright (c) 2025 Aspose.Words for Cloud
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

// Field link.
public class FieldLink : NodeLink {
    // Field of fieldCode. Field link.
    private var _fieldCode : String? = nil;

    public var fieldCode : String? {
        get {
            return self._fieldCode;
        }
        set {
            self._fieldCode = newValue;
        }
    }

    private enum CodingKeys: String, CodingKey {
        case fieldCode = "FieldCode";
        case invalidCodingKey;
    }

    public override init() {
        super.init();
    }

    public required init(from json: [String: Any]) throws {
        try super.init(from: json);
        self.fieldCode = json["FieldCode"] as? String;
    }

    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder);
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.fieldCode = try container.decodeIfPresent(String.self, forKey: .fieldCode);
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder);
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.fieldCode != nil) {
            try container.encode(self.fieldCode, forKey: .fieldCode);
        }
    }

    public override func collectFilesContent(_ resultFilesContent : inout [FileReference]) {
    }

    public override func validate() throws {
        try super.validate();
    }

    // Sets fieldCode. Gets or sets the field code.
    public func setFieldCode(fieldCode : String?) -> FieldLink {
        self.fieldCode = fieldCode;
        return self;
    }

    // Gets fieldCode. Gets or sets the field code.
    public func getFieldCode() -> String? {
        return self.fieldCode;
    }
}
