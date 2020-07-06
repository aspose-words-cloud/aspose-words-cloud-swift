/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="Bookmarks.swift">
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

// Represents an array of bookmarks.
public class Bookmarks : LinkElement {
    // Field of bookmarkList. Represents an array of bookmarks.
    private var bookmarkList : [Bookmark]?;

    private enum CodingKeys: String, CodingKey {
        case bookmarkList;
        case invalidCodingKey;
    }

    public override init() {
        super.init();
    }

    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder);
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.bookmarkList = try container.decodeIfPresent([Bookmark].self, forKey: .bookmarkList);
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder);
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.bookmarkList != nil) {
            try container.encode(self.bookmarkList, forKey: .bookmarkList);
        }
    }

    // Sets bookmarkList. Gets or sets array of bookmarks.
    public func setBookmarkList(bookmarkList : [Bookmark]?) {
        self.bookmarkList = bookmarkList;
    }

    // Gets bookmarkList. Gets or sets array of bookmarks.
    public func getBookmarkList() -> [Bookmark]? {
        return self.bookmarkList;
    }
}
