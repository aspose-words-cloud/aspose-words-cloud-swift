/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="ListFormat.swift">
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

// DTO container with a paragraph list format element.
public class ListFormat : LinkElement {
    // Field of isListItem. DTO container with a paragraph list format element.
    private var isListItem : Bool?;

    // Field of listId. DTO container with a paragraph list format element.
    private var listId : Int?;

    // Field of listLevelNumber. DTO container with a paragraph list format element.
    private var listLevelNumber : Int?;

    private enum CodingKeys: String, CodingKey {
        case isListItem = "IsListItem";
        case listId = "ListId";
        case listLevelNumber = "ListLevelNumber";
        case invalidCodingKey;
    }

    public override init() {
        super.init();
    }

    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder);
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.isListItem = try container.decodeIfPresent(Bool.self, forKey: .isListItem);
        self.listId = try container.decodeIfPresent(Int.self, forKey: .listId);
        self.listLevelNumber = try container.decodeIfPresent(Int.self, forKey: .listLevelNumber);
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder);
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.isListItem != nil) {
            try container.encode(self.isListItem, forKey: .isListItem);
        }
        if (self.listId != nil) {
            try container.encode(self.listId, forKey: .listId);
        }
        if (self.listLevelNumber != nil) {
            try container.encode(self.listLevelNumber, forKey: .listLevelNumber);
        }
    }

    // Sets isListItem. Gets or sets a value indicating whether the paragraph has bulleted or numbered formatting applied to it.
    public func setIsListItem(isListItem : Bool?) {
        self.isListItem = isListItem;
    }

    // Gets isListItem. Gets or sets a value indicating whether the paragraph has bulleted or numbered formatting applied to it.
    public func getIsListItem() -> Bool? {
        return self.isListItem;
    }

    // Sets listId. Gets or sets the list id of this paragraph.
    public func setListId(listId : Int?) {
        self.listId = listId;
    }

    // Gets listId. Gets or sets the list id of this paragraph.
    public func getListId() -> Int? {
        return self.listId;
    }

    // Sets listLevelNumber. Gets or sets the list level number (0 to 8) for the paragraph.
    public func setListLevelNumber(listLevelNumber : Int?) {
        self.listLevelNumber = listLevelNumber;
    }

    // Gets listLevelNumber. Gets or sets the list level number (0 to 8) for the paragraph.
    public func getListLevelNumber() -> Int? {
        return self.listLevelNumber;
    }
}
