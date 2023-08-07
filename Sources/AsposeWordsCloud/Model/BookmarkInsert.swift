/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="BookmarkInsert.swift">
 *   Copyright (c) 2023 Aspose.Words for Cloud
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

// Represents a bookmark to insert.
@available(macOS 10.12, iOS 10.3, watchOS 3.3, tvOS 12.0, *)
public class BookmarkInsert : BookmarkData {
    // Field of endRange. Represents a bookmark to insert.
    private var _endRange : NewDocumentPosition? = nil;

    public var endRange : NewDocumentPosition? {
        get {
            return self._endRange;
        }
        set {
            self._endRange = newValue;
        }
    }

    // Field of startRange. Represents a bookmark to insert.
    private var _startRange : NewDocumentPosition? = nil;

    public var startRange : NewDocumentPosition? {
        get {
            return self._startRange;
        }
        set {
            self._startRange = newValue;
        }
    }

    private enum CodingKeys: String, CodingKey {
        case endRange = "EndRange";
        case startRange = "StartRange";
        case invalidCodingKey;
    }

    public override init() {
        super.init();
    }

    public required init(from json: [String: Any]) throws {
        try super.init(from: json);
        if let raw_endRange = json["EndRange"] as? [String: Any] {
            self.endRange = try ObjectSerializer.deserialize(type: NewDocumentPosition.self, from: raw_endRange);
        }

        if let raw_startRange = json["StartRange"] as? [String: Any] {
            self.startRange = try ObjectSerializer.deserialize(type: NewDocumentPosition.self, from: raw_startRange);
        }

    }

    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder);
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.endRange = try container.decodeIfPresent(NewDocumentPosition.self, forKey: .endRange);
        self.startRange = try container.decodeIfPresent(NewDocumentPosition.self, forKey: .startRange);
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder);
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.endRange != nil) {
            try container.encode(self.endRange, forKey: .endRange);
        }
        if (self.startRange != nil) {
            try container.encode(self.startRange, forKey: .startRange);
        }
    }

    public override func collectFilesContent(_ resultFilesContent : inout [FileReference]) {
    }

    // Sets endRange. Gets or sets the link to end bookmark node.
    public func setEndRange(endRange : NewDocumentPosition?) -> BookmarkInsert {
        self.endRange = endRange;
        return self;
    }

    // Gets endRange. Gets or sets the link to end bookmark node.
    public func getEndRange() -> NewDocumentPosition? {
        return self.endRange;
    }


    // Sets startRange. Gets or sets the link to start bookmark node.
    public func setStartRange(startRange : NewDocumentPosition?) -> BookmarkInsert {
        self.startRange = startRange;
        return self;
    }

    // Gets startRange. Gets or sets the link to start bookmark node.
    public func getStartRange() -> NewDocumentPosition? {
        return self.startRange;
    }
}
