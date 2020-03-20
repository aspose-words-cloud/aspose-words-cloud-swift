/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="RemoveRangeRequest.swift">
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

// Request model for removeRange operation.
public class RemoveRangeRequest {
    private let name : String;
    private let rangeStartIdentifier : String;
    private let rangeEndIdentifier : String?;
    private let folder : String?;
    private let storage : String?;
    private let loadEncoding : String?;
    private let password : String?;
    private let destFileName : String?;
    
    private enum CodingKeys: String, CodingKey {
        case name;
        case rangeStartIdentifier;
        case rangeEndIdentifier;
        case folder;
        case storage;
        case loadEncoding;
        case password;
        case destFileName;
        case invalidCodingKey;
    }
    
    // Initializes a new instance of the removeRangeRequest class.
    public init(name : String, rangeStartIdentifier : String, rangeEndIdentifier : String? = nil, folder : String? = nil, storage : String? = nil, loadEncoding : String? = nil, password : String? = nil, destFileName : String? = nil) {
        self.name = name;
        self.rangeStartIdentifier = rangeStartIdentifier;
        self.rangeEndIdentifier = rangeEndIdentifier;
        self.folder = folder;
        self.storage = storage;
        self.loadEncoding = loadEncoding;
        self.password = password;
        self.destFileName = destFileName;
    }
    
    // The document.
    public func getName() -> String {
        return self.name;
    }
    
    // The range start identifier. Identifier is the value of the "nodeId" field, which every document node has, extended with the prefix "id". It looks like "id0.0.7". Also values like "image5" and "table3" can be used as an identifier for images and tables, where the number is an index of the image/table.
    public func getRangeStartIdentifier() -> String {
        return self.rangeStartIdentifier;
    }
    
    // The range end identifier.
    public func getRangeEndIdentifier() -> String? {
        return self.rangeEndIdentifier;
    }
    
    // Original document folder.
    public func getFolder() -> String? {
        return self.folder;
    }
    
    // Original document storage.
    public func getStorage() -> String? {
        return self.storage;
    }
    
    // Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    public func getLoadEncoding() -> String? {
        return self.loadEncoding;
    }
    
    // Password for opening an encrypted document.
    public func getPassword() -> String? {
        return self.password;
    }
    
    // Result path of the document after the operation. If this parameter is omitted then result of the operation will be saved as the source document.
    public func getDestFileName() -> String? {
        return self.destFileName;
    }
}
