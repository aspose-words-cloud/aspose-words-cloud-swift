/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="Hyperlink.swift">
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

public class Hyperlink : LinkElement {
        
    // Gets or sets hypelink&#39;s display text.
    private var displayText : String?;
    // Gets or sets value.
    private var value : String?;
        
    private enum CodingKeys: String, CodingKey {
        case displayText;
        case value;
        case invalidCodingKey;
    }
        
    public override init() {
        super.init();
    }
    
    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self);
        try super.init(from: try container.superDecoder());
        self.displayText = try container.decodeIfPresent(String.self, forKey: .displayText);
        self.value = try container.decodeIfPresent(String.self, forKey: .value);
    }

    public override func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.displayText != nil) {
            try container.encode(self.displayText, forKey: .displayText);
        }
        if (self.value != nil) {
            try container.encode(self.value, forKey: .value);
        }
        try super.encode(to: container.superEncoder());
    }
        
    public func setDisplayText(displayText : String?) {
        self.displayText = displayText;
    }
    
    public func getDisplayText() -> String? {
        return self.displayText;
    }
    public func setValue(value : String?) {
        self.value = value;
    }
    
    public func getValue() -> String? {
        return self.value;
    }
}
