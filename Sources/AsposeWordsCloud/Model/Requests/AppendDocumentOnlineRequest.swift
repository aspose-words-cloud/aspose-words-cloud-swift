/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="AppendDocumentOnlineRequest.swift">
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

// Request model for appendDocumentOnline operation.
public class AppendDocumentOnlineRequest {
    private let document : InputStream;
    private let documentList : DocumentEntryList;

    private enum CodingKeys: String, CodingKey {
        case document;
        case documentList;
        case invalidCodingKey;
    }

    // Initializes a new instance of the AppendDocumentOnlineRequest class.
    public init(document : InputStream, documentList : DocumentEntryList) {
        self.document = document;
        self.documentList = documentList;
    }

    // The document.
    public func getDocument() -> InputStream {
        return self.document;
    }

    // <see cref="DocumentEntryList"/> with a list of documents to append.
    public func getDocumentList() -> DocumentEntryList {
        return self.documentList;
    }
}
