/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="ExecuteMailMergeOnlineRequest.swift">
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

// Request model for executeMailMergeOnline operation.
public class ExecuteMailMergeOnlineRequest {
    private let template : InputStream;
    private let data : InputStream;
    private let withRegions : Bool?;
    private let cleanup : String?;
    private let documentFileName : String?;
    
    private enum CodingKeys: String, CodingKey {
        case template;
        case data;
        case withRegions;
        case cleanup;
        case documentFileName;
        case invalidCodingKey;
    }
    
    // Initializes a new instance of the executeMailMergeOnlineRequest class.
    public init(template : InputStream, data : InputStream, withRegions : Bool? = nil, cleanup : String? = nil, documentFileName : String? = nil) {
        self.template = template;
        self.data = data;
        self.withRegions = withRegions;
        self.cleanup = cleanup;
        self.documentFileName = documentFileName;
    }
    
    // File with template
    public func getTemplate() -> InputStream {
        return self.template;
    }
    
    // File with mailmerge data
    public func getData() -> InputStream {
        return self.data;
    }
    
    // With regions flag.
    public func getWithRegions() -> Bool? {
        return self.withRegions;
    }
    
    // Clean up options.
    public func getCleanup() -> String? {
        return self.cleanup;
    }
    
    // This file name will be used when resulting document has dynamic field for document file name {filename}. If it is not setted, "template" will be used instead. 
    public func getDocumentFileName() -> String? {
        return self.documentFileName;
    }
}
