/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="DeleteHeadersFootersRequest.swift">
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

// Request model for deleteHeadersFooters operation.
public class DeleteHeadersFootersRequest {
    private let name : ;
    private let sectionPath : ;
    private let folder : ?;
    private let storage : ?;
    private let loadEncoding : ?;
    private let password : ?;
    private let destFileName : ?;
    private let revisionAuthor : ?;
    private let revisionDateTime : ?;
    private let headersFootersTypes : ?;
    
    private enum CodingKeys: String, CodingKey {
        case name;
        case sectionPath;
        case folder;
        case storage;
        case loadEncoding;
        case password;
        case destFileName;
        case revisionAuthor;
        case revisionDateTime;
        case headersFootersTypes;
        case invalidCodingKey;
    }
    
    // Initializes a new instance of the deleteHeadersFootersRequest class.
    public init(name : , sectionPath : , folder : ? = nil, storage : ? = nil, loadEncoding : ? = nil, password : ? = nil, destFileName : ? = nil, revisionAuthor : ? = nil, revisionDateTime : ? = nil, headersFootersTypes : ? = nil) {
        self.name = name;
        self.sectionPath = sectionPath;
        self.folder = folder;
        self.storage = storage;
        self.loadEncoding = loadEncoding;
        self.password = password;
        self.destFileName = destFileName;
        self.revisionAuthor = revisionAuthor;
        self.revisionDateTime = revisionDateTime;
        self.headersFootersTypes = headersFootersTypes;
    }
    
    // The document name.
    public func getName() ->  {
        return self.name;
    }
    
    // Path to parent section.
    public func getSectionPath() ->  {
        return self.sectionPath;
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
    
    // Result path of the document after the operation. If this parameter is omitted then result of the operation will be saved as the source document.
    public func getDestFileName() -> ? {
        return self.destFileName;
    }
    
    // Initials of the author to use for revisions.If you set this parameter and then make some changes to the document programmatically, save the document and later open the document in MS Word you will see these changes as revisions.
    public func getRevisionAuthor() -> ? {
        return self.revisionAuthor;
    }
    
    // The date and time to use for revisions.
    public func getRevisionDateTime() -> ? {
        return self.revisionDateTime;
    }
    
    // List of types of headers and footers.
    public func getHeadersFootersTypes() -> ? {
        return self.headersFootersTypes;
    }
}
