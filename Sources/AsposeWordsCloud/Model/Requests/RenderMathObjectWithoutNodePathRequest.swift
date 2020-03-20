/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="RenderMathObjectWithoutNodePathRequest.swift">
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

// Request model for renderMathObjectWithoutNodePath operation.
public class RenderMathObjectWithoutNodePathRequest {
    private let name : ;
    private let format : ;
    private let index : ;
    private let folder : ?;
    private let storage : ?;
    private let loadEncoding : ?;
    private let password : ?;
    private let fontsLocation : ?;
    
    private enum CodingKeys: String, CodingKey {
        case name;
        case format;
        case index;
        case folder;
        case storage;
        case loadEncoding;
        case password;
        case fontsLocation;
        case invalidCodingKey;
    }
    
    // Initializes a new instance of the renderMathObjectWithoutNodePathRequest class.
    public init(name : , format : , index : , folder : ? = nil, storage : ? = nil, loadEncoding : ? = nil, password : ? = nil, fontsLocation : ? = nil) {
        self.name = name;
        self.format = format;
        self.index = index;
        self.folder = folder;
        self.storage = storage;
        self.loadEncoding = loadEncoding;
        self.password = password;
        self.fontsLocation = fontsLocation;
    }
    
    // The document name.
    public func getName() ->  {
        return self.name;
    }
    
    // The destination format.
    public func getFormat() ->  {
        return self.format;
    }
    
    // Object index.
    public func getIndex() ->  {
        return self.index;
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
    
    // Folder in filestorage with custom fonts.
    public func getFontsLocation() -> ? {
        return self.fontsLocation;
    }
}
