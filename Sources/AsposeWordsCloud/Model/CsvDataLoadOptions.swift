/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="CsvDataLoadOptions.swift">
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

// Represents options for parsing CSV data.
@available(macOS 10.12, iOS 10.3, watchOS 3.3, tvOS 12.0, *)
public class CsvDataLoadOptions : Codable, WordsApiModel {
    // Field of commentChar. Represents options for parsing CSV data.
    public var commentChar : String?;

    // Field of delimiter. Represents options for parsing CSV data.
    public var delimiter : String?;

    // Field of hasHeaders. Represents options for parsing CSV data.
    public var hasHeaders : Bool?;

    // Field of quoteChar. Represents options for parsing CSV data.
    public var quoteChar : String?;

    private enum CodingKeys: String, CodingKey {
        case commentChar = "CommentChar";
        case delimiter = "Delimiter";
        case hasHeaders = "HasHeaders";
        case quoteChar = "QuoteChar";
        case invalidCodingKey;
    }

    public init() {
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.commentChar = try container.decodeIfPresent(String.self, forKey: .commentChar);
        self.delimiter = try container.decodeIfPresent(String.self, forKey: .delimiter);
        self.hasHeaders = try container.decodeIfPresent(Bool.self, forKey: .hasHeaders);
        self.quoteChar = try container.decodeIfPresent(String.self, forKey: .quoteChar);
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.commentChar != nil) {
            try container.encode(self.commentChar, forKey: .commentChar);
        }
        if (self.delimiter != nil) {
            try container.encode(self.delimiter, forKey: .delimiter);
        }
        if (self.hasHeaders != nil) {
            try container.encode(self.hasHeaders, forKey: .hasHeaders);
        }
        if (self.quoteChar != nil) {
            try container.encode(self.quoteChar, forKey: .quoteChar);
        }
    }

    // Sets commentChar. Gets or sets the character that is used to comment lines of CSV data.
    public func setCommentChar(commentChar : String?) -> CsvDataLoadOptions {
        self.commentChar = commentChar;
        return self;
    }

    // Gets commentChar. Gets or sets the character that is used to comment lines of CSV data.
    public func getCommentChar() -> String? {
        return self.commentChar;
    }

    // Sets delimiter. Gets or sets the character to be used as a column delimiter.
    public func setDelimiter(delimiter : String?) -> CsvDataLoadOptions {
        self.delimiter = delimiter;
        return self;
    }

    // Gets delimiter. Gets or sets the character to be used as a column delimiter.
    public func getDelimiter() -> String? {
        return self.delimiter;
    }

    // Sets hasHeaders. Gets or sets a value indicating whether the first record of CSV data contains column names.
    public func setHasHeaders(hasHeaders : Bool?) -> CsvDataLoadOptions {
        self.hasHeaders = hasHeaders;
        return self;
    }

    // Gets hasHeaders. Gets or sets a value indicating whether the first record of CSV data contains column names.
    public func getHasHeaders() -> Bool? {
        return self.hasHeaders;
    }

    // Sets quoteChar. Gets or sets the character that is used to quote field values.
    public func setQuoteChar(quoteChar : String?) -> CsvDataLoadOptions {
        self.quoteChar = quoteChar;
        return self;
    }

    // Gets quoteChar. Gets or sets the character that is used to quote field values.
    public func getQuoteChar() -> String? {
        return self.quoteChar;
    }
}
