/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="SplitDocumentResult.swift">
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

// Result of splitting document.
public class SplitDocumentResult : Codable, WordsApiModel {
    // Field of pages. Result of splitting document.
    private var pages : [FileLink]?;

    // Field of sourceDocument. Result of splitting document.
    private var sourceDocument : FileLink?;

    // Field of zippedPages. Result of splitting document.
    private var zippedPages : FileLink?;

    private enum CodingKeys: String, CodingKey {
        case pages = "Pages";
        case sourceDocument = "SourceDocument";
        case zippedPages = "ZippedPages";
        case invalidCodingKey;
    }

    public init() {
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.pages = try container.decodeIfPresent([FileLink].self, forKey: .pages);
        self.sourceDocument = try container.decodeIfPresent(FileLink.self, forKey: .sourceDocument);
        self.zippedPages = try container.decodeIfPresent(FileLink.self, forKey: .zippedPages);
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.pages != nil) {
            try container.encode(self.pages, forKey: .pages);
        }
        if (self.sourceDocument != nil) {
            try container.encode(self.sourceDocument, forKey: .sourceDocument);
        }
        if (self.zippedPages != nil) {
            try container.encode(self.zippedPages, forKey: .zippedPages);
        }
    }

    // Sets pages. Gets or sets array of pages.
    public func setPages(pages : [FileLink]?) {
        self.pages = pages;
    }

    // Gets pages. Gets or sets array of pages.
    public func getPages() -> [FileLink]? {
        return self.pages;
    }

    // Sets sourceDocument. Gets or sets linkt to the source document.
    public func setSourceDocument(sourceDocument : FileLink?) {
        self.sourceDocument = sourceDocument;
    }

    // Gets sourceDocument. Gets or sets linkt to the source document.
    public func getSourceDocument() -> FileLink? {
        return self.sourceDocument;
    }

    // Sets zippedPages. Gets or sets link to the file archive with pages.
    public func setZippedPages(zippedPages : FileLink?) {
        self.zippedPages = zippedPages;
    }

    // Gets zippedPages. Gets or sets link to the file archive with pages.
    public func getZippedPages() -> FileLink? {
        return self.zippedPages;
    }
}
