/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="Footnote.swift">
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

// Footnote.
public class Footnote : FootnoteLink {
    // Gets or sets returns a value that specifies whether this is a footnote or endnote.
    public enum FootnoteType : String, Codable
    {
        // Enum value "footnote"
        case footnote = "Footnote"

        // Enum value "endnote"
        case endnote = "Endnote"
    }

    // Field of content. Footnote.
    private var content : StoryChildNodes?;

    // Field of footnoteType. Footnote.
    private var footnoteType : FootnoteType?;

    // Field of position. Footnote.
    private var position : DocumentPosition?;

    // Field of referenceMark. Footnote.
    private var referenceMark : String?;

    // Field of text. Footnote.
    private var text : String?;

    private enum CodingKeys: String, CodingKey {
        case content = "Content";
        case footnoteType = "FootnoteType";
        case position = "Position";
        case referenceMark = "ReferenceMark";
        case text = "Text";
        case invalidCodingKey;
    }

    public override init() {
        super.init();
    }

    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder);
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.content = try container.decodeIfPresent(StoryChildNodes.self, forKey: .content);
        self.footnoteType = try container.decodeIfPresent(FootnoteType.self, forKey: .footnoteType);
        self.position = try container.decodeIfPresent(DocumentPosition.self, forKey: .position);
        self.referenceMark = try container.decodeIfPresent(String.self, forKey: .referenceMark);
        self.text = try container.decodeIfPresent(String.self, forKey: .text);
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder);
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.content != nil) {
            try container.encode(self.content, forKey: .content);
        }
        if (self.footnoteType != nil) {
            try container.encode(self.footnoteType, forKey: .footnoteType);
        }
        if (self.position != nil) {
            try container.encode(self.position, forKey: .position);
        }
        if (self.referenceMark != nil) {
            try container.encode(self.referenceMark, forKey: .referenceMark);
        }
        if (self.text != nil) {
            try container.encode(self.text, forKey: .text);
        }
    }

    // Sets content. Gets or sets content of footnote.
    public func setContent(content : StoryChildNodes?) {
        self.content = content;
    }

    // Gets content. Gets or sets content of footnote.
    public func getContent() -> StoryChildNodes? {
        return self.content;
    }

    // Sets footnoteType. Gets or sets returns a value that specifies whether this is a footnote or endnote.
    public func setFootnoteType(footnoteType : FootnoteType?) {
        self.footnoteType = footnoteType;
    }

    // Gets footnoteType. Gets or sets returns a value that specifies whether this is a footnote or endnote.
    public func getFootnoteType() -> FootnoteType? {
        return self.footnoteType;
    }

    // Sets position. Gets or sets link to comment range start node.
    public func setPosition(position : DocumentPosition?) {
        self.position = position;
    }

    // Gets position. Gets or sets link to comment range start node.
    public func getPosition() -> DocumentPosition? {
        return self.position;
    }

    // Sets referenceMark. Gets or sets /sets custom reference mark to be used for this footnote. Default value is Empty, meaning auto-numbered footnotes are used.
    public func setReferenceMark(referenceMark : String?) {
        self.referenceMark = referenceMark;
    }

    // Gets referenceMark. Gets or sets /sets custom reference mark to be used for this footnote. Default value is Empty, meaning auto-numbered footnotes are used.
    public func getReferenceMark() -> String? {
        return self.referenceMark;
    }

    // Sets text. Gets or sets this is a convenience property that allows to easily get or set text of the footnote.
    public func setText(text : String?) {
        self.text = text;
    }

    // Gets text. Gets or sets this is a convenience property that allows to easily get or set text of the footnote.
    public func getText() -> String? {
        return self.text;
    }
}
