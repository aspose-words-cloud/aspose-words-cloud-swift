/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="FootnotesStatData.swift">
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

// Container for the footnotes statistical data.
public class FootnotesStatData : Codable, WordsApiModel {
    
    // Field of wordCount. Gets or sets total count of words in footnotes.      
    private var wordCount : Int?;
    
    // Field of paragraphCount. Gets or sets total count of paragraphs in footnotes.      
    private var paragraphCount : Int?;
        
    private enum CodingKeys: String, CodingKey {
        case wordCount;
        case paragraphCount;
        case invalidCodingKey;
    }
        
    public init() {
        
    }
    
    public required init(from decoder: Decoder) throws {
        
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.wordCount = try container.decode(Int.self, forKey: .wordCount);
        self.paragraphCount = try container.decode(Int.self, forKey: .paragraphCount);
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
    }
    
    // Sets wordCount. Gets or sets total count of words in footnotes.  
    public func setWordCount(wordCount : Int) {
        self.wordCount = wordCount;
    }
    
    // Gets wordCount. Gets or sets total count of words in footnotes.  
    public func getWordCount() -> Int {
        return self.wordCount!;
    }
    
    // Sets paragraphCount. Gets or sets total count of paragraphs in footnotes.  
    public func setParagraphCount(paragraphCount : Int) {
        self.paragraphCount = paragraphCount;
    }
    
    // Gets paragraphCount. Gets or sets total count of paragraphs in footnotes.  
    public func getParagraphCount() -> Int {
        return self.paragraphCount!;
    }
}
