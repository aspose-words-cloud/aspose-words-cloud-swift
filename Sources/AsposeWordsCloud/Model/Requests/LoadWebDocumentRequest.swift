/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="LoadWebDocumentRequest.swift">
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

// Request model for loadWebDocument operation.
public class LoadWebDocumentRequest : Encodable, WordsApiModel {
    private let data : LoadWebDocumentData;
    private let storage : String?;
    
    private enum CodingKeys: String, CodingKey {
        case data;
        case storage;
        case invalidCodingKey;
    }
    
    // Initializes a new instance of the loadWebDocumentRequest class.
    public init(data : LoadWebDocumentData, storage : String? = nil) {
        self.data = data;
        self.storage = storage;
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self);
        try container.encode(self.data, forKey: .data);
        if (self.storage != nil) {
            try container.encode(self.storage, forKey: .storage);
        }
    }
    
    // Parameters of loading.
    public func getData() -> LoadWebDocumentData {
        return self.data;
    }
    
    // Original document storage.
    public func getStorage() -> String? {
        return self.storage;
    }
}