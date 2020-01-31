/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="ProtectionDataResponse.swift">
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

public class ProtectionDataResponse : WordsResponse {
        
    // Gets or sets link to the document.
    private let documentLink : FileLink?;
    // Gets or sets protection&#39;s data of the document.
    private let protectionData : ProtectionData?;
        
    public init(documentLink : FileLink? = nil, protectionData : ProtectionData? = nil) {
        self.documentLink = documentLink;
        self.protectionData = protectionData;
    }
        
    public func getProtectionDataResponse() -> FileLink? {
        return self.documentLink;
    }
    public func getProtectionDataResponse() -> ProtectionData? {
        return self.protectionData;
    }
}
