/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="BookmarkData.swift">
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

public class BookmarkData : Codable {
        
    // Gets or sets the name of the bookmark.
    private let name : String?;
    // Gets or sets the text enclosed in the bookmark.
    private let text : String?;
        
    private enum CodingKeys: String, CodingKey { case name, text }
        
    public init(name : String? = nil, text : String? = nil) {
        self.name = name;
        self.text = text;
    }
    
    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self);
        
        if let name = try container.decodeIfPresent(String.self, forKey: .name) {
            self.name = name;
        }
        if let text = try container.decodeIfPresent(String.self, forKey: .text) {
            self.text = text;
        }

    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.name != nil) {
            try container.encode(self.name, forKey: .name);
        }
        if (self.text != nil) {
            try container.encode(self.text, forKey: .text);
        }
        
        
    }
        
    public func getName() -> String? {
        return self.name;
    }
    public func getText() -> String? {
        return self.text;
    }
}
