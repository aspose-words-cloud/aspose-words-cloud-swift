/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="GetDocumentStatisticsRequest.swift">
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

public class GetDocumentStatisticsRequest : Decodable {
    private let name : String;
    private let folder : String?;
    private let storage : String?;
    private let loadEncoding : String?;
    private let password : String?;
    private let includeComments : Bool?;
    private let includeFootnotes : Bool?;
    private let includeTextInShapes : Bool?;
    
    private enum CodingKeys: String, CodingKey { case name, folder, storage, loadEncoding, password, includeComments, includeFootnotes, includeTextInShapes }
    
    public init(name : String, folder : String? = null, storage : String? = null, loadEncoding : String? = null, password : String? = null, includeComments : Bool? = null, includeFootnotes : Bool? = null, includeTextInShapes : Bool? = null) {
        self.name = name;
        self.folder = folder;
        self.storage = storage;
        self.loadEncoding = loadEncoding;
        self.password = password;
        self.includeComments = includeComments;
        self.includeFootnotes = includeFootnotes;
        self.includeTextInShapes = includeTextInShapes;
    }
    
    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self);
        
        self.name = try container.decode(.self, forKey: .name);
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
        if let includeComments = try container.decodeIfPresent(.self, forKey: .includeComments) {
            self.includeComments = includeComments;
        }
        if let includeFootnotes = try container.decodeIfPresent(.self, forKey: .includeFootnotes) {
            self.includeFootnotes = includeFootnotes;
        }
        if let includeTextInShapes = try container.decodeIfPresent(.self, forKey: .includeTextInShapes) {
            self.includeTextInShapes = includeTextInShapes;
        }

    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self);
        try container.encode(self.name, forKey: .name);
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
        if (self.includeComments != nil) {
            try container.encode(self.includeComments, forKey: .includeComments);
        }
        if (self.includeFootnotes != nil) {
            try container.encode(self.includeFootnotes, forKey: .includeFootnotes);
        }
        if (self.includeTextInShapes != nil) {
            try container.encode(self.includeTextInShapes, forKey: .includeTextInShapes);
        }
        
        
    }
    
    public func getName() -> String {
        return self.name;
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
    
    public func getIncludeComments() -> Bool? {
        return self.includeComments;
    }
    
    public func getIncludeFootnotes() -> Bool? {
        return self.includeFootnotes;
    }
    
    public func getIncludeTextInShapes() -> Bool? {
        return self.includeTextInShapes;
    }
}
