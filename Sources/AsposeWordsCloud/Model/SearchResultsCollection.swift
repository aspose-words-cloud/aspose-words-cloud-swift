/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="SearchResultsCollection.swift">
 *   Copyright (c) 2025 Aspose.Words for Cloud
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

// The collection of search results.
public class SearchResultsCollection : LinkElement {
    // Field of resultsList. The collection of search results.
    private var _resultsList : [SearchResult]? = nil;

    public var resultsList : [SearchResult]? {
        get {
            return self._resultsList;
        }
        set {
            self._resultsList = newValue;
        }
    }

    private enum CodingKeys: String, CodingKey {
        case resultsList = "ResultsList";
        case invalidCodingKey;
    }

    public override init() {
        super.init();
    }

    public required init(from json: [String: Any]) throws {
        try super.init(from: json);
        if let raw_resultsList = json["ResultsList"] as? [Any] {
            self.resultsList = try raw_resultsList.map {
                if let element_resultsList = $0 as? [String: Any] {
                    return try ObjectSerializer.deserialize(type: SearchResult.self, from: element_resultsList);
                }
                else {
                    throw WordsApiError.invalidTypeDeserialization(typeName: "SearchResult");
                }
            };
        }

    }

    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder);
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.resultsList = try container.decodeIfPresent([SearchResult].self, forKey: .resultsList);
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder);
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.resultsList != nil) {
            try container.encode(self.resultsList, forKey: .resultsList);
        }
    }

    public override func collectFilesContent(_ resultFilesContent : inout [FileReference]) {
    }

    public override func validate() throws {
        try super.validate();
        if (self.resultsList != nil) {
            for elementResultsList in self.resultsList! {
                try elementResultsList.validate();
            }
        }

    }

    // Sets resultsList. Gets or sets the collection of comments.
    public func setResultsList(resultsList : [SearchResult]?) -> SearchResultsCollection {
        self.resultsList = resultsList;
        return self;
    }

    // Gets resultsList. Gets or sets the collection of comments.
    public func getResultsList() -> [SearchResult]? {
        return self.resultsList;
    }
}
