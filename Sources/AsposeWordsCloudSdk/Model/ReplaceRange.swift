/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="ReplaceRange.swift">
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

public class ReplaceRange : Codable {
    // Gets or sets range&#39;s text type.
    public enum TextType : Int, Codable
    { 
        // Enum value "text"
        case text
        
        // Enum value "html"
        case html
        
    }

        
    // Gets or sets range&#39;s text.
    private let text : String?;
    // Gets or sets range&#39;s text type.
    private let textType : TextType?;
        
    private enum CodingKeys: String, CodingKey {
        case text;
        case textType;
    }
        
    public init(text : String? = nil, textType : TextType? = nil) {
        self.text = text;
        self.textType = textType;
    }
    
    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self);
        
        self.text = try container.decodeIfPresent(String.self, forKey: .text);
        self.textType = try container.decodeIfPresent(TextType.self, forKey: .textType);
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.text != nil) {
            try container.encode(self.text, forKey: .text);
        }
        if (self.textType != nil) {
            try container.encode(self.textType, forKey: .textType);
        }
        
    }
        
    public func getText() -> String? {
        return self.text;
    }
    public func getTextType() -> TextType? {
        return self.textType;
    }
}