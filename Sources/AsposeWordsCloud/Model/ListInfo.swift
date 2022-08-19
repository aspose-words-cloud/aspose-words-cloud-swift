/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="ListInfo.swift">
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

// DTO container with a single document list.
@available(macOS 10.12, iOS 10.3, watchOS 3.3, tvOS 12.0, *)
public class ListInfo : LinkElement {
    // Field of isListStyleDefinition. DTO container with a single document list.
    private var _isListStyleDefinition : Bool? = nil;

    public var isListStyleDefinition : Bool? {
        get {
            return self._isListStyleDefinition;
        }
        set {
            self._isListStyleDefinition = newValue;
        }
    }

    // Field of isListStyleReference. DTO container with a single document list.
    private var _isListStyleReference : Bool? = nil;

    public var isListStyleReference : Bool? {
        get {
            return self._isListStyleReference;
        }
        set {
            self._isListStyleReference = newValue;
        }
    }

    // Field of isMultiLevel. DTO container with a single document list.
    private var _isMultiLevel : Bool? = nil;

    public var isMultiLevel : Bool? {
        get {
            return self._isMultiLevel;
        }
        set {
            self._isMultiLevel = newValue;
        }
    }

    // Field of isRestartAtEachSection. DTO container with a single document list.
    private var _isRestartAtEachSection : Bool? = nil;

    public var isRestartAtEachSection : Bool? {
        get {
            return self._isRestartAtEachSection;
        }
        set {
            self._isRestartAtEachSection = newValue;
        }
    }

    // Field of listId. DTO container with a single document list.
    private var _listId : Int? = nil;

    public var listId : Int? {
        get {
            return self._listId;
        }
        set {
            self._listId = newValue;
        }
    }

    // Field of listLevels. DTO container with a single document list.
    private var _listLevels : ListLevels? = nil;

    public var listLevels : ListLevels? {
        get {
            return self._listLevels;
        }
        set {
            self._listLevels = newValue;
        }
    }

    // Field of style. DTO container with a single document list.
    private var _style : Style? = nil;

    public var style : Style? {
        get {
            return self._style;
        }
        set {
            self._style = newValue;
        }
    }

    private enum CodingKeys: String, CodingKey {
        case isListStyleDefinition = "IsListStyleDefinition";
        case isListStyleReference = "IsListStyleReference";
        case isMultiLevel = "IsMultiLevel";
        case isRestartAtEachSection = "IsRestartAtEachSection";
        case listId = "ListId";
        case listLevels = "ListLevels";
        case style = "Style";
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

    public override func collectFilesContent(_ resultFilesContent : inout [FileContent]) {
        super.collectFilesContent(resultFilesContent: resultFilesContent);
        if (self.listLevels != nil)
        {
            self.listLevels!.collectFilesContent(resultFilesContent: resultFilesContent);
        }

        if (self.style != nil)
        {
            self.style!.collectFilesContent(resultFilesContent: resultFilesContent);
        }

    }

    // Sets isListStyleDefinition. Gets or sets a value indicating whether this list is a definition of a list style.
    public func setIsListStyleDefinition(isListStyleDefinition : Bool?) -> ListInfo {
        self.isListStyleDefinition = isListStyleDefinition;
        return self;
    }

    // Gets isListStyleDefinition. Gets or sets a value indicating whether this list is a definition of a list style.
    public func getIsListStyleDefinition() -> Bool? {
        return self.isListStyleDefinition;
    }


    // Sets isListStyleReference. Gets or sets a value indicating whether this list is a reference to a list style.
    public func setIsListStyleReference(isListStyleReference : Bool?) -> ListInfo {
        self.isListStyleReference = isListStyleReference;
        return self;
    }

    // Gets isListStyleReference. Gets or sets a value indicating whether this list is a reference to a list style.
    public func getIsListStyleReference() -> Bool? {
        return self.isListStyleReference;
    }


    // Sets isMultiLevel. Gets or sets a value indicating whether the list contains 9 levels; false when 1 level.
    public func setIsMultiLevel(isMultiLevel : Bool?) -> ListInfo {
        self.isMultiLevel = isMultiLevel;
        return self;
    }

    // Gets isMultiLevel. Gets or sets a value indicating whether the list contains 9 levels; false when 1 level.
    public func getIsMultiLevel() -> Bool? {
        return self.isMultiLevel;
    }


    // Sets isRestartAtEachSection. Gets or sets a value indicating whether list should be restarted at each section. The default value is false.
    public func setIsRestartAtEachSection(isRestartAtEachSection : Bool?) -> ListInfo {
        self.isRestartAtEachSection = isRestartAtEachSection;
        return self;
    }

    // Gets isRestartAtEachSection. Gets or sets a value indicating whether list should be restarted at each section. The default value is false.
    public func getIsRestartAtEachSection() -> Bool? {
        return self.isRestartAtEachSection;
    }


    // Sets listId. Gets or sets the unique identifier of the list.
    public func setListId(listId : Int?) -> ListInfo {
        self.listId = listId;
        return self;
    }

    // Gets listId. Gets or sets the unique identifier of the list.
    public func getListId() -> Int? {
        return self.listId;
    }


    // Sets listLevels. Gets or sets the collection of list levels for this list.
    public func setListLevels(listLevels : ListLevels?) -> ListInfo {
        self.listLevels = listLevels;
        return self;
    }

    // Gets listLevels. Gets or sets the collection of list levels for this list.
    public func getListLevels() -> ListLevels? {
        return self.listLevels;
    }


    // Sets style. Gets or sets the list style that this list references or defines.
    public func setStyle(style : Style?) -> ListInfo {
        self.style = style;
        return self;
    }

    // Gets style. Gets or sets the list style that this list references or defines.
    public func getStyle() -> Style? {
        return self.style;
    }
}
