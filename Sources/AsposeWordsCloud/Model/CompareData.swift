/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="CompareData.swift">
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

// Container class for compare documents.
@available(macOS 10.12, iOS 10.3, watchOS 3.3, tvOS 12.0, *)
public class CompareData : Codable, WordsApiModel {
    // Field of author. Container class for compare documents.
    public var author : String?;

    // Field of compareOptions. Container class for compare documents.
    public var compareOptions : CompareOptions?;

    // Field of comparingWithDocument. Container class for compare documents.
    public var comparingWithDocument : String?;

    // Field of dateTime. Container class for compare documents.
    public var dateTime : Date?;

    // Field of resultDocumentFormat. Container class for compare documents.
    public var resultDocumentFormat : String?;

    private enum CodingKeys: String, CodingKey {
        case author = "Author";
        case compareOptions = "CompareOptions";
        case comparingWithDocument = "ComparingWithDocument";
        case dateTime = "DateTime";
        case resultDocumentFormat = "ResultDocumentFormat";
        case invalidCodingKey;
    }

    public init() {
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.author = try container.decodeIfPresent(String.self, forKey: .author);
        self.compareOptions = try container.decodeIfPresent(CompareOptions.self, forKey: .compareOptions);
        self.comparingWithDocument = try container.decodeIfPresent(String.self, forKey: .comparingWithDocument);
        var raw_dateTime = try container.decodeIfPresent(String.self, forKey: .dateTime);
        if (raw_dateTime != nil) {
            raw_dateTime = raw_dateTime!.replacingOccurrences(of: "\\.\\d+", with: "", options: .regularExpression);
            self.dateTime = ObjectSerializer.customIso8601.date(from: raw_dateTime!)!;
        }

        self.resultDocumentFormat = try container.decodeIfPresent(String.self, forKey: .resultDocumentFormat);
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.author != nil) {
            try container.encode(self.author, forKey: .author);
        }
        if (self.compareOptions != nil) {
            try container.encode(self.compareOptions, forKey: .compareOptions);
        }
        if (self.comparingWithDocument != nil) {
            try container.encode(self.comparingWithDocument, forKey: .comparingWithDocument);
        }
        if (self.dateTime != nil) {
            try container.encode(self.dateTime, forKey: .dateTime);
        }
        if (self.resultDocumentFormat != nil) {
            try container.encode(self.resultDocumentFormat, forKey: .resultDocumentFormat);
        }
    }

    // Sets author. Gets or sets the initials of the author to use for revisions.
    public func setAuthor(author : String?) -> CompareData {
        self.author = author;
        return self;
    }

    // Gets author. Gets or sets the initials of the author to use for revisions.
    public func getAuthor() -> String? {
        return self.author;
    }

    // Sets compareOptions. Gets or sets the compare options.
    public func setCompareOptions(compareOptions : CompareOptions?) -> CompareData {
        self.compareOptions = compareOptions;
        return self;
    }

    // Gets compareOptions. Gets or sets the compare options.
    public func getCompareOptions() -> CompareOptions? {
        return self.compareOptions;
    }

    // Sets comparingWithDocument. Gets or sets the path to document to compare at the server.
    public func setComparingWithDocument(comparingWithDocument : String?) -> CompareData {
        self.comparingWithDocument = comparingWithDocument;
        return self;
    }

    // Gets comparingWithDocument. Gets or sets the path to document to compare at the server.
    public func getComparingWithDocument() -> String? {
        return self.comparingWithDocument;
    }

    // Sets dateTime. Gets or sets the date and time to use for revisions.
    public func setDateTime(dateTime : Date?) -> CompareData {
        self.dateTime = dateTime;
        return self;
    }

    // Gets dateTime. Gets or sets the date and time to use for revisions.
    public func getDateTime() -> Date? {
        return self.dateTime;
    }

    // Sets resultDocumentFormat. Gets or sets the result document format.
    public func setResultDocumentFormat(resultDocumentFormat : String?) -> CompareData {
        self.resultDocumentFormat = resultDocumentFormat;
        return self;
    }

    // Gets resultDocumentFormat. Gets or sets the result document format.
    public func getResultDocumentFormat() -> String? {
        return self.resultDocumentFormat;
    }
}
