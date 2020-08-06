/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="DocumentEntryList.swift">
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

// Represents a list of documents which will be appended to the original resource document.
public class DocumentEntryList : Codable, WordsApiModel {
    // Field of applyBaseDocumentHeadersAndFootersToAppendingDocuments. Represents a list of documents which will be appended to the original resource document.
    private var applyBaseDocumentHeadersAndFootersToAppendingDocuments : Bool?;

    // Field of documentEntries. Represents a list of documents which will be appended to the original resource document.
    private var documentEntries : [DocumentEntry]?;

    private enum CodingKeys: String, CodingKey {
        case applyBaseDocumentHeadersAndFootersToAppendingDocuments;
        case documentEntries;
        case invalidCodingKey;
    }

    public init() {
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.applyBaseDocumentHeadersAndFootersToAppendingDocuments = try container.decodeIfPresent(Bool.self, forKey: .applyBaseDocumentHeadersAndFootersToAppendingDocuments);
        self.documentEntries = try container.decodeIfPresent([DocumentEntry].self, forKey: .documentEntries);
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.applyBaseDocumentHeadersAndFootersToAppendingDocuments != nil) {
            try container.encode(self.applyBaseDocumentHeadersAndFootersToAppendingDocuments, forKey: .applyBaseDocumentHeadersAndFootersToAppendingDocuments);
        }
        if (self.documentEntries != nil) {
            try container.encode(self.documentEntries, forKey: .documentEntries);
        }
    }

    // Sets applyBaseDocumentHeadersAndFootersToAppendingDocuments. Gets or sets parameter that indicates to apply headers and footers from base document to appending documents. Default is true.
    public func setApplyBaseDocumentHeadersAndFootersToAppendingDocuments(applyBaseDocumentHeadersAndFootersToAppendingDocuments : Bool?) {
        self.applyBaseDocumentHeadersAndFootersToAppendingDocuments = applyBaseDocumentHeadersAndFootersToAppendingDocuments;
    }

    // Gets applyBaseDocumentHeadersAndFootersToAppendingDocuments. Gets or sets parameter that indicates to apply headers and footers from base document to appending documents. Default is true.
    public func getApplyBaseDocumentHeadersAndFootersToAppendingDocuments() -> Bool? {
        return self.applyBaseDocumentHeadersAndFootersToAppendingDocuments;
    }

    // Sets documentEntries. Gets or sets list of documents.
    public func setDocumentEntries(documentEntries : [DocumentEntry]?) {
        self.documentEntries = documentEntries;
    }

    // Gets documentEntries. Gets or sets list of documents.
    public func getDocumentEntries() -> [DocumentEntry]? {
        return self.documentEntries;
    }
}
