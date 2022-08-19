/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="SplitDocumentResult.swift">
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

// Result of splitting document.
@available(macOS 10.12, iOS 10.3, watchOS 3.3, tvOS 12.0, *)
public class SplitDocumentResult : Codable, WordsApiModel {
    // Field of pages. Result of splitting document.
    private var _pages : [FileLink]? = nil;

    public var pages : [FileLink]? {
        get {
            return self._pages;
        }
        set {
            self._pages = newValue;
        }
    }

    // Field of sourceDocument. Result of splitting document.
    private var _sourceDocument : FileLink? = nil;

    public var sourceDocument : FileLink? {
        get {
            return self._sourceDocument;
        }
        set {
            self._sourceDocument = newValue;
        }
    }

    // Field of zippedPages. Result of splitting document.
    private var _zippedPages : FileLink? = nil;

    public var zippedPages : FileLink? {
        get {
            return self._zippedPages;
        }
        set {
            self._zippedPages = newValue;
        }
    }

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

    public func collectFilesContent(resultFilesContent : [FileContent]) {
        if (self.pages != nil)
        {
            self.pages!.forEach {
                $0.collectFilesContent(resultFilesContent);
            }
        }

        if (self.sourceDocument != nil)
        {
            self.sourceDocument!.collectFilesContent(resultFilesContent);
        }

        if (self.zippedPages != nil)
        {
            self.zippedPages!.collectFilesContent(resultFilesContent);
        }

    }

    // Sets pages. Gets or sets the list of pages.
    public func setPages(pages : [FileLink]?) -> SplitDocumentResult {
        self.pages = pages;
        return self;
    }

    // Gets pages. Gets or sets the list of pages.
    public func getPages() -> [FileLink]? {
        return self.pages;
    }


    // Sets sourceDocument. Gets or sets the link to the source document.
    public func setSourceDocument(sourceDocument : FileLink?) -> SplitDocumentResult {
        self.sourceDocument = sourceDocument;
        return self;
    }

    // Gets sourceDocument. Gets or sets the link to the source document.
    public func getSourceDocument() -> FileLink? {
        return self.sourceDocument;
    }


    // Sets zippedPages. Gets or sets the link to the file archive with pages.
    public func setZippedPages(zippedPages : FileLink?) -> SplitDocumentResult {
        self.zippedPages = zippedPages;
        return self;
    }

    // Gets zippedPages. Gets or sets the link to the file archive with pages.
    public func getZippedPages() -> FileLink? {
        return self.zippedPages;
    }
}
