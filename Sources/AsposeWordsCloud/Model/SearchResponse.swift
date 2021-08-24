/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="SearchResponse.swift">
 *   Copyright (c) 2021 Aspose.Words for Cloud
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

// The REST response with a regular expression pattern and a collection of search results.
public class SearchResponse : WordsResponse {
    // Field of searchingPattern. The REST response with a regular expression pattern and a collection of search results.
    public var searchingPattern : String?;

    // Field of searchResults. The REST response with a regular expression pattern and a collection of search results.
    public var searchResults : SearchResultsCollection?;

    private enum CodingKeys: String, CodingKey {
        case searchingPattern = "SearchingPattern";
        case searchResults = "SearchResults";
        case invalidCodingKey;
    }

    public override init() {
        super.init();
    }

    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder);
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.searchingPattern = try container.decodeIfPresent(String.self, forKey: .searchingPattern);
        self.searchResults = try container.decodeIfPresent(SearchResultsCollection.self, forKey: .searchResults);
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder);
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.searchingPattern != nil) {
            try container.encode(self.searchingPattern, forKey: .searchingPattern);
        }
        if (self.searchResults != nil) {
            try container.encode(self.searchResults, forKey: .searchResults);
        }
    }

    // Sets searchingPattern. Gets or sets the regular expression pattern used to find matches.
    public func setSearchingPattern(searchingPattern : String?) -> SearchResponse {
        self.searchingPattern = searchingPattern;
        return self;
    }

    // Gets searchingPattern. Gets or sets the regular expression pattern used to find matches.
    public func getSearchingPattern() -> String? {
        return self.searchingPattern;
    }

    // Sets searchResults. Gets or sets the collection of search results.
    public func setSearchResults(searchResults : SearchResultsCollection?) -> SearchResponse {
        self.searchResults = searchResults;
        return self;
    }

    // Gets searchResults. Gets or sets the collection of search results.
    public func getSearchResults() -> SearchResultsCollection? {
        return self.searchResults;
    }
}
