/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="ReplaceTextParameters.swift">
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

// Class for document replace text request building.
public class ReplaceTextParameters : Codable, WordsApiModel {
    // Field of isMatchCase. Class for document replace text request building.
    private var isMatchCase : Bool?;

    // Field of isMatchWholeWord. Class for document replace text request building.
    private var isMatchWholeWord : Bool?;

    // Field of isOldValueRegex. Class for document replace text request building.
    private var isOldValueRegex : Bool?;

    // Field of newValue. Class for document replace text request building.
    private var newValue : String?;

    // Field of oldValue. Class for document replace text request building.
    private var oldValue : String?;

    private enum CodingKeys: String, CodingKey {
        case isMatchCase = "IsMatchCase";
        case isMatchWholeWord = "IsMatchWholeWord";
        case isOldValueRegex = "IsOldValueRegex";
        case newValue = "NewValue";
        case oldValue = "OldValue";
        case invalidCodingKey;
    }

    public init() {
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.isMatchCase = try container.decodeIfPresent(Bool.self, forKey: .isMatchCase);
        self.isMatchWholeWord = try container.decodeIfPresent(Bool.self, forKey: .isMatchWholeWord);
        self.isOldValueRegex = try container.decodeIfPresent(Bool.self, forKey: .isOldValueRegex);
        self.newValue = try container.decodeIfPresent(String.self, forKey: .newValue);
        self.oldValue = try container.decodeIfPresent(String.self, forKey: .oldValue);
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.isMatchCase != nil) {
            try container.encode(self.isMatchCase, forKey: .isMatchCase);
        }
        if (self.isMatchWholeWord != nil) {
            try container.encode(self.isMatchWholeWord, forKey: .isMatchWholeWord);
        }
        if (self.isOldValueRegex != nil) {
            try container.encode(self.isOldValueRegex, forKey: .isOldValueRegex);
        }
        if (self.newValue != nil) {
            try container.encode(self.newValue, forKey: .newValue);
        }
        if (self.oldValue != nil) {
            try container.encode(self.oldValue, forKey: .oldValue);
        }
    }

    // Sets isMatchCase. Gets or sets a value indicating whether flag, true means the search is case-sensitive; false means the search is not case-sensitive.
    public func setIsMatchCase(isMatchCase : Bool?) {
        self.isMatchCase = isMatchCase;
    }

    // Gets isMatchCase. Gets or sets a value indicating whether flag, true means the search is case-sensitive; false means the search is not case-sensitive.
    public func getIsMatchCase() -> Bool? {
        return self.isMatchCase;
    }

    // Sets isMatchWholeWord. Gets or sets a value indicating whether flag, means that only whole word matched are replaced.
    public func setIsMatchWholeWord(isMatchWholeWord : Bool?) {
        self.isMatchWholeWord = isMatchWholeWord;
    }

    // Gets isMatchWholeWord. Gets or sets a value indicating whether flag, means that only whole word matched are replaced.
    public func getIsMatchWholeWord() -> Bool? {
        return self.isMatchWholeWord;
    }

    // Sets isOldValueRegex. Gets or sets a value indicating whether flag, means that OldValue contains regex expression.
    public func setIsOldValueRegex(isOldValueRegex : Bool?) {
        self.isOldValueRegex = isOldValueRegex;
    }

    // Gets isOldValueRegex. Gets or sets a value indicating whether flag, means that OldValue contains regex expression.
    public func getIsOldValueRegex() -> Bool? {
        return self.isOldValueRegex;
    }

    // Sets newValue. Gets or sets the new text value to replace by.
    public func setNewValue(newValue : String?) {
        self.newValue = newValue;
    }

    // Gets newValue. Gets or sets the new text value to replace by.
    public func getNewValue() -> String? {
        return self.newValue;
    }

    // Sets oldValue. Gets or sets the old text value (or regex pattern IsOldValueRegex) to replace.
    public func setOldValue(oldValue : String?) {
        self.oldValue = oldValue;
    }

    // Gets oldValue. Gets or sets the old text value (or regex pattern IsOldValueRegex) to replace.
    public func getOldValue() -> String? {
        return self.oldValue;
    }
}
