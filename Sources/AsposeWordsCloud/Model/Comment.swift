/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="Comment.swift">
 *   Copyright (c) 2022 Aspose.Words for Cloud
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

// DTO container with a comment.
@available(macOS 10.12, iOS 10.3, watchOS 3.3, tvOS 12.0, *)
public class Comment : CommentLink {
    // Field of author. DTO container with a comment.
    public var author : String?;

    // Field of content. DTO container with a comment.
    public var content : StoryChildNodes?;

    // Field of dateTime. DTO container with a comment.
    public var dateTime : Date?;

    // Field of initial. DTO container with a comment.
    public var initial : String?;

    // Field of rangeEnd. DTO container with a comment.
    public var rangeEnd : DocumentPosition?;

    // Field of rangeStart. DTO container with a comment.
    public var rangeStart : DocumentPosition?;

    // Field of text. DTO container with a comment.
    public var text : String?;

    private enum CodingKeys: String, CodingKey {
        case author = "Author";
        case content = "Content";
        case dateTime = "DateTime";
        case initial = "Initial";
        case rangeEnd = "RangeEnd";
        case rangeStart = "RangeStart";
        case text = "Text";
        case invalidCodingKey;
    }

    public override init() {
        super.init();
    }

    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder);
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.author = try container.decodeIfPresent(String.self, forKey: .author);
        self.content = try container.decodeIfPresent(StoryChildNodes.self, forKey: .content);
        var raw_dateTime = try container.decodeIfPresent(String.self, forKey: .dateTime);
        if (raw_dateTime != nil) {
            raw_dateTime = raw_dateTime!.replacingOccurrences(of: "\\.\\d+", with: "", options: .regularExpression);
            self.dateTime = ObjectSerializer.customIso8601.date(from: raw_dateTime!)!;
        }

        self.initial = try container.decodeIfPresent(String.self, forKey: .initial);
        self.rangeEnd = try container.decodeIfPresent(DocumentPosition.self, forKey: .rangeEnd);
        self.rangeStart = try container.decodeIfPresent(DocumentPosition.self, forKey: .rangeStart);
        self.text = try container.decodeIfPresent(String.self, forKey: .text);
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder);
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
    }

    // Sets author. Gets or sets the author name for a comment.
    public func setAuthor(author : String?) -> Comment {
        self.author = author;
        return self;
    }

    // Gets author. Gets or sets the author name for a comment.
    public func getAuthor() -> String? {
        return self.author;
    }

    // Sets content. Gets or sets the content of the comment.
    public func setContent(content : StoryChildNodes?) -> Comment {
        self.content = content;
        return self;
    }

    // Gets content. Gets or sets the content of the comment.
    public func getContent() -> StoryChildNodes? {
        return self.content;
    }

    // Sets dateTime. Gets or sets the date and time that the comment was made.
    public func setDateTime(dateTime : Date?) -> Comment {
        self.dateTime = dateTime;
        return self;
    }

    // Gets dateTime. Gets or sets the date and time that the comment was made.
    public func getDateTime() -> Date? {
        return self.dateTime;
    }

    // Sets initial. Gets or sets the initials of the user associated with a specific comment.
    public func setInitial(initial : String?) -> Comment {
        self.initial = initial;
        return self;
    }

    // Gets initial. Gets or sets the initials of the user associated with a specific comment.
    public func getInitial() -> String? {
        return self.initial;
    }

    // Sets rangeEnd. Gets or sets the link to comment range end node.
    public func setRangeEnd(rangeEnd : DocumentPosition?) -> Comment {
        self.rangeEnd = rangeEnd;
        return self;
    }

    // Gets rangeEnd. Gets or sets the link to comment range end node.
    public func getRangeEnd() -> DocumentPosition? {
        return self.rangeEnd;
    }

    // Sets rangeStart. Gets or sets the link to comment range start node.
    public func setRangeStart(rangeStart : DocumentPosition?) -> Comment {
        self.rangeStart = rangeStart;
        return self;
    }

    // Gets rangeStart. Gets or sets the link to comment range start node.
    public func getRangeStart() -> DocumentPosition? {
        return self.rangeStart;
    }

    // Sets text. Gets or sets text of the comment.
    public func setText(text : String?) -> Comment {
        self.text = text;
        return self;
    }

    // Gets text. Gets or sets text of the comment.
    public func getText() -> String? {
        return self.text;
    }
}
