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
    private let oldValue : String?;
    // Gets or sets new text value to replace by.
    private let newValue : String?;
    // Gets or sets a value indicating whether flag, true means the search is case-sensitive; false means the search is not case-sensitive.
    private let isMatchCase : Bool;
    // Gets or sets a value indicating whether flag, means that only whole word matched are replaced.
    private let isMatchWholeWord : Bool;
    // Gets or sets a value indicating whether flag, means that  contains regex expression.
    private let isOldValueRegex : Bool;
        
    private enum CodingKeys: String, CodingKey { case oldValue, newValue, isMatchCase, isMatchWholeWord, isOldValueRegex }
        
    public init(oldValue : String? = nil, newValue : String? = nil, isMatchCase : Bool, isMatchWholeWord : Bool, isOldValueRegex : Bool) {
        self.oldValue = oldValue;
        self.newValue = newValue;
        self.isMatchCase = isMatchCase;
        self.isMatchWholeWord = isMatchWholeWord;
        self.isOldValueRegex = isOldValueRegex;
    }
    
    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self);
        
        if let oldValue = try container.decodeIfPresent(String.self, forKey: .oldValue) {
            self.oldValue = oldValue;
        }
        if let newValue = try container.decodeIfPresent(String.self, forKey: .newValue) {
            self.newValue = newValue;
        }
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
        try container.encode(self.isMatchCase, forKey: .isMatchCase);
        try container.encode(self.isMatchWholeWord, forKey: .isMatchWholeWord);
        try container.encode(self.isOldValueRegex, forKey: .isOldValueRegex);
        
        
    }
        
    public func getOldValue() -> String? {
        return self.oldValue;
    }
    public func getNewValue() -> String? {
        return self.newValue;
    }
    public func getIsMatchCase() -> Bool {
        return self.isMatchCase;
    }
    public func getIsMatchWholeWord() -> Bool {
        return self.isMatchWholeWord;
    }
    public func getIsOldValueRegex() -> Bool {
        return self.isOldValueRegex;
    }
}
