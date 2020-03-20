/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="GetHeaderFooterOfSectionRequest.swift">
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

// Request model for getHeaderFooterOfSection operation.
public class GetHeaderFooterOfSectionRequest {
    private let name : ;
    private let headerFooterIndex : ;
    private let sectionIndex : ;
    private let folder : ?;
    private let storage : ?;
    private let loadEncoding : ?;
    private let password : ?;
    private let filterByType : ?;
    
    private enum CodingKeys: String, CodingKey {
        case name;
        case headerFooterIndex;
        case sectionIndex;
        case folder;
        case storage;
        case loadEncoding;
        case password;
        case filterByType;
        case invalidCodingKey;
    }
    
    // Initializes a new instance of the getHeaderFooterOfSectionRequest class.
    public init(name : , headerFooterIndex : , sectionIndex : , folder : ? = nil, storage : ? = nil, loadEncoding : ? = nil, password : ? = nil, filterByType : ? = nil) {
        self.name = name;
        self.headerFooterIndex = headerFooterIndex;
        self.sectionIndex = sectionIndex;
        self.folder = folder;
        self.storage = storage;
        self.loadEncoding = loadEncoding;
        self.password = password;
        self.filterByType = filterByType;
    }
    
    // The document name.
    public func getName() ->  {
        return self.name;
    }
    
    // Header/footer index.
    public func getHeaderFooterIndex() ->  {
        return self.headerFooterIndex;
    }
    
    // Section index.
    public func getSectionIndex() ->  {
        return self.sectionIndex;
    }
    
    // Original document folder.
    public func getFolder() -> ? {
        return self.folder;
    }
    
    // Original document storage.
    public func getStorage() -> ? {
        return self.storage;
    }
    
    // Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    public func getLoadEncoding() -> ? {
        return self.loadEncoding;
    }
    
    // Password for opening an encrypted document.
    public func getPassword() -> ? {
        return self.password;
    }
    
    // List of types of headers and footers.
    public func getFilterByType() -> ? {
        return self.filterByType;
    }
}
