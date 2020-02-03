/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="Link.swift">
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

public class Link : Codable {
        
    // Gets or sets the \&quot;href\&quot; attribute contains the link&#39;s IRI. atom:link elements MUST have an href attribute, whose value MUST be a IRI reference.
    private let href : String?;
    // Gets or sets atom:link elements MAY have a \&quot;rel\&quot; attribute that indicates the link relation type.  If the \&quot;rel\&quot; attribute is not present, the link element MUST be interpreted as if the link relation type is \&quot;alternate\&quot;.
    private let rel : String?;
    // Gets or sets on the link element, the \&quot;type\&quot; attribute&#39;s value is an advisory media type: it is a hint about the type of the representation that is expected to be returned when the value of the href attribute is dereferenced.  Note that the type attribute does not override the actual media type returned with the representation.
    private let type : String?;
    // Gets or sets the \&quot;title\&quot; attribute conveys human-readable information about the link.  The content of the \&quot;title\&quot; attribute is Language-Sensitive.
    private let title : String?;
        
    private enum CodingKeys: String, CodingKey {
        case href;
        case rel;
        case type;
        case title;
    }
        
    public init(href : String? = nil, rel : String? = nil, type : String? = nil, title : String? = nil) {
        self.href = href;
        self.rel = rel;
        self.type = type;
        self.title = title;
    }
    
    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self);
        
        self.href = try container.decodeIfPresent(String.self, forKey: .href);
        self.rel = try container.decodeIfPresent(String.self, forKey: .rel);
        self.type = try container.decodeIfPresent(String.self, forKey: .type);
        self.title = try container.decodeIfPresent(String.self, forKey: .title);
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.href != nil) {
            try container.encode(self.href, forKey: .href);
        }
        if (self.rel != nil) {
            try container.encode(self.rel, forKey: .rel);
        }
        if (self.type != nil) {
            try container.encode(self.type, forKey: .type);
        }
        if (self.title != nil) {
            try container.encode(self.title, forKey: .title);
        }
        
    }
        
    public func getHref() -> String? {
        return self.href;
    }
    public func getRel() -> String? {
        return self.rel;
    }
    public func getType() -> String? {
        return self.type;
    }
    public func getTitle() -> String? {
        return self.title;
    }
}
