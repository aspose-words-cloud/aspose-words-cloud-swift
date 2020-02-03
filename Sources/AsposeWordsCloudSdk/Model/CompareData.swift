/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="CompareData.swift">
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

public class CompareData : Codable {
        
    // Gets or sets path to document to compare at the server.
    private let comparingWithDocument : String?;
    // Gets or sets initials of the author to use for revisions.
    private let author : String?;
    // Gets or sets the date and time to use for revisions.             
    private let dateTime : Date?;
        
    private enum CodingKeys: String, CodingKey { case comparingWithDocument, author, dateTime }
        
    public init(comparingWithDocument : String? = nil, author : String? = nil, dateTime : Date? = nil) {
        self.comparingWithDocument = comparingWithDocument;
        self.author = author;
        self.dateTime = dateTime;
    }
    
    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self);
        
        if let comparingWithDocument = try container.decodeIfPresent(String.self, forKey: .comparingWithDocument) {
            self.comparingWithDocument = comparingWithDocument;
        }
        if let author = try container.decodeIfPresent(String.self, forKey: .author) {
            self.author = author;
        }
        if let dateTime = try container.decodeIfPresent(Date.self, forKey: .dateTime) {
            self.dateTime = dateTime;
        }

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
        
    public func getComparingWithDocument() -> String? {
        return self.comparingWithDocument;
    }
    public func getAuthor() -> String? {
        return self.author;
    }
    public func getDateTime() -> Date? {
        return self.dateTime;
    }
}
