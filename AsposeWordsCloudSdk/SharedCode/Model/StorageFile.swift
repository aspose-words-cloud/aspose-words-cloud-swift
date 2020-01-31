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

public class StorageFile : Decodable {
        
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
        
    public init(name : String? = nil, isFolder : Bool, modifiedDate : Date? = nil, size : Int64, path : String? = nil) {
        self.name = name;
        self.isFolder = isFolder;
        self.modifiedDate = modifiedDate;
        self.size = size;
        self.path = path;
    }
        
    public func getStorageFile() -> String? {
        return self.name;
    }
    public func getStorageFile() -> Bool {
        return self.isFolder;
    }
    public func getStorageFile() -> Date? {
        return self.modifiedDate;
    }
    public func getStorageFile() -> Int64 {
        return self.size;
    }
    public func getStorageFile() -> String? {
        return self.path;
    }
}
