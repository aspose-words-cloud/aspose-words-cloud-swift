/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="CreateDocumentRequest.swift">
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

public class CreateDocumentRequest : Decodable {
    private let storage : String?;
    private let fileName : String?;
    private let folder : String?;
    
    private enum CodingKeys: String, CodingKey { case storage, fileName, folder }
    
    public init(storage : String? = null, fileName : String? = null, folder : String? = null) {
        self.storage = storage;
        self.fileName = fileName;
        self.folder = folder;
    }
    
    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self);
        
        if let storage = try container.decodeIfPresent(.self, forKey: .storage) {
            self.storage = storage;
        }
        if let fileName = try container.decodeIfPresent(.self, forKey: .fileName) {
            self.fileName = fileName;
        }
        if let folder = try container.decodeIfPresent(.self, forKey: .folder) {
            self.folder = folder;
        }

    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.storage != nil) {
            try container.encode(self.storage, forKey: .storage);
        }
        if (self.fileName != nil) {
            try container.encode(self.fileName, forKey: .fileName);
        }
        if (self.folder != nil) {
            try container.encode(self.folder, forKey: .folder);
        }
        
        
    }
    
    public func getStorage() -> String? {
        return self.storage;
    }
    
    public func getFileName() -> String? {
        return self.fileName;
    }
    
    public func getFolder() -> String? {
        return self.folder;
    }
}
