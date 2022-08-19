/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="HeaderFooter.swift">
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

// DTO container with a section element.
@available(macOS 10.12, iOS 10.3, watchOS 3.3, tvOS 12.0, *)
public class HeaderFooter : HeaderFooterLink {
    // Field of childNodes. DTO container with a section element.
    private var _childNodes : [NodeLink]? = nil;

    public var childNodes : [NodeLink]? {
        get {
            return self._childNodes;
        }
        set {
            self._childNodes = newValue;
        }
    }

    // Field of drawingObjects. DTO container with a section element.
    private var _drawingObjects : LinkElement? = nil;

    public var drawingObjects : LinkElement? {
        get {
            return self._drawingObjects;
        }
        set {
            self._drawingObjects = newValue;
        }
    }

    // Field of paragraphs. DTO container with a section element.
    private var _paragraphs : LinkElement? = nil;

    public var paragraphs : LinkElement? {
        get {
            return self._paragraphs;
        }
        set {
            self._paragraphs = newValue;
        }
    }

    private enum CodingKeys: String, CodingKey {
        case childNodes = "ChildNodes";
        case drawingObjects = "DrawingObjects";
        case paragraphs = "Paragraphs";
        case invalidCodingKey;
    }

    public override init() {
        super.init();
    }

    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder);
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.childNodes = try container.decodeIfPresent([NodeLink].self, forKey: .childNodes);
        self.drawingObjects = try container.decodeIfPresent(LinkElement.self, forKey: .drawingObjects);
        self.paragraphs = try container.decodeIfPresent(LinkElement.self, forKey: .paragraphs);
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder);
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.childNodes != nil) {
            try container.encode(self.childNodes, forKey: .childNodes);
        }
        if (self.drawingObjects != nil) {
            try container.encode(self.drawingObjects, forKey: .drawingObjects);
        }
        if (self.paragraphs != nil) {
            try container.encode(self.paragraphs, forKey: .paragraphs);
        }
    }

    public override func collectFilesContent(resultFilesContent : [FileContent]) {
        super.collectFilesContent(resultFilesContent: resultFilesContent);
        if (self.childNodes != nil)
        {
            for element in self.childNodes! {
                element.collectFilesContent(resultFilesContent: resultFilesContent);
            }
        }

        if (self.drawingObjects != nil)
        {
            self.drawingObjects!.collectFilesContent(resultFilesContent: resultFilesContent);
        }

        if (self.paragraphs != nil)
        {
            self.paragraphs!.collectFilesContent(resultFilesContent: resultFilesContent);
        }

    }

    // Sets childNodes. Gets or sets the child nodes.
    public func setChildNodes(childNodes : [NodeLink]?) -> HeaderFooter {
        self.childNodes = childNodes;
        return self;
    }

    // Gets childNodes. Gets or sets the child nodes.
    public func getChildNodes() -> [NodeLink]? {
        return self.childNodes;
    }


    // Sets drawingObjects. Gets or sets the link to DrawingObjects resource.
    public func setDrawingObjects(drawingObjects : LinkElement?) -> HeaderFooter {
        self.drawingObjects = drawingObjects;
        return self;
    }

    // Gets drawingObjects. Gets or sets the link to DrawingObjects resource.
    public func getDrawingObjects() -> LinkElement? {
        return self.drawingObjects;
    }


    // Sets paragraphs. Gets or sets the link to Paragraphs resource.
    public func setParagraphs(paragraphs : LinkElement?) -> HeaderFooter {
        self.paragraphs = paragraphs;
        return self;
    }

    // Gets paragraphs. Gets or sets the link to Paragraphs resource.
    public func getParagraphs() -> LinkElement? {
        return self.paragraphs;
    }
}
