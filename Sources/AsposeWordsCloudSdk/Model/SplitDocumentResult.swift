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

public class SplitDocumentResult : Decodable {
        
    // Gets or sets linkt to the source document.
    private let sourceDocument : FileLink?;
    // Gets or sets array of pages.
    private let pages : [FileLink]?;
    // Gets or sets link to the file archive with pages.
    private let zippedPages : FileLink?;
        
    public init(sourceDocument : FileLink? = nil, pages : [FileLink]? = nil, zippedPages : FileLink? = nil) {
        self.sourceDocument = sourceDocument;
        self.pages = pages;
        self.zippedPages = zippedPages;
    }
        
    public func getSplitDocumentResult() -> FileLink? {
        return self.sourceDocument;
    }
    public func getSplitDocumentResult() -> [FileLink]? {
        return self.pages;
    }
    public func getSplitDocumentResult() -> FileLink? {
        return self.zippedPages;
    }
}
