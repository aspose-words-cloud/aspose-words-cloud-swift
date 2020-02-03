/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="ReplaceTextResponse.swift">
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

public class ReplaceTextResponse : WordsResponse {
        
    // Gets or sets link to the document.
    private let documentLink : FileLink?;
    // Gets or sets number of occurrences of the captured text in the document.
    private let matches : Int?;
        
    private enum CodingKeys: String, CodingKey {
        case documentLink;
        case matches;
    }
        
    public init(documentLink : FileLink? = nil, matches : Int? = nil) {
        self.documentLink = documentLink;
        self.matches = matches;
    }
    
    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self);
        try super.init(from: try container.superDecoder());
        self.documentLink = try container.decodeIfPresent(FileLink.self, forKey: .documentLink);
        self.matches = try container.decodeIfPresent(Int.self, forKey: .matches);
    }

    public override func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.documentLink != nil) {
            try container.encode(self.documentLink, forKey: .documentLink);
        }
        if (self.matches != nil) {
            try container.encode(self.matches, forKey: .matches);
        }
        try super.encode(to: container.superEncoder());
    }
        
    public func getDocumentLink() -> FileLink? {
        return self.documentLink;
    }
    public func getMatches() -> Int? {
        return self.matches;
    }
}