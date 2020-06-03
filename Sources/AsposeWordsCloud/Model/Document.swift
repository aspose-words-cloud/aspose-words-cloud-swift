/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="Document.swift">
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

// Represents Words document DTO.
public class Document : Codable, WordsApiModel {
    // Gets or sets the original format of the document.
    public enum SourceFormat : String, Codable
    { 
        // Enum value "unknown"
        case unknown = "Unknown"

        // Enum value "doc"
        case doc = "Doc"

        // Enum value "dot"
        case dot = "Dot"

        // Enum value "docPreWord60"
        case docPreWord60 = "DocPreWord60"

        // Enum value "docx"
        case docx = "Docx"

        // Enum value "docm"
        case docm = "Docm"

        // Enum value "dotx"
        case dotx = "Dotx"

        // Enum value "dotm"
        case dotm = "Dotm"

        // Enum value "flatOpc"
        case flatOpc = "FlatOpc"

        // Enum value "rtf"
        case rtf = "Rtf"

        // Enum value "wordML"
        case wordML = "WordML"

        // Enum value "html"
        case html = "Html"

        // Enum value "mhtml"
        case mhtml = "Mhtml"

        // Enum value "epub"
        case epub = "Epub"

        // Enum value "text"
        case text = "Text"

        // Enum value "odt"
        case odt = "Odt"

        // Enum value "ott"
        case ott = "Ott"

        // Enum value "pdf"
        case pdf = "Pdf"

        // Enum value "xps"
        case xps = "Xps"

        // Enum value "tiff"
        case tiff = "Tiff"

        // Enum value "svg"
        case svg = "Svg"
    }
    
    // Field of links. Gets or sets a list of links that originate from this document.      
    private var links : [Link]?;
    
    // Field of fileName. Gets or sets the name of the file.      
    private var fileName : String?;
    
    // Field of sourceFormat. Gets or sets the original format of the document.      
    private var sourceFormat : SourceFormat?;
    
    // Field of isEncrypted. Gets or sets a value indicating whether returns true if the document is encrypted and requires a password to open.      
    private var isEncrypted : Bool?;
    
    // Field of isSigned. Gets or sets a value indicating whether returns true if the document contains a digital signature. This property merely informs that a digital signature is present on a document, but it does not specify whether the signature is valid or not.      
    private var isSigned : Bool?;
    
    // Field of documentProperties.       
    private var documentProperties : DocumentProperties?;
        
    private enum CodingKeys: String, CodingKey {
        case links;
        case fileName;
        case sourceFormat;
        case isEncrypted;
        case isSigned;
        case documentProperties;
        case invalidCodingKey;
    }
        
    public init() {
        
    }
    
    public required init(from decoder: Decoder) throws {
        
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.links = try container.decodeIfPresent([Link].self, forKey: .links);
        self.fileName = try container.decodeIfPresent(String.self, forKey: .fileName);
        self.sourceFormat = try container.decodeIfPresent(SourceFormat.self, forKey: .sourceFormat);
        self.isEncrypted = try container.decodeIfPresent(Bool.self, forKey: .isEncrypted);
        self.isSigned = try container.decodeIfPresent(Bool.self, forKey: .isSigned);
        self.documentProperties = try container.decodeIfPresent(DocumentProperties.self, forKey: .documentProperties);
    }

    public func encode(to encoder: Encoder) throws {
        
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.links != nil) {
            try container.encode(self.links, forKey: .links);
        }
        if (self.fileName != nil) {
            try container.encode(self.fileName, forKey: .fileName);
        }
        if (self.sourceFormat != nil) {
            try container.encode(self.sourceFormat, forKey: .sourceFormat);
        }
        if (self.isEncrypted != nil) {
            try container.encode(self.isEncrypted, forKey: .isEncrypted);
        }
        if (self.isSigned != nil) {
            try container.encode(self.isSigned, forKey: .isSigned);
        }
        if (self.documentProperties != nil) {
            try container.encode(self.documentProperties, forKey: .documentProperties);
        }
    }
    
    // Sets links. Gets or sets a list of links that originate from this document.  
    public func setLinks(links : [Link]?) {
        self.links = links;
    }
    
    // Gets links. Gets or sets a list of links that originate from this document.  
    public func getLinks() -> [Link]? {
        return self.links;
    }
    
    // Sets fileName. Gets or sets the name of the file.  
    public func setFileName(fileName : String?) {
        self.fileName = fileName;
    }
    
    // Gets fileName. Gets or sets the name of the file.  
    public func getFileName() -> String? {
        return self.fileName;
    }
    
    // Sets sourceFormat. Gets or sets the original format of the document.  
    public func setSourceFormat(sourceFormat : SourceFormat?) {
        self.sourceFormat = sourceFormat;
    }
    
    // Gets sourceFormat. Gets or sets the original format of the document.  
    public func getSourceFormat() -> SourceFormat? {
        return self.sourceFormat;
    }
    
    // Sets isEncrypted. Gets or sets a value indicating whether returns true if the document is encrypted and requires a password to open.  
    public func setIsEncrypted(isEncrypted : Bool?) {
        self.isEncrypted = isEncrypted;
    }
    
    // Gets isEncrypted. Gets or sets a value indicating whether returns true if the document is encrypted and requires a password to open.  
    public func getIsEncrypted() -> Bool? {
        return self.isEncrypted;
    }
    
    // Sets isSigned. Gets or sets a value indicating whether returns true if the document contains a digital signature. This property merely informs that a digital signature is present on a document, but it does not specify whether the signature is valid or not.  
    public func setIsSigned(isSigned : Bool?) {
        self.isSigned = isSigned;
    }
    
    // Gets isSigned. Gets or sets a value indicating whether returns true if the document contains a digital signature. This property merely informs that a digital signature is present on a document, but it does not specify whether the signature is valid or not.  
    public func getIsSigned() -> Bool? {
        return self.isSigned;
    }
    
    // Sets documentProperties.   
    public func setDocumentProperties(documentProperties : DocumentProperties?) {
        self.documentProperties = documentProperties;
    }
    
    // Gets documentProperties.   
    public func getDocumentProperties() -> DocumentProperties? {
        return self.documentProperties;
    }
}
