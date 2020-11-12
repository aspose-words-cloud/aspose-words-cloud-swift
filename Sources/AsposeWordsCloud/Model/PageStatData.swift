/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="PageStatData.swift">
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

// Container for the page's statistical data.
public class PageStatData : Codable, WordsApiModel {
    // Field of footnotesStatData. Container for the page's statistical data.
    private var footnotesStatData : FootnotesStatData?;

    // Field of pageNumber. Container for the page's statistical data.
    private var pageNumber : Int?;

    // Field of paragraphCount. Container for the page's statistical data.
    private var paragraphCount : Int?;

    // Field of wordCount. Container for the page's statistical data.
    private var wordCount : Int?;

    private enum CodingKeys: String, CodingKey {
        case footnotesStatData = "FootnotesStatData";
        case pageNumber = "PageNumber";
        case paragraphCount = "ParagraphCount";
        case wordCount = "WordCount";
        case invalidCodingKey;
    }

    public init() {
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.footnotesStatData = try container.decodeIfPresent(FootnotesStatData.self, forKey: .footnotesStatData);
        self.pageNumber = try container.decodeIfPresent(Int.self, forKey: .pageNumber);
        self.paragraphCount = try container.decodeIfPresent(Int.self, forKey: .paragraphCount);
        self.wordCount = try container.decodeIfPresent(Int.self, forKey: .wordCount);
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.footnotesStatData != nil) {
            try container.encode(self.footnotesStatData, forKey: .footnotesStatData);
        }
        if (self.pageNumber != nil) {
            try container.encode(self.pageNumber, forKey: .pageNumber);
        }
        if (self.paragraphCount != nil) {
            try container.encode(self.paragraphCount, forKey: .paragraphCount);
        }
        if (self.wordCount != nil) {
            try container.encode(self.wordCount, forKey: .wordCount);
        }
    }

    // Sets footnotesStatData. Gets or sets detailed statistics of footnotes.
    public func setFootnotesStatData(footnotesStatData : FootnotesStatData?) {
        self.footnotesStatData = footnotesStatData;
    }

    // Gets footnotesStatData. Gets or sets detailed statistics of footnotes.
    public func getFootnotesStatData() -> FootnotesStatData? {
        return self.footnotesStatData;
    }

    // Sets pageNumber. Gets or sets page number.
    public func setPageNumber(pageNumber : Int?) {
        self.pageNumber = pageNumber;
    }

    // Gets pageNumber. Gets or sets page number.
    public func getPageNumber() -> Int? {
        return self.pageNumber;
    }

    // Sets paragraphCount. Gets or sets total count of paragraphs in the page.
    public func setParagraphCount(paragraphCount : Int?) {
        self.paragraphCount = paragraphCount;
    }

    // Gets paragraphCount. Gets or sets total count of paragraphs in the page.
    public func getParagraphCount() -> Int? {
        return self.paragraphCount;
    }

    // Sets wordCount. Gets or sets total count of words in the page.
    public func setWordCount(wordCount : Int?) {
        self.wordCount = wordCount;
    }

    // Gets wordCount. Gets or sets total count of words in the page.
    public func getWordCount() -> Int? {
        return self.wordCount;
    }
}
