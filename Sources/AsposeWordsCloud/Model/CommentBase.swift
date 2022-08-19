/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="CommentBase.swift">
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

// Comment.
@available(macOS 10.12, iOS 10.3, watchOS 3.3, tvOS 12.0, *)
public class CommentBase : Codable, WordsApiModel {
    // Field of author. Comment.
    private var _author : String? = nil;

    public var author : String? {
        get {
            return self._author;
        }
        set {
            self._author = newValue;
        }
    }

    // Field of dateTime. Comment.
    private var _dateTime : Date? = nil;

    public var dateTime : Date? {
        get {
            return self._dateTime;
        }
        set {
            self._dateTime = newValue;
        }
    }

    // Field of initial. Comment.
    private var _initial : String? = nil;

    public var initial : String? {
        get {
            return self._initial;
        }
        set {
            self._initial = newValue;
        }
    }

    // Field of rangeEnd. Comment.
    private var _rangeEnd : DocumentPosition? = nil;

    public var rangeEnd : DocumentPosition? {
        get {
            return self._rangeEnd;
        }
        set {
            self._rangeEnd = newValue;
        }
    }

    // Field of rangeStart. Comment.
    private var _rangeStart : DocumentPosition? = nil;

    public var rangeStart : DocumentPosition? {
        get {
            return self._rangeStart;
        }
        set {
            self._rangeStart = newValue;
        }
    }

    // Field of text. Comment.
    private var _text : String? = nil;

    public var text : String? {
        get {
            return self._text;
        }
        set {
            self._text = newValue;
        }
    }

    private enum CodingKeys: String, CodingKey {
        case author = "Author";
        case dateTime = "DateTime";
        case initial = "Initial";
        case rangeEnd = "RangeEnd";
        case rangeStart = "RangeStart";
        case text = "Text";
        case invalidCodingKey;
    }

    internal init() {
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.author = try container.decodeIfPresent(String.self, forKey: .author);
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

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.author != nil) {
            try container.encode(self.author, forKey: .author);
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

    public func collectFilesContent(resultFilesContent : [FileContent]) {
        if (self.rangeEnd != nil)
        {
            self.rangeEnd!.collectFilesContent(resultFilesContent: resultFilesContent);
        }

        if (self.rangeStart != nil)
        {
            self.rangeStart!.collectFilesContent(resultFilesContent: resultFilesContent);
        }


    }

    // Sets author. Gets or sets the author name for a comment.
    public func setAuthor(author : String?) -> CommentBase {
        self.author = author;
        return self;
    }

    // Gets author. Gets or sets the author name for a comment.
    public func getAuthor() -> String? {
        return self.author;
    }


    // Sets dateTime. Gets or sets the date and time that the comment was made.
    public func setDateTime(dateTime : Date?) -> CommentBase {
        self.dateTime = dateTime;
        return self;
    }

    // Gets dateTime. Gets or sets the date and time that the comment was made.
    public func getDateTime() -> Date? {
        return self.dateTime;
    }


    // Sets initial. Gets or sets the initials of the user associated with a specific comment.
    public func setInitial(initial : String?) -> CommentBase {
        self.initial = initial;
        return self;
    }

    // Gets initial. Gets or sets the initials of the user associated with a specific comment.
    public func getInitial() -> String? {
        return self.initial;
    }


    // Sets rangeEnd. Gets or sets the link to comment range end node.
    public func setRangeEnd(rangeEnd : DocumentPosition?) -> CommentBase {
        self.rangeEnd = rangeEnd;
        return self;
    }

    // Gets rangeEnd. Gets or sets the link to comment range end node.
    public func getRangeEnd() -> DocumentPosition? {
        return self.rangeEnd;
    }


    // Sets rangeStart. Gets or sets the link to comment range start node.
    public func setRangeStart(rangeStart : DocumentPosition?) -> CommentBase {
        self.rangeStart = rangeStart;
        return self;
    }

    // Gets rangeStart. Gets or sets the link to comment range start node.
    public func getRangeStart() -> DocumentPosition? {
        return self.rangeStart;
    }


    // Sets text. Gets or sets text of the comment.
    public func setText(text : String?) -> CommentBase {
        self.text = text;
        return self;
    }

    // Gets text. Gets or sets text of the comment.
    public func getText() -> String? {
        return self.text;
    }
}
