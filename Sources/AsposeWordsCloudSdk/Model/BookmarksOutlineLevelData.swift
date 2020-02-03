/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="BookmarksOutlineLevelData.swift">
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

public class BookmarksOutlineLevelData : Decodable {
        
    // Gets or sets specify the bookmark&#39;s name.
    private let name : String?;
    // Gets or sets specify the bookmark&#39;s level.
    private let bookmarksOutlineLevel : Int;
        
    private enum CodingKeys: String, CodingKey { case name, bookmarksOutlineLevel }
        
    public init(name : String? = nil, bookmarksOutlineLevel : Int) {
        self.name = name;
        self.bookmarksOutlineLevel = bookmarksOutlineLevel;
    }
    
    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self);
        
        if let name = try container.decodeIfPresent(String.self, forKey: .name) {
            self.name = name;
        }
        self.bookmarksOutlineLevel = try container.decode(Int.self, forKey: .bookmarksOutlineLevel);

    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.name != nil) {
            try container.encode(self.name, forKey: .name);
        }
        try container.encode(self.bookmarksOutlineLevel, forKey: .bookmarksOutlineLevel);
        
        
    }
        
    public func getName() -> String? {
        return self.name;
    }
    public func getBookmarksOutlineLevel() -> Int {
        return self.bookmarksOutlineLevel;
    }
}
