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
