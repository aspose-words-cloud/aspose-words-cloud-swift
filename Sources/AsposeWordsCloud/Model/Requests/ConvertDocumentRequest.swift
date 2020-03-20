/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="ConvertDocumentRequest.swift">
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

// Request model for convertDocument operation.
public class ConvertDocumentRequest {
    private let document : InputStream;
    private let format : String;
    private let storage : String?;
    private let outPath : String?;
    private let fileNameFieldValue : String?;
    private let fontsLocation : String?;
    
    private enum CodingKeys: String, CodingKey {
        case document;
        case format;
        case storage;
        case outPath;
        case fileNameFieldValue;
        case fontsLocation;
        case invalidCodingKey;
    }
    
    // Initializes a new instance of the convertDocumentRequest class.
    public init(document : InputStream, format : String, storage : String? = nil, outPath : String? = nil, fileNameFieldValue : String? = nil, fontsLocation : String? = nil) {
        self.document = document;
        self.format = format;
        self.storage = storage;
        self.outPath = outPath;
        self.fileNameFieldValue = fileNameFieldValue;
        self.fontsLocation = fontsLocation;
    }
    
    // Converting document
    public func getDocument() -> InputStream {
        return self.document;
    }
    
    // Format to convert.
    public func getFormat() -> String {
        return self.format;
    }
    
    // Original document storage.
    public func getStorage() -> String? {
        return self.storage;
    }
    
    // Path for saving operation result to the local storage.
    public func getOutPath() -> String? {
        return self.outPath;
    }
    
    // This file name will be used when resulting document has dynamic field for document file name {filename}. If it is not set, "sourceFilename" will be used instead. 
    public func getFileNameFieldValue() -> String? {
        return self.fileNameFieldValue;
    }
    
    // Folder in filestorage with custom fonts.
    public func getFontsLocation() -> String? {
        return self.fontsLocation;
    }
}
