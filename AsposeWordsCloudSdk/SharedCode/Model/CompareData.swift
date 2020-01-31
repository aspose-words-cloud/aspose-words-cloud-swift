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

public class CompareData : Decodable {
        
    // Gets or sets path to document to compare at the server.
    private let comparingWithDocument : String?;
    // Gets or sets initials of the author to use for revisions.
    private let author : String?;
    // Gets or sets the date and time to use for revisions.             
    private let dateTime : Date?;
        
    public init(comparingWithDocument : String? = nil, author : String? = nil, dateTime : Date? = nil) {
        self.comparingWithDocument = comparingWithDocument;
        self.author = author;
        self.dateTime = dateTime;
    }
        
    public func getCompareData() -> String? {
        return self.comparingWithDocument;
    }
    public func getCompareData() -> String? {
        return self.author;
    }
    public func getCompareData() -> Date? {
        return self.dateTime;
    }
}
