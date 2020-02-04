/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="Section.swift">
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

public class Section : LinkElement, WordsApiModel {
        
    // Gets or sets child nodes.
    private var childNodes : [NodeLink]?;
    // Gets or sets link to HeaderFooters resource.
    private var headerFooters : LinkElement?;
    // Gets or sets link to PageSetup resource.
    private var pageSetup : LinkElement?;
    // Gets or sets link to Paragraphs resource.
    private var paragraphs : LinkElement?;
    // Gets or sets link to Tables resource.
    private var tables : LinkElement?;
        
    private enum CodingKeys: String, CodingKey {
        case childNodes;
        case headerFooters;
        case pageSetup;
        case paragraphs;
        case tables;
        case invalidCodingKey;
    }
        
    public override init() {
        super.init();
    }
    
    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder);
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.childNodes = try container.decodeIfPresent([NodeLink].self, forKey: .childNodes);
        self.headerFooters = try container.decodeIfPresent(LinkElement.self, forKey: .headerFooters);
        self.pageSetup = try container.decodeIfPresent(LinkElement.self, forKey: .pageSetup);
        self.paragraphs = try container.decodeIfPresent(LinkElement.self, forKey: .paragraphs);
        self.tables = try container.decodeIfPresent(LinkElement.self, forKey: .tables);
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder);
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.childNodes != nil) {
            try container.encode(self.childNodes, forKey: .childNodes);
        }
        if (self.headerFooters != nil) {
            try container.encode(self.headerFooters, forKey: .headerFooters);
        }
        if (self.pageSetup != nil) {
            try container.encode(self.pageSetup, forKey: .pageSetup);
        }
        if (self.paragraphs != nil) {
            try container.encode(self.paragraphs, forKey: .paragraphs);
        }
        if (self.tables != nil) {
            try container.encode(self.tables, forKey: .tables);
        }
    }
        
    public func setChildNodes(childNodes : [NodeLink]?) {
        self.childNodes = childNodes;
    }
    
    public func getChildNodes() -> [NodeLink]? {
        return self.childNodes;
    }
    public func setHeaderFooters(headerFooters : LinkElement?) {
        self.headerFooters = headerFooters;
    }
    
    public func getHeaderFooters() -> LinkElement? {
        return self.headerFooters;
    }
    public func setPageSetup(pageSetup : LinkElement?) {
        self.pageSetup = pageSetup;
    }
    
    public func getPageSetup() -> LinkElement? {
        return self.pageSetup;
    }
    public func setParagraphs(paragraphs : LinkElement?) {
        self.paragraphs = paragraphs;
    }
    
    public func getParagraphs() -> LinkElement? {
        return self.paragraphs;
    }
    public func setTables(tables : LinkElement?) {
        self.tables = tables;
    }
    
    public func getTables() -> LinkElement? {
        return self.tables;
    }
}
