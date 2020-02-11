/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="PageNumber.swift">
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

// Class is used for insert page number request building.
public class PageNumber : Codable, WordsApiModel {
    
    // Field of format. Gets or sets page number format, e.g. \"{PAGE} of {NUMPAGES}\".      
    private var format : String?;
    
    // Field of alignment. Gets or sets text alignment, possible values are left, right, center or justify.      
    private var alignment : String?;
    
    // Field of isTop. Gets or sets a value indicating whether if true the page number is added at the top of the page, else at the bottom.      
    private var isTop : Bool?;
    
    // Field of setPageNumberOnFirstPage. Gets or sets a value indicating whether if true the page number is added on first page too.      
    private var setPageNumberOnFirstPage : Bool?;
        
    private enum CodingKeys: String, CodingKey {
        case format;
        case alignment;
        case isTop;
        case setPageNumberOnFirstPage;
        case invalidCodingKey;
    }
        
    public init() {
        
    }
    
    public required init(from decoder: Decoder) throws {
        
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.format = try container.decodeIfPresent(String.self, forKey: .format);
        self.alignment = try container.decodeIfPresent(String.self, forKey: .alignment);
        self.isTop = try container.decode(Bool.self, forKey: .isTop);
        self.setPageNumberOnFirstPage = try container.decode(Bool.self, forKey: .setPageNumberOnFirstPage);
    }

    public func encode(to encoder: Encoder) throws {
        
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.format != nil) {
            try container.encode(self.format, forKey: .format);
        }
        if (self.alignment != nil) {
            try container.encode(self.alignment, forKey: .alignment);
        }
        if (self.isTop == nil) {
            throw WordsApiError.requiredArgumentError(argumentName: "isTop");
        }
        try container.encode(self.isTop, forKey: .isTop);
        if (self.setPageNumberOnFirstPage == nil) {
            throw WordsApiError.requiredArgumentError(argumentName: "setPageNumberOnFirstPage");
        }
        try container.encode(self.setPageNumberOnFirstPage, forKey: .setPageNumberOnFirstPage);
    }
    
    // Sets format. Gets or sets page number format, e.g. \"{PAGE} of {NUMPAGES}\".  
    public func setFormat(format : String?) {
        self.format = format;
    }
    
    // Gets format. Gets or sets page number format, e.g. \"{PAGE} of {NUMPAGES}\".  
    public func getFormat() -> String? {
        return self.format;
    }
    
    // Sets alignment. Gets or sets text alignment, possible values are left, right, center or justify.  
    public func setAlignment(alignment : String?) {
        self.alignment = alignment;
    }
    
    // Gets alignment. Gets or sets text alignment, possible values are left, right, center or justify.  
    public func getAlignment() -> String? {
        return self.alignment;
    }
    
    // Sets isTop. Gets or sets a value indicating whether if true the page number is added at the top of the page, else at the bottom.  
    public func setIsTop(isTop : Bool) {
        self.isTop = isTop;
    }
    
    // Gets isTop. Gets or sets a value indicating whether if true the page number is added at the top of the page, else at the bottom.  
    public func getIsTop() -> Bool {
        return self.isTop!;
    }
    
    // Sets setPageNumberOnFirstPage. Gets or sets a value indicating whether if true the page number is added on first page too.  
    public func setSetPageNumberOnFirstPage(setPageNumberOnFirstPage : Bool) {
        self.setPageNumberOnFirstPage = setPageNumberOnFirstPage;
    }
    
    // Gets setPageNumberOnFirstPage. Gets or sets a value indicating whether if true the page number is added on first page too.  
    public func getSetPageNumberOnFirstPage() -> Bool {
        return self.setPageNumberOnFirstPage!;
    }
}
