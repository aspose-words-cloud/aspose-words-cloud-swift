/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="ListFormatUpdate.swift">
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

// Paragraph list format element for update.
@available(macOS 10.12, iOS 10.3, watchOS 3.3, tvOS 12.0, *)
public class ListFormatUpdate : Codable, WordsApiModel {
    // Field of listId. Paragraph list format element for update.
    public var listId : Int?;

    // Field of listLevelNumber. Paragraph list format element for update.
    public var listLevelNumber : Int?;

    private enum CodingKeys: String, CodingKey {
        case listId = "ListId";
        case listLevelNumber = "ListLevelNumber";
        case invalidCodingKey;
    }

    public init() {
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.listId = try container.decodeIfPresent(Int.self, forKey: .listId);
        self.listLevelNumber = try container.decodeIfPresent(Int.self, forKey: .listLevelNumber);
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.listId != nil) {
            try container.encode(self.listId, forKey: .listId);
        }
        if (self.listLevelNumber != nil) {
            try container.encode(self.listLevelNumber, forKey: .listLevelNumber);
        }
    }

    // Sets listId. Gets or sets the list id of this paragraph.
    public func setListId(listId : Int?) -> ListFormatUpdate {
        self.listId = listId;
        return self;
    }

    // Gets listId. Gets or sets the list id of this paragraph.
    public func getListId() -> Int? {
        return self.listId;
    }

    // Sets listLevelNumber. Gets or sets the list level number (0 to 8) for the paragraph.
    public func setListLevelNumber(listLevelNumber : Int?) -> ListFormatUpdate {
        self.listLevelNumber = listLevelNumber;
        return self;
    }

    // Gets listLevelNumber. Gets or sets the list level number (0 to 8) for the paragraph.
    public func getListLevelNumber() -> Int? {
        return self.listLevelNumber;
    }
}
