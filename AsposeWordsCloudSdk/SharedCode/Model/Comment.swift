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
        
    public init(author : String? = nil, content : StoryChildNodes? = nil, dateTime : Date? = nil, initial : String? = nil, rangeEnd : DocumentPosition? = nil, rangeStart : DocumentPosition? = nil, text : String? = nil) {
        self.author = author;
        self.content = content;
        self.dateTime = dateTime;
        self.initial = initial;
        self.rangeEnd = rangeEnd;
        self.rangeStart = rangeStart;
        self.text = text;
    }
        
    public func getComment() -> String? {
        return self.author;
    }
    public func getComment() -> StoryChildNodes? {
        return self.content;
    }
    public func getComment() -> Date? {
        return self.dateTime;
    }
    public func getComment() -> String? {
        return self.initial;
    }
    public func getComment() -> DocumentPosition? {
        return self.rangeEnd;
    }
    public func getComment() -> DocumentPosition? {
        return self.rangeStart;
    }
    public func getComment() -> String? {
        return self.text;
    }
}
