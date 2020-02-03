/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="PageStatData.swift">
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

public class PageStatData : Codable {
        
    // Gets or sets page number.
    private var pageNumber : Int?;
    // Gets or sets total count of words in the page.
    private var wordCount : Int?;
    // Gets or sets total count of paragraphs in the page.
    private var paragraphCount : Int?;
    // Gets or sets detailed statistics of footnotes.
    private var footnotesStatData : FootnotesStatData?;
        
    private enum CodingKeys: String, CodingKey {
        case pageNumber;
        case wordCount;
        case paragraphCount;
        case footnotesStatData;
        case invalidCodingKey;
    }
        
    public init() {
        
    }
    
    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self);
        
        self.pageNumber = try container.decode(Int.self, forKey: .pageNumber);
        self.wordCount = try container.decode(Int.self, forKey: .wordCount);
        self.paragraphCount = try container.decode(Int.self, forKey: .paragraphCount);
        self.footnotesStatData = try container.decodeIfPresent(FootnotesStatData.self, forKey: .footnotesStatData);
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.pageNumber == nil) {
            throw WordsApiError.requiredArgumentError("pageNumber");
        }
        try container.encode(self.pageNumber, forKey: .pageNumber);
        if (self.wordCount == nil) {
            throw WordsApiError.requiredArgumentError("wordCount");
        }
        try container.encode(self.wordCount, forKey: .wordCount);
        if (self.paragraphCount == nil) {
            throw WordsApiError.requiredArgumentError("paragraphCount");
        }
        try container.encode(self.paragraphCount, forKey: .paragraphCount);
        if (self.footnotesStatData != nil) {
            try container.encode(self.footnotesStatData, forKey: .footnotesStatData);
        }
        
    }
        
    public func setPageNumber(pageNumber : Int) {
        self.pageNumber = pageNumber;
    }
    
    public func getPageNumber() -> Int {
        return self.pageNumber!;
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
    public func setFootnotesStatData(footnotesStatData : FootnotesStatData?) {
        self.footnotesStatData = footnotesStatData;
    }
    
    public func getFootnotesStatData() -> FootnotesStatData? {
        return self.footnotesStatData;
    }
}
