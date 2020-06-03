/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="ListFormatUpdate.swift">
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

// Paragraph list format element for update.             
public class ListFormatUpdate : Codable, WordsApiModel {
    
    // Field of listLevelNumber. Gets or sets the list level number (0 to 8) for the paragraph.      
    private var listLevelNumber : Int?;
    
    // Field of listId. Gets or sets the list id of this paragraph.      
    private var listId : Int?;
        
    private enum CodingKeys: String, CodingKey {
        case listLevelNumber;
        case listId;
        case invalidCodingKey;
    }
        
    public init() {
        
    }
    
    public required init(from decoder: Decoder) throws {
        
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.listLevelNumber = try container.decodeIfPresent(Int.self, forKey: .listLevelNumber);
        self.listId = try container.decodeIfPresent(Int.self, forKey: .listId);
    }

    public func encode(to encoder: Encoder) throws {
        
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.listLevelNumber != nil) {
            try container.encode(self.listLevelNumber, forKey: .listLevelNumber);
        }
        if (self.listId != nil) {
            try container.encode(self.listId, forKey: .listId);
        }
    }
    
    // Sets listLevelNumber. Gets or sets the list level number (0 to 8) for the paragraph.  
    public func setListLevelNumber(listLevelNumber : Int?) {
        self.listLevelNumber = listLevelNumber;
    }
    
    // Gets listLevelNumber. Gets or sets the list level number (0 to 8) for the paragraph.  
    public func getListLevelNumber() -> Int? {
        return self.listLevelNumber;
    }
    
    // Sets listId. Gets or sets the list id of this paragraph.  
    public func setListId(listId : Int?) {
        self.listId = listId;
    }
    
    // Gets listId. Gets or sets the list id of this paragraph.  
    public func getListId() -> Int? {
        return self.listId;
    }
}
