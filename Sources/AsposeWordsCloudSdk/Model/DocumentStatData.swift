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

public class DocumentStatData : Codable {
        
    // Gets or sets total count of words in the document.
    private var wordCount : Int?;
    // Gets or sets total count of paragraphs in the document.
    private var paragraphCount : Int?;
    // Gets or sets total count of pages in the document.
    private var pageCount : Int?;
    // Gets or sets detailed statistics of footnotes.
    private var footnotesStatData : FootnotesStatData?;
    // Gets or sets detailed statistics of all pages.
    private var pageStatData : [PageStatData]?;
        
    private enum CodingKeys: String, CodingKey {
        case wordCount;
        case paragraphCount;
        case pageCount;
        case footnotesStatData;
        case pageStatData;
        case invalidCodingKey;
    }
        
    public init() {
        
    }
    
    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self);
        
        self.wordCount = try container.decode(Int.self, forKey: .wordCount);
        self.paragraphCount = try container.decode(Int.self, forKey: .paragraphCount);
        self.pageCount = try container.decode(Int.self, forKey: .pageCount);
        self.footnotesStatData = try container.decodeIfPresent(FootnotesStatData.self, forKey: .footnotesStatData);
        self.pageStatData = try container.decodeIfPresent([PageStatData].self, forKey: .pageStatData);
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.wordCount == nil) {
            throw WordsApiError.requiredArgumentError(argumentName: "wordCount");
        }
        try container.encode(self.wordCount, forKey: .wordCount);
        if (self.paragraphCount == nil) {
            throw WordsApiError.requiredArgumentError(argumentName: "paragraphCount");
        }
        try container.encode(self.paragraphCount, forKey: .paragraphCount);
        if (self.pageCount == nil) {
            throw WordsApiError.requiredArgumentError(argumentName: "pageCount");
        }
        try container.encode(self.pageCount, forKey: .pageCount);
        if (self.footnotesStatData != nil) {
            try container.encode(self.footnotesStatData, forKey: .footnotesStatData);
        }
        if (self.pageStatData != nil) {
            try container.encode(self.pageStatData, forKey: .pageStatData);
        }
        
    }
        
    public func setWordCount(wordCount : Int) {
        self.wordCount = wordCount;
    }
    
    public func getWordCount() -> Int {
        return self.wordCount!;
    }
    public func setParagraphCount(paragraphCount : Int) {
        self.paragraphCount = paragraphCount;
    }
    
    public func getParagraphCount() -> Int {
        return self.paragraphCount!;
    }
    public func setPageCount(pageCount : Int) {
        self.pageCount = pageCount;
    }
    
    public func getPageCount() -> Int {
        return self.pageCount!;
    }
    public func setFootnotesStatData(footnotesStatData : FootnotesStatData?) {
        self.footnotesStatData = footnotesStatData;
    }
    
    public func getFootnotesStatData() -> FootnotesStatData? {
        return self.footnotesStatData;
    }
    public func setPageStatData(pageStatData : [PageStatData]?) {
        self.pageStatData = pageStatData;
    }
    
    public func getPageStatData() -> [PageStatData]? {
        return self.pageStatData;
    }
}
