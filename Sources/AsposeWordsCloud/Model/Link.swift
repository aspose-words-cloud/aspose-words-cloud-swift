/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="Link.swift">
 *   Copyright (c) 2021 Aspose.Words for Cloud
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

// Provides information for the object link.
// This is supposed to be an atom:link, therefore it should have all attributes specified here http://tools.ietf.org/html/rfc4287#section-4.2.7.
public class Link : Codable, WordsApiModel {
    // Field of href. Provides information for the object link. This is supposed to be an atom:link, therefore it should have all attributes specified here http://tools.ietf.org/html/rfc4287#section-4.2.7.
    private var href : String?;

    // Field of rel. Provides information for the object link. This is supposed to be an atom:link, therefore it should have all attributes specified here http://tools.ietf.org/html/rfc4287#section-4.2.7.
    private var rel : String?;

    // Field of title. Provides information for the object link. This is supposed to be an atom:link, therefore it should have all attributes specified here http://tools.ietf.org/html/rfc4287#section-4.2.7.
    private var title : String?;

    // Field of type. Provides information for the object link. This is supposed to be an atom:link, therefore it should have all attributes specified here http://tools.ietf.org/html/rfc4287#section-4.2.7.
    private var type : String?;

    private enum CodingKeys: String, CodingKey {
        case href = "Href";
        case rel = "Rel";
        case title = "Title";
        case type = "Type";
        case invalidCodingKey;
    }

    public init() {
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.href = try container.decodeIfPresent(String.self, forKey: .href);
        self.rel = try container.decodeIfPresent(String.self, forKey: .rel);
        self.title = try container.decodeIfPresent(String.self, forKey: .title);
        self.type = try container.decodeIfPresent(String.self, forKey: .type);
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.href != nil) {
            try container.encode(self.href, forKey: .href);
        }
        if (self.rel != nil) {
            try container.encode(self.rel, forKey: .rel);
        }
        if (self.title != nil) {
            try container.encode(self.title, forKey: .title);
        }
        if (self.type != nil) {
            try container.encode(self.type, forKey: .type);
        }
    }

    // Sets href. Gets or sets the "href" attribute with the link's IRI. atom:link elements MUST have an href attribute, whose value MUST be a IRI reference.
    public func setHref(href : String?) {
        self.href = href;
    }

    // Gets href. Gets or sets the "href" attribute with the link's IRI. atom:link elements MUST have an href attribute, whose value MUST be a IRI reference.
    public func getHref() -> String? {
        return self.href;
    }

    // Sets rel. Gets or sets the option that controls whether atom:link elements MAY have a "rel" attribute that indicates the link relation type.  If the "rel" attribute is not present, the link element MUST be interpreted as if the link relation type is "alternate".
    public func setRel(rel : String?) {
        self.rel = rel;
    }

    // Gets rel. Gets or sets the option that controls whether atom:link elements MAY have a "rel" attribute that indicates the link relation type.  If the "rel" attribute is not present, the link element MUST be interpreted as if the link relation type is "alternate".
    public func getRel() -> String? {
        return self.rel;
    }

    // Sets title. Gets or sets the "title" attribute, that conveys human-readable information about the link. The content of the "title" attribute is Language-Sensitive.
    public func setTitle(title : String?) {
        self.title = title;
    }

    // Gets title. Gets or sets the "title" attribute, that conveys human-readable information about the link. The content of the "title" attribute is Language-Sensitive.
    public func getTitle() -> String? {
        return self.title;
    }

    // Sets type. Gets or sets the "type" attribute. The "type" attribute's value is an advisory media type: it is a hint about the type of the representation that is expected to be returned when the value of the href attribute is dereferenced. Note that the type attribute does not override the actual media type returned with the representation.
    public func setType(type : String?) {
        self.type = type;
    }

    // Gets type. Gets or sets the "type" attribute. The "type" attribute's value is an advisory media type: it is a hint about the type of the representation that is expected to be returned when the value of the href attribute is dereferenced. Note that the type attribute does not override the actual media type returned with the representation.
    public func getType() -> String? {
        return self.type;
    }
}
