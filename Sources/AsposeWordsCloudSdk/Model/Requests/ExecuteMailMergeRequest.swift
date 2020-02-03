/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="ExecuteMailMergeRequest.swift">
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

public class ExecuteMailMergeRequest : Decodable {
    private let name : String;
    private let data : String?;
    private let folder : String?;
    private let storage : String?;
    private let loadEncoding : String?;
    private let password : String?;
    private let withRegions : Bool?;
    private let mailMergeDataFile : String?;
    private let cleanup : String?;
    private let useWholeParagraphAsRegion : Bool?;
    private let destFileName : String?;
    
    private enum CodingKeys: String, CodingKey { case name, data, folder, storage, loadEncoding, password, withRegions, mailMergeDataFile, cleanup, useWholeParagraphAsRegion, destFileName }
    
    public init(name : String, data : String? = null, folder : String? = null, storage : String? = null, loadEncoding : String? = null, password : String? = null, withRegions : Bool? = null, mailMergeDataFile : String? = null, cleanup : String? = null, useWholeParagraphAsRegion : Bool? = null, destFileName : String? = null) {
        self.name = name;
        self.data = data;
        self.folder = folder;
        self.storage = storage;
        self.loadEncoding = loadEncoding;
        self.password = password;
        self.withRegions = withRegions;
        self.mailMergeDataFile = mailMergeDataFile;
        self.cleanup = cleanup;
        self.useWholeParagraphAsRegion = useWholeParagraphAsRegion;
        self.destFileName = destFileName;
    }
    
    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self);
        
        self.name = try container.decode(.self, forKey: .name);
        if let data = try container.decodeIfPresent(.self, forKey: .data) {
            self.data = data;
        }
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
        if let withRegions = try container.decodeIfPresent(.self, forKey: .withRegions) {
            self.withRegions = withRegions;
        }
        if let mailMergeDataFile = try container.decodeIfPresent(.self, forKey: .mailMergeDataFile) {
            self.mailMergeDataFile = mailMergeDataFile;
        }
        if let cleanup = try container.decodeIfPresent(.self, forKey: .cleanup) {
            self.cleanup = cleanup;
        }
        if let useWholeParagraphAsRegion = try container.decodeIfPresent(.self, forKey: .useWholeParagraphAsRegion) {
            self.useWholeParagraphAsRegion = useWholeParagraphAsRegion;
        }
        if let destFileName = try container.decodeIfPresent(.self, forKey: .destFileName) {
            self.destFileName = destFileName;
        }

    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self);
        try container.encode(self.name, forKey: .name);
        if (self.data != nil) {
            try container.encode(self.data, forKey: .data);
        }
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
        if (self.withRegions != nil) {
            try container.encode(self.withRegions, forKey: .withRegions);
        }
        if (self.mailMergeDataFile != nil) {
            try container.encode(self.mailMergeDataFile, forKey: .mailMergeDataFile);
        }
        if (self.cleanup != nil) {
            try container.encode(self.cleanup, forKey: .cleanup);
        }
        if (self.useWholeParagraphAsRegion != nil) {
            try container.encode(self.useWholeParagraphAsRegion, forKey: .useWholeParagraphAsRegion);
        }
        if (self.destFileName != nil) {
            try container.encode(self.destFileName, forKey: .destFileName);
        }
        
        
    }
    
    public func getName() -> String {
        return self.name;
    }
    
    public func getData() -> String? {
        return self.data;
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
    
    public func getWithRegions() -> Bool? {
        return self.withRegions;
    }
    
    public func getMailMergeDataFile() -> String? {
        return self.mailMergeDataFile;
    }
    
    public func getCleanup() -> String? {
        return self.cleanup;
    }
    
    public func getUseWholeParagraphAsRegion() -> Bool? {
        return self.useWholeParagraphAsRegion;
    }
    
    public func getDestFileName() -> String? {
        return self.destFileName;
    }
}
