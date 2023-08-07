/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="CommentsCollection.swift">
 *   Copyright (c) 2023 Aspose.Words for Cloud
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

// The collection of comments.
@available(macOS 10.12, iOS 10.3, watchOS 3.3, tvOS 12.0, *)
public class CommentsCollection : LinkElement {
    // Field of commentList. The collection of comments.
    private var _commentList : [Comment]? = nil;

    public var commentList : [Comment]? {
        get {
            return self._commentList;
        }
        set {
            self._commentList = newValue;
        }
    }

    private enum CodingKeys: String, CodingKey {
        case commentList = "CommentList";
        case invalidCodingKey;
    }

    public override init() {
        super.init();
    }

    public required init(from json: [String: Any]) throws {
        if let raw_commentList = json["CommentList"] as? [Any] {
            self.commentList = try raw_commentList.map {
                if let element_commentList = $0 as? [String: Any] {
            return try ObjectSerializer.deserialize(type: Comment.self, from: element_commentList);
        }
        else {
            throw WordsApiError.invalidTypeDeserialization(String(describing: $0));
        }
            };
        }

        try super.init(from: json);
    }

    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder);
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.commentList = try container.decodeIfPresent([Comment].self, forKey: .commentList);
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder);
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.commentList != nil) {
            try container.encode(self.commentList, forKey: .commentList);
        }
    }

    public override func collectFilesContent(_ resultFilesContent : inout [FileReference]) {
    }

    // Sets commentList. Gets or sets the collection of comments.
    public func setCommentList(commentList : [Comment]?) -> CommentsCollection {
        self.commentList = commentList;
        return self;
    }

    // Gets commentList. Gets or sets the collection of comments.
    public func getCommentList() -> [Comment]? {
        return self.commentList;
    }
}
