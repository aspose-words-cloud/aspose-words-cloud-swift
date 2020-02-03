/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="Comment.swift">
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

public class Comment : CommentLink {
        
    // Gets or sets returns or sets the author name for a comment.
    private let author : String?;
    // Gets or sets content of comment.
    private let content : StoryChildNodes?;
    // Gets or sets the date and time that the comment was made.
    private let dateTime : Date?;
    // Gets or sets returns or sets the initials of the user associated with a specific comment.
    private let initial : String?;
    // Gets or sets link to comment range end node.
    private let rangeEnd : DocumentPosition?;
    // Gets or sets link to comment range start node.
    private let rangeStart : DocumentPosition?;
    // Gets or sets this is a convenience property that allows to easily get or set text of the comment.
    private let text : String?;
        
    private enum CodingKeys: String, CodingKey { case author, content, dateTime, initial, rangeEnd, rangeStart, text }
        
    public init(author : String? = nil, content : StoryChildNodes? = nil, dateTime : Date? = nil, initial : String? = nil, rangeEnd : DocumentPosition? = nil, rangeStart : DocumentPosition? = nil, text : String? = nil) {
        self.author = author;
        self.content = content;
        self.dateTime = dateTime;
        self.initial = initial;
        self.rangeEnd = rangeEnd;
        self.rangeStart = rangeStart;
        self.text = text;
    }
    
    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self);
        try super.init(from: try container.superDecoder());
        if let author = try container.decodeIfPresent(String.self, forKey: .author) {
            self.author = author;
        }
        if let content = try container.decodeIfPresent(StoryChildNodes.self, forKey: .content) {
            self.content = content;
        }
        if let dateTime = try container.decodeIfPresent(Date.self, forKey: .dateTime) {
            self.dateTime = dateTime;
        }
        if let initial = try container.decodeIfPresent(String.self, forKey: .initial) {
            self.initial = initial;
        }
        if let rangeEnd = try container.decodeIfPresent(DocumentPosition.self, forKey: .rangeEnd) {
            self.rangeEnd = rangeEnd;
        }
        if let rangeStart = try container.decodeIfPresent(DocumentPosition.self, forKey: .rangeStart) {
            self.rangeStart = rangeStart;
        }
        if let text = try container.decodeIfPresent(String.self, forKey: .text) {
            self.text = text;
        }

    }

    public override func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.author != nil) {
            try container.encode(self.author, forKey: .author);
        }
        if (self.content != nil) {
            try container.encode(self.content, forKey: .content);
        }
        if (self.dateTime != nil) {
            try container.encode(self.dateTime, forKey: .dateTime);
        }
        if (self.initial != nil) {
            try container.encode(self.initial, forKey: .initial);
        }
        if (self.rangeEnd != nil) {
            try container.encode(self.rangeEnd, forKey: .rangeEnd);
        }
        if (self.rangeStart != nil) {
            try container.encode(self.rangeStart, forKey: .rangeStart);
        }
        if (self.text != nil) {
            try container.encode(self.text, forKey: .text);
        }
        
        try super.encode(to: container.superEncoder());
    }
        
    public func getAuthor() -> String? {
        return self.author;
    }
    public func getContent() -> StoryChildNodes? {
        return self.content;
    }
    public func getDateTime() -> Date? {
        return self.dateTime;
    }
    public func getInitial() -> String? {
        return self.initial;
    }
    public func getRangeEnd() -> DocumentPosition? {
        return self.rangeEnd;
    }
    public func getRangeStart() -> DocumentPosition? {
        return self.rangeStart;
    }
    public func getText() -> String? {
        return self.text;
    }
}
