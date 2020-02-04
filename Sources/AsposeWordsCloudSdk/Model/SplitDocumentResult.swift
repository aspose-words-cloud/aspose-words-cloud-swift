/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="SplitDocumentResult.swift">
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

public class SplitDocumentResult : Codable, WordsApiModel {
        
    // Gets or sets linkt to the source document.
    private var sourceDocument : FileLink?;
    // Gets or sets array of pages.
    private var pages : [FileLink]?;
    // Gets or sets link to the file archive with pages.
    private var zippedPages : FileLink?;
        
    private enum CodingKeys: String, CodingKey {
        case sourceDocument;
        case pages;
        case zippedPages;
        case invalidCodingKey;
    }
        
    public init() {
        
    }
    
    public required init(from decoder: Decoder) throws {
        
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.sourceDocument = try container.decodeIfPresent(FileLink.self, forKey: .sourceDocument);
        self.pages = try container.decodeIfPresent([FileLink].self, forKey: .pages);
        self.zippedPages = try container.decodeIfPresent(FileLink.self, forKey: .zippedPages);
    }

    public func encode(to encoder: Encoder) throws {
        
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.sourceDocument != nil) {
            try container.encode(self.sourceDocument, forKey: .sourceDocument);
        }
        if (self.pages != nil) {
            try container.encode(self.pages, forKey: .pages);
        }
        if (self.zippedPages != nil) {
            try container.encode(self.zippedPages, forKey: .zippedPages);
        }
    }
        
    public func setSourceDocument(sourceDocument : FileLink?) {
        self.sourceDocument = sourceDocument;
    }
    
    public func getSourceDocument() -> FileLink? {
        return self.sourceDocument;
    }
    public func setPages(pages : [FileLink]?) {
        self.pages = pages;
    }
    
    public func getPages() -> [FileLink]? {
        return self.pages;
    }
    public func setZippedPages(zippedPages : FileLink?) {
        self.zippedPages = zippedPages;
    }
    
    public func getZippedPages() -> FileLink? {
        return self.zippedPages;
    }
}
