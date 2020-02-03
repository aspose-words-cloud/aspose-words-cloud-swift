/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="ClassifyDocumentRequest.swift">
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

public class ClassifyDocumentRequest : Codable {
    private let documentName : String;
    private let folder : String?;
    private let storage : String?;
    private let loadEncoding : String?;
    private let password : String?;
    private let bestClassesCount : String?;
    private let taxonomy : String?;
    
    private enum CodingKeys: String, CodingKey { case documentName, folder, storage, loadEncoding, password, bestClassesCount, taxonomy }
    
    public init(documentName : String, folder : String? = null, storage : String? = null, loadEncoding : String? = null, password : String? = null, bestClassesCount : String? = null, taxonomy : String? = null) {
        self.documentName = documentName;
        self.folder = folder;
        self.storage = storage;
        self.loadEncoding = loadEncoding;
        self.password = password;
        self.bestClassesCount = bestClassesCount;
        self.taxonomy = taxonomy;
    }
    
    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self);
        
        self.documentName = try container.decode(.self, forKey: .documentName);
        if let folder = try container.decodeIfPresent(.self, forKey: .folder) {
            self.folder = folder;
        }
        if let storage = try container.decodeIfPresent(.self, forKey: .storage) {
            self.storage = storage;
        }
        if let loadEncoding = try container.decodeIfPresent(.self, forKey: .loadEncoding) {
            self.loadEncoding = loadEncoding;
        }
        if let password = try container.decodeIfPresent(.self, forKey: .password) {
            self.password = password;
        }
        if let bestClassesCount = try container.decodeIfPresent(.self, forKey: .bestClassesCount) {
            self.bestClassesCount = bestClassesCount;
        }
        if let taxonomy = try container.decodeIfPresent(.self, forKey: .taxonomy) {
            self.taxonomy = taxonomy;
        }

    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self);
        try container.encode(self.documentName, forKey: .documentName);
        if (self.folder != nil) {
            try container.encode(self.folder, forKey: .folder);
        }
        if (self.storage != nil) {
            try container.encode(self.storage, forKey: .storage);
        }
        if (self.loadEncoding != nil) {
            try container.encode(self.loadEncoding, forKey: .loadEncoding);
        }
        if (self.password != nil) {
            try container.encode(self.password, forKey: .password);
        }
        if (self.bestClassesCount != nil) {
            try container.encode(self.bestClassesCount, forKey: .bestClassesCount);
        }
        if (self.taxonomy != nil) {
            try container.encode(self.taxonomy, forKey: .taxonomy);
        }
        
        
    }
    
    public func getDocumentName() -> String {
        return self.documentName;
    }
    
    public func getFolder() -> String? {
        return self.folder;
    }
    
    public func getStorage() -> String? {
        return self.storage;
    }
    
    public func getLoadEncoding() -> String? {
        return self.loadEncoding;
    }
    
    public func getPassword() -> String? {
        return self.password;
    }
    
    public func getBestClassesCount() -> String? {
        return self.bestClassesCount;
    }
    
    public func getTaxonomy() -> String? {
        return self.taxonomy;
    }
}
