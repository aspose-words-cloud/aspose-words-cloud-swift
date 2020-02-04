/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="ReplaceTextParameters.swift">
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

public class ReplaceTextParameters : Codable {
        
    // Gets or sets old text value (or regex pattern ) to replace.
    private var oldValue : String?;
    // Gets or sets new text value to replace by.
    private var newValue : String?;
    // Gets or sets a value indicating whether flag, true means the search is case-sensitive; false means the search is not case-sensitive.
    private var isMatchCase : Bool?;
    // Gets or sets a value indicating whether flag, means that only whole word matched are replaced.
    private var isMatchWholeWord : Bool?;
    // Gets or sets a value indicating whether flag, means that  contains regex expression.
    private var isOldValueRegex : Bool?;
        
    private enum CodingKeys: String, CodingKey {
        case oldValue;
        case newValue;
        case isMatchCase;
        case isMatchWholeWord;
        case isOldValueRegex;
        case invalidCodingKey;
    }
        
    public init() {
        
    }
    
    public required init(from decoder: Decoder) throws {
        
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.oldValue = try container.decodeIfPresent(String.self, forKey: .oldValue);
        self.newValue = try container.decodeIfPresent(String.self, forKey: .newValue);
        self.isMatchCase = try container.decode(Bool.self, forKey: .isMatchCase);
        self.isMatchWholeWord = try container.decode(Bool.self, forKey: .isMatchWholeWord);
        self.isOldValueRegex = try container.decode(Bool.self, forKey: .isOldValueRegex);
    }

    public func encode(to encoder: Encoder) throws {
        
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.oldValue != nil) {
            try container.encode(self.oldValue, forKey: .oldValue);
        }
        if (self.newValue != nil) {
            try container.encode(self.newValue, forKey: .newValue);
        }
        if (self.isMatchCase == nil) {
            throw WordsApiError.requiredArgumentError(argumentName: "isMatchCase");
        }
        try container.encode(self.isMatchCase, forKey: .isMatchCase);
        if (self.isMatchWholeWord == nil) {
            throw WordsApiError.requiredArgumentError(argumentName: "isMatchWholeWord");
        }
        try container.encode(self.isMatchWholeWord, forKey: .isMatchWholeWord);
        if (self.isOldValueRegex == nil) {
            throw WordsApiError.requiredArgumentError(argumentName: "isOldValueRegex");
        }
        try container.encode(self.isOldValueRegex, forKey: .isOldValueRegex);
    }
        
    public func setOldValue(oldValue : String?) {
        self.oldValue = oldValue;
    }
    
    public func getOldValue() -> String? {
        return self.oldValue;
    }
    public func setNewValue(newValue : String?) {
        self.newValue = newValue;
    }
    
    public func getNewValue() -> String? {
        return self.newValue;
    }
    public func setIsMatchCase(isMatchCase : Bool) {
        self.isMatchCase = isMatchCase;
    }
    
    public func getIsMatchCase() -> Bool {
        return self.isMatchCase!;
    }
    public func setIsMatchWholeWord(isMatchWholeWord : Bool) {
        self.isMatchWholeWord = isMatchWholeWord;
    }
    
    public func getIsMatchWholeWord() -> Bool {
        return self.isMatchWholeWord!;
    }
    public func setIsOldValueRegex(isOldValueRegex : Bool) {
        self.isOldValueRegex = isOldValueRegex;
    }
    
    public func getIsOldValueRegex() -> Bool {
        return self.isOldValueRegex!;
    }
}
