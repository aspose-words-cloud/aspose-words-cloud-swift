/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="SearchResult.swift">
 *   Copyright (c) 2022 Aspose.Words for Cloud
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

// Result of search operation.
@available(macOS 10.12, iOS 10.3, watchOS 3.3, tvOS 12.0, *)
public class SearchResult : Codable, WordsApiModel {
    // Field of rangeEnd. Result of search operation.
    private var _rangeEnd : DocumentPosition?;

    public var : DocumentPosition? {
        get {
            return self._rangeEnd;
        }
        set {
            self._rangeEnd = newValue;
        }
    }

    // Field of rangeStart. Result of search operation.
    private var _rangeStart : DocumentPosition?;

    public var : DocumentPosition? {
        get {
            return self._rangeStart;
        }
        set {
            self._rangeStart = newValue;
        }
    }

    private enum CodingKeys: String, CodingKey {
        case rangeEnd = "RangeEnd";
        case rangeStart = "RangeStart";
        case invalidCodingKey;
    }

    public init() {
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.rangeEnd = try container.decodeIfPresent(DocumentPosition.self, forKey: .rangeEnd);
        self.rangeStart = try container.decodeIfPresent(DocumentPosition.self, forKey: .rangeStart);
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.rangeEnd != nil) {
            try container.encode(self.rangeEnd, forKey: .rangeEnd);
        }
        if (self.rangeStart != nil) {
            try container.encode(self.rangeStart, forKey: .rangeStart);
        }
    }

    // Sets rangeEnd. Gets or sets the link to result range end node.
    public func setRangeEnd(rangeEnd : DocumentPosition?) -> SearchResult {
        self.rangeEnd = rangeEnd;
        return self;
    }

    // Gets rangeEnd. Gets or sets the link to result range end node.
    public func getRangeEnd() -> DocumentPosition? {
        return self.rangeEnd;
    }


    // Sets rangeStart. Gets or sets the link to result range start node.
    public func setRangeStart(rangeStart : DocumentPosition?) -> SearchResult {
        self.rangeStart = rangeStart;
        return self;
    }

    // Gets rangeStart. Gets or sets the link to result range start node.
    public func getRangeStart() -> DocumentPosition? {
        return self.rangeStart;
    }
}
