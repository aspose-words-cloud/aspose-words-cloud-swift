/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="SearchResponse.swift">
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

public class SearchResponse : WordsResponse {
        
    // Gets or sets a regular expression pattern used to find matches.
    private let searchingPattern : String?;
    // Gets or sets collection of search results.
    private let searchResults : SearchResultsCollection?;
        
    private enum CodingKeys: String, CodingKey { case searchingPattern, searchResults }
        
    public init(searchingPattern : String? = nil, searchResults : SearchResultsCollection? = nil) {
        self.searchingPattern = searchingPattern;
        self.searchResults = searchResults;
    }
    
    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self);
        try super.init(from: try container.superDecoder());
        if let searchingPattern = try container.decodeIfPresent(String.self, forKey: .searchingPattern) {
            self.searchingPattern = searchingPattern;
        }
        if let searchResults = try container.decodeIfPresent(SearchResultsCollection.self, forKey: .searchResults) {
            self.searchResults = searchResults;
        }

    }

    public override func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.searchingPattern != nil) {
            try container.encode(self.searchingPattern, forKey: .searchingPattern);
        }
        if (self.searchResults != nil) {
            try container.encode(self.searchResults, forKey: .searchResults);
        }
        
        try super.encode(to: container.superEncoder());
    }
        
    public func getSearchingPattern() -> String? {
        return self.searchingPattern;
    }
    public func getSearchResults() -> SearchResultsCollection? {
        return self.searchResults;
    }
}
