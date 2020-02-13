/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="CompareData.swift">
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

// Container class for compare documents.
public class CompareData : Codable, WordsApiModel {
    
    // Field of comparingWithDocument. Gets or sets path to document to compare at the server.      
    private var comparingWithDocument : String?;
    
    // Field of author. Gets or sets initials of the author to use for revisions.      
    private var author : String?;
    
    // Field of dateTime. Gets or sets the date and time to use for revisions.                   
    private var dateTime : Date?;
        
    private enum CodingKeys: String, CodingKey {
        case comparingWithDocument;
        case author;
        case dateTime;
        case invalidCodingKey;
    }
        
    public init() {
        
    }
    
    public required init(from decoder: Decoder) throws {
        
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.comparingWithDocument = try container.decodeIfPresent(String.self, forKey: .comparingWithDocument);
        self.author = try container.decodeIfPresent(String.self, forKey: .author);
        self.dateTime = try container.decodeIfPresent(Date.self, forKey: .dateTime);
    }

    public func encode(to encoder: Encoder) throws {
        
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.comparingWithDocument != nil) {
            try container.encode(self.comparingWithDocument, forKey: .comparingWithDocument);
        }
        if (self.author != nil) {
            try container.encode(self.author, forKey: .author);
        }
        if (self.dateTime != nil) {
            try container.encode(self.dateTime, forKey: .dateTime);
        }
    }
    
    // Sets comparingWithDocument. Gets or sets path to document to compare at the server.  
    public func setComparingWithDocument(comparingWithDocument : String?) {
        self.comparingWithDocument = comparingWithDocument;
    }
    
    // Gets comparingWithDocument. Gets or sets path to document to compare at the server.  
    public func getComparingWithDocument() -> String? {
        return self.comparingWithDocument;
    }
    
    // Sets author. Gets or sets initials of the author to use for revisions.  
    public func setAuthor(author : String?) {
        self.author = author;
    }
    
    // Gets author. Gets or sets initials of the author to use for revisions.  
    public func getAuthor() -> String? {
        return self.author;
    }
    
    // Sets dateTime. Gets or sets the date and time to use for revisions.               
    public func setDateTime(dateTime : Date?) {
        self.dateTime = dateTime;
    }
    
    // Gets dateTime. Gets or sets the date and time to use for revisions.               
    public func getDateTime() -> Date? {
        return self.dateTime;
    }
}
