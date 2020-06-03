/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="StyleUpdate.swift">
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

// Represents a single document style properties to update.
public class StyleUpdate : Codable, WordsApiModel {
    
    // Field of nextParagraphStyleName. Gets or sets /sets the name of the style to be applied automatically to a new paragraph inserted after a paragraph formatted with the specified style.      
    private var nextParagraphStyleName : String?;
    
    // Field of baseStyleName. Gets or sets /sets the name of the style this style is based on.      
    private var baseStyleName : String?;
    
    // Field of isQuickStyle. Gets or sets a value indicating whether specifies whether this style is shown in the Quick Style gallery inside MS Word UI.      
    private var isQuickStyle : Bool?;
    
    // Field of name. Gets or sets the name of the style.      
    private var name : String?;
        
    private enum CodingKeys: String, CodingKey {
        case nextParagraphStyleName;
        case baseStyleName;
        case isQuickStyle;
        case name;
        case invalidCodingKey;
    }
        
    public init() {
        
    }
    
    public required init(from decoder: Decoder) throws {
        
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.nextParagraphStyleName = try container.decodeIfPresent(String.self, forKey: .nextParagraphStyleName);
        self.baseStyleName = try container.decodeIfPresent(String.self, forKey: .baseStyleName);
        self.isQuickStyle = try container.decodeIfPresent(Bool.self, forKey: .isQuickStyle);
        self.name = try container.decodeIfPresent(String.self, forKey: .name);
    }

    public func encode(to encoder: Encoder) throws {
        
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.nextParagraphStyleName != nil) {
            try container.encode(self.nextParagraphStyleName, forKey: .nextParagraphStyleName);
        }
        if (self.baseStyleName != nil) {
            try container.encode(self.baseStyleName, forKey: .baseStyleName);
        }
        if (self.isQuickStyle != nil) {
            try container.encode(self.isQuickStyle, forKey: .isQuickStyle);
        }
        if (self.name != nil) {
            try container.encode(self.name, forKey: .name);
        }
    }
    
    // Sets nextParagraphStyleName. Gets or sets /sets the name of the style to be applied automatically to a new paragraph inserted after a paragraph formatted with the specified style.  
    public func setNextParagraphStyleName(nextParagraphStyleName : String?) {
        self.nextParagraphStyleName = nextParagraphStyleName;
    }
    
    // Gets nextParagraphStyleName. Gets or sets /sets the name of the style to be applied automatically to a new paragraph inserted after a paragraph formatted with the specified style.  
    public func getNextParagraphStyleName() -> String? {
        return self.nextParagraphStyleName;
    }
    
    // Sets baseStyleName. Gets or sets /sets the name of the style this style is based on.  
    public func setBaseStyleName(baseStyleName : String?) {
        self.baseStyleName = baseStyleName;
    }
    
    // Gets baseStyleName. Gets or sets /sets the name of the style this style is based on.  
    public func getBaseStyleName() -> String? {
        return self.baseStyleName;
    }
    
    // Sets isQuickStyle. Gets or sets a value indicating whether specifies whether this style is shown in the Quick Style gallery inside MS Word UI.  
    public func setIsQuickStyle(isQuickStyle : Bool?) {
        self.isQuickStyle = isQuickStyle;
    }
    
    // Gets isQuickStyle. Gets or sets a value indicating whether specifies whether this style is shown in the Quick Style gallery inside MS Word UI.  
    public func getIsQuickStyle() -> Bool? {
        return self.isQuickStyle;
    }
    
    // Sets name. Gets or sets the name of the style.  
    public func setName(name : String?) {
        self.name = name;
    }
    
    // Gets name. Gets or sets the name of the style.  
    public func getName() -> String? {
        return self.name;
    }
}
