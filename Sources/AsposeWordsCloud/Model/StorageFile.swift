/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="StorageFile.swift">
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

// File or folder information.
@available(macOS 10.12, iOS 10.3, watchOS 3.3, tvOS 12.0, *)
public class StorageFile : Codable, WordsApiModel {
    // Field of isFolder. File or folder information.
    private var _isFolder : Bool?;

    public var : Bool? {
        get {
            return self._isFolder;
        }
        set {
            self._isFolder = newValue;
        }
    }

    // Field of modifiedDate. File or folder information.
    private var _modifiedDate : Date?;

    public var : Date? {
        get {
            return self._modifiedDate;
        }
        set {
            self._modifiedDate = newValue;
        }
    }

    // Field of name. File or folder information.
    private var _name : String?;

    public var : String? {
        get {
            return self._name;
        }
        set {
            self._name = newValue;
        }
    }

    // Field of path. File or folder information.
    private var _path : String?;

    public var : String? {
        get {
            return self._path;
        }
        set {
            self._path = newValue;
        }
    }

    // Field of size. File or folder information.
    private var _size : Int?;

    public var : Int? {
        get {
            return self._size;
        }
        set {
            self._size = newValue;
        }
    }

    private enum CodingKeys: String, CodingKey {
        case isFolder = "IsFolder";
        case modifiedDate = "ModifiedDate";
        case name = "Name";
        case path = "Path";
        case size = "Size";
        case invalidCodingKey;
    }

    public init() {
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.isFolder = try container.decodeIfPresent(Bool.self, forKey: .isFolder);
        var raw_modifiedDate = try container.decodeIfPresent(String.self, forKey: .modifiedDate);
        if (raw_modifiedDate != nil) {
            raw_modifiedDate = raw_modifiedDate!.replacingOccurrences(of: "\\.\\d+", with: "", options: .regularExpression);
            self.modifiedDate = ObjectSerializer.customIso8601.date(from: raw_modifiedDate!)!;
        }

        self.name = try container.decodeIfPresent(String.self, forKey: .name);
        self.path = try container.decodeIfPresent(String.self, forKey: .path);
        self.size = try container.decodeIfPresent(Int.self, forKey: .size);
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.isFolder != nil) {
            try container.encode(self.isFolder, forKey: .isFolder);
        }
        if (self.modifiedDate != nil) {
            try container.encode(self.modifiedDate, forKey: .modifiedDate);
        }
        if (self.name != nil) {
            try container.encode(self.name, forKey: .name);
        }
        if (self.path != nil) {
            try container.encode(self.path, forKey: .path);
        }
        if (self.size != nil) {
            try container.encode(self.size, forKey: .size);
        }
    }

    // Sets isFolder. True if it is a folder.
    public func setIsFolder(isFolder : Bool?) -> StorageFile {
        self.isFolder = isFolder;
        return self;
    }

    // Gets isFolder. True if it is a folder.
    public func getIsFolder() -> Bool? {
        return self.isFolder;
    }


    // Sets modifiedDate. File or folder last modified DateTime.
    public func setModifiedDate(modifiedDate : Date?) -> StorageFile {
        self.modifiedDate = modifiedDate;
        return self;
    }

    // Gets modifiedDate. File or folder last modified DateTime.
    public func getModifiedDate() -> Date? {
        return self.modifiedDate;
    }


    // Sets name. File or folder name.
    public func setName(name : String?) -> StorageFile {
        self.name = name;
        return self;
    }

    // Gets name. File or folder name.
    public func getName() -> String? {
        return self.name;
    }


    // Sets path. File or folder path.
    public func setPath(path : String?) -> StorageFile {
        self.path = path;
        return self;
    }

    // Gets path. File or folder path.
    public func getPath() -> String? {
        return self.path;
    }


    // Sets size. File or folder size.
    public func setSize(size : Int?) -> StorageFile {
        self.size = size;
        return self;
    }

    // Gets size. File or folder size.
    public func getSize() -> Int? {
        return self.size;
    }
}
