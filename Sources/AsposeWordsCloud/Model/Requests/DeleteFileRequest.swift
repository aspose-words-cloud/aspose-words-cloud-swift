/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="DeleteFileRequest.swift">
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

// Request model for deleteFile operation.
public class DeleteFileRequest {
    private let path : String;
    private let storageName : String?;
    private let versionId : String?;
    
    private enum CodingKeys: String, CodingKey {
        case path;
        case storageName;
        case versionId;
        case invalidCodingKey;
    }
    
    // Initializes a new instance of the deleteFileRequest class.
    public init(path : String, storageName : String? = nil, versionId : String? = nil) {
        self.path = path;
        self.storageName = storageName;
        self.versionId = versionId;
    }
    
    // Path of the file including file name and extension e.g. /Folder1/file.ext
    public func getPath() -> String {
        return self.path;
    }
    
    // Storage name
    public func getStorageName() -> String? {
        return self.storageName;
    }
    
    // File version ID to delete
    public func getVersionId() -> String? {
        return self.versionId;
    }
}
