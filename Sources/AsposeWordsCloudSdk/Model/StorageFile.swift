/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="StorageFile.swift">
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

public class StorageFile : Codable {
        
    // File or folder name.
    private let name : String?;
    // True if it is a folder.
    private let isFolder : Bool;
    // File or folder last modified .
    private let modifiedDate : Date?;
    // File or folder size.
    private let size : Int64;
    // File or folder path.
    private let path : String?;
        
    private enum CodingKeys: String, CodingKey {
        case name;
        case isFolder;
        case modifiedDate;
        case size;
        case path;
    }
        
    public init(name : String? = nil, isFolder : Bool, modifiedDate : Date? = nil, size : Int64, path : String? = nil) {
        self.name = name;
        self.isFolder = isFolder;
        self.modifiedDate = modifiedDate;
        self.size = size;
        self.path = path;
    }
    
    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self);
        
        self.name = try container.decodeIfPresent(String.self, forKey: .name);
        self.isFolder = try container.decode(Bool.self, forKey: .isFolder);
        self.modifiedDate = try container.decodeIfPresent(Date.self, forKey: .modifiedDate);
        self.size = try container.decode(Int64.self, forKey: .size);
        self.path = try container.decodeIfPresent(String.self, forKey: .path);
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.name != nil) {
            try container.encode(self.name, forKey: .name);
        }
        try container.encode(self.isFolder, forKey: .isFolder);
        if (self.modifiedDate != nil) {
            try container.encode(self.modifiedDate, forKey: .modifiedDate);
        }
        try container.encode(self.size, forKey: .size);
        if (self.path != nil) {
            try container.encode(self.path, forKey: .path);
        }
        
    }
        
    public func getName() -> String? {
        return self.name;
    }
    public func getIsFolder() -> Bool {
        return self.isFolder;
    }
    public func getModifiedDate() -> Date? {
        return self.modifiedDate;
    }
    public func getSize() -> Int64 {
        return self.size;
    }
    public func getPath() -> String? {
        return self.path;
    }
}
