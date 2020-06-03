/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="ListInfo.swift">
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

// Represents a single document list.
public class ListInfo : LinkElement {
    // Field of isListStyleDefinition. Represents a single document list.
    private var isListStyleDefinition : Bool?;

    // Field of isListStyleReference. Represents a single document list.
    private var isListStyleReference : Bool?;

    // Field of isMultiLevel. Represents a single document list.
    private var isMultiLevel : Bool?;

    // Field of isRestartAtEachSection. Represents a single document list.
    private var isRestartAtEachSection : Bool?;

    // Field of listId. Represents a single document list.
    private var listId : Int?;

    // Field of listLevels. Represents a single document list.
    private var listLevels : ListLevels?;

    // Field of style. Represents a single document list.
    private var style : Style?;

    private enum CodingKeys: String, CodingKey {
        case isListStyleDefinition;
        case isListStyleReference;
        case isMultiLevel;
        case isRestartAtEachSection;
        case listId;
        case listLevels;
        case style;
        case invalidCodingKey;
    }

    public override init() {
        super.init();
    }

    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder);
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.isListStyleDefinition = try container.decodeIfPresent(Bool.self, forKey: .isListStyleDefinition);
        self.isListStyleReference = try container.decodeIfPresent(Bool.self, forKey: .isListStyleReference);
        self.isMultiLevel = try container.decodeIfPresent(Bool.self, forKey: .isMultiLevel);
        self.isRestartAtEachSection = try container.decodeIfPresent(Bool.self, forKey: .isRestartAtEachSection);
        self.listId = try container.decodeIfPresent(Int.self, forKey: .listId);
        self.listLevels = try container.decodeIfPresent(ListLevels.self, forKey: .listLevels);
        self.style = try container.decodeIfPresent(Style.self, forKey: .style);
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder);
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.isListStyleDefinition != nil) {
            try container.encode(self.isListStyleDefinition, forKey: .isListStyleDefinition);
        }
        if (self.isListStyleReference != nil) {
            try container.encode(self.isListStyleReference, forKey: .isListStyleReference);
        }
        if (self.isMultiLevel != nil) {
            try container.encode(self.isMultiLevel, forKey: .isMultiLevel);
        }
        if (self.isRestartAtEachSection != nil) {
            try container.encode(self.isRestartAtEachSection, forKey: .isRestartAtEachSection);
        }
        if (self.listId != nil) {
            try container.encode(self.listId, forKey: .listId);
        }
        if (self.listLevels != nil) {
            try container.encode(self.listLevels, forKey: .listLevels);
        }
        if (self.style != nil) {
            try container.encode(self.style, forKey: .style);
        }
    }

    // Sets isListStyleDefinition. Gets or sets a value indicating whether returns true if this list is a definition of a list style.
    public func setIsListStyleDefinition(isListStyleDefinition : Bool?) {
        self.isListStyleDefinition = isListStyleDefinition;
    }

    // Gets isListStyleDefinition. Gets or sets a value indicating whether returns true if this list is a definition of a list style.
    public func getIsListStyleDefinition() -> Bool? {
        return self.isListStyleDefinition;
    }

    // Sets isListStyleReference. Gets or sets a value indicating whether returns true if this list is a reference to a list style.
    public func setIsListStyleReference(isListStyleReference : Bool?) {
        self.isListStyleReference = isListStyleReference;
    }

    // Gets isListStyleReference. Gets or sets a value indicating whether returns true if this list is a reference to a list style.
    public func getIsListStyleReference() -> Bool? {
        return self.isListStyleReference;
    }

    // Sets isMultiLevel. Gets or sets a value indicating whether returns true when the list contains 9 levels; false when 1 level.
    public func setIsMultiLevel(isMultiLevel : Bool?) {
        self.isMultiLevel = isMultiLevel;
    }

    // Gets isMultiLevel. Gets or sets a value indicating whether returns true when the list contains 9 levels; false when 1 level.
    public func getIsMultiLevel() -> Bool? {
        return self.isMultiLevel;
    }

    // Sets isRestartAtEachSection. Gets or sets a value indicating whether specifies whether list should be restarted at each section. Default value is false.
    public func setIsRestartAtEachSection(isRestartAtEachSection : Bool?) {
        self.isRestartAtEachSection = isRestartAtEachSection;
    }

    // Gets isRestartAtEachSection. Gets or sets a value indicating whether specifies whether list should be restarted at each section. Default value is false.
    public func getIsRestartAtEachSection() -> Bool? {
        return self.isRestartAtEachSection;
    }

    // Sets listId. Gets or sets the unique identifier of the list.
    public func setListId(listId : Int?) {
        self.listId = listId;
    }

    // Gets listId. Gets or sets the unique identifier of the list.
    public func getListId() -> Int? {
        return self.listId;
    }

    // Sets listLevels. Gets or sets the collection of list levels for this list.
    public func setListLevels(listLevels : ListLevels?) {
        self.listLevels = listLevels;
    }

    // Gets listLevels. Gets or sets the collection of list levels for this list.
    public func getListLevels() -> ListLevels? {
        return self.listLevels;
    }

    // Sets style. Gets or sets the list style that this list references or defines.
    public func setStyle(style : Style?) {
        self.style = style;
    }

    // Gets style. Gets or sets the list style that this list references or defines.
    public func getStyle() -> Style? {
        return self.style;
    }
}
