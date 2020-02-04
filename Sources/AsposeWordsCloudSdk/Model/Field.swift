/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="Field.swift">
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

public class Field : FieldLink {
        
    // Gets or sets LCID of the field.
    private var localeId : String?;
    // Gets or sets field result.
    private var result : String?;
        
    private enum CodingKeys: String, CodingKey {
        case localeId;
        case result;
        case invalidCodingKey;
    }
        
    public override init() {
        super.init();
    }
    
    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder);
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.localeId = try container.decodeIfPresent(String.self, forKey: .localeId);
        self.result = try container.decodeIfPresent(String.self, forKey: .result);
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder);
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.localeId != nil) {
            try container.encode(self.localeId, forKey: .localeId);
        }
        if (self.result != nil) {
            try container.encode(self.result, forKey: .result);
        }
    }
        
    public func setLocaleId(localeId : String?) {
        self.localeId = localeId;
    }
    
    public func getLocaleId() -> String? {
        return self.localeId;
    }
    public func setResult(result : String?) {
        self.result = result;
    }
    
    public func getResult() -> String? {
        return self.result;
    }
}
