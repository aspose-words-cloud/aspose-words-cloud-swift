/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="SplitDocumentRequest.swift">
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

// Request model for splitDocument operation.
public class SplitDocumentRequest {
    private let name : String;
    private let folder : String?;
    private let storage : String?;
    private let loadEncoding : String?;
    private let password : String?;
    private let destFileName : String?;
    private let format : String?;
    private let from : Int?;
    private let to : Int?;
    private let zipOutput : Bool?;
    private let fontsLocation : String?;
    
    private enum CodingKeys: String, CodingKey {
        case name;
        case folder;
        case storage;
        case loadEncoding;
        case password;
        case destFileName;
        case format;
        case from;
        case to;
        case zipOutput;
        case fontsLocation;
        case invalidCodingKey;
    }
    
    // Initializes a new instance of the splitDocumentRequest class.
    public init(name : String, folder : String? = nil, storage : String? = nil, loadEncoding : String? = nil, password : String? = nil, destFileName : String? = nil, format : String? = nil, from : Int? = nil, to : Int? = nil, zipOutput : Bool? = nil, fontsLocation : String? = nil) {
        self.name = name;
        self.folder = folder;
        self.storage = storage;
        self.loadEncoding = loadEncoding;
        self.password = password;
        self.destFileName = destFileName;
        self.format = format;
        self.from = from;
        self.to = to;
        self.zipOutput = zipOutput;
        self.fontsLocation = fontsLocation;
    }
    
    // Original document name.
    public func getName() -> String {
        return self.name;
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
    
    // Format to split.
    public func getFormat() -> String? {
        return self.format;
    }
    
    // Start page.
    public func getFrom() -> Int? {
        return self.from;
    }
    
    // End page.
    public func getTo() -> Int? {
        return self.to;
    }
    
    // ZipOutput or not.
    public func getZipOutput() -> Bool? {
        return self.zipOutput;
    }
    
    // Folder in filestorage with custom fonts.
    public func getFontsLocation() -> String? {
        return self.fontsLocation;
    }
}
