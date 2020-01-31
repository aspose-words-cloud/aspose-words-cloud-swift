/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="DocumentStatData.swift">
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

public class DocumentStatData : Decodable {
        
    // Gets or sets total count of words in the document.
    private let wordCount : Int;
    // Gets or sets total count of paragraphs in the document.
    private let paragraphCount : Int;
    // Gets or sets total count of pages in the document.
    private let pageCount : Int;
    // Gets or sets detailed statistics of footnotes.
    private let footnotesStatData : FootnotesStatData?;
    // Gets or sets detailed statistics of all pages.
    private let pageStatData : [PageStatData]?;
        
    public init(wordCount : Int, paragraphCount : Int, pageCount : Int, footnotesStatData : FootnotesStatData? = nil, pageStatData : [PageStatData]? = nil) {
        self.wordCount = wordCount;
        self.paragraphCount = paragraphCount;
        self.pageCount = pageCount;
        self.footnotesStatData = footnotesStatData;
        self.pageStatData = pageStatData;
    }
        
    public func getDocumentStatData() -> Int {
        return self.wordCount;
    }
    public func getDocumentStatData() -> Int {
        return self.paragraphCount;
    }
    public func getDocumentStatData() -> Int {
        return self.pageCount;
    }
    public func getDocumentStatData() -> FootnotesStatData? {
        return self.footnotesStatData;
    }
    public func getDocumentStatData() -> [PageStatData]? {
        return self.pageStatData;
    }
}
