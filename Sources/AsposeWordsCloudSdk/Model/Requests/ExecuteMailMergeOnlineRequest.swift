/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="ExecuteMailMergeOnlineRequest.swift">
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

public class ExecuteMailMergeOnlineRequest : Decodable {
    private let template : URL;
    private let data : URL;
    private let withRegions : Bool?;
    private let cleanup : String?;
    private let documentFileName : String?;
    
    public init(template : URL, data : URL, withRegions : Bool? = null, cleanup : String? = null, documentFileName : String? = null) {
        self.template = template;
        self.data = data;
        self.withRegions = withRegions;
        self.cleanup = cleanup;
        self.documentFileName = documentFileName;
    }
    
    public func getTemplate() -> URL {
        return self.template;
    }
    
    public func getData() -> URL {
        return self.data;
    }
    
    public func getWithRegions() -> Bool? {
        return self.withRegions;
    }
    
    public func getCleanup() -> String? {
        return self.cleanup;
    }
    
    public func getDocumentFileName() -> String? {
        return self.documentFileName;
    }
}
