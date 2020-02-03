/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="HeaderFooter.swift">
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

public class HeaderFooter : HeaderFooterLink {
        
    // Gets or sets child nodes.
    private let childNodes : [NodeLink]?;
    // Gets or sets link to DrawingObjects resource.
    private let drawingObjects : LinkElement?;
    // Gets or sets link to Paragraphs resource.
    private let paragraphs : LinkElement?;
        
    private enum CodingKeys: String, CodingKey { case childNodes, drawingObjects, paragraphs }
        
    public init(childNodes : [NodeLink]? = nil, drawingObjects : LinkElement? = nil, paragraphs : LinkElement? = nil) {
        self.childNodes = childNodes;
        self.drawingObjects = drawingObjects;
        self.paragraphs = paragraphs;
    }
    
    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self);
        try super.init(from: try container.superDecoder());
        if let childNodes = try container.decodeIfPresent([NodeLink].self, forKey: .childNodes) {
            self.childNodes = childNodes;
        }
        if let drawingObjects = try container.decodeIfPresent(LinkElement.self, forKey: .drawingObjects) {
            self.drawingObjects = drawingObjects;
        }
        if let paragraphs = try container.decodeIfPresent(LinkElement.self, forKey: .paragraphs) {
            self.paragraphs = paragraphs;
        }

    }

    public override func encode(to encoder: Encoder) throws {
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
        
        try super.encode(to: container.superEncoder());
    }
        
    public func getChildNodes() -> [NodeLink]? {
        return self.childNodes;
    }
    public func getDrawingObjects() -> LinkElement? {
        return self.drawingObjects;
    }
    public func getParagraphs() -> LinkElement? {
        return self.paragraphs;
    }
}
