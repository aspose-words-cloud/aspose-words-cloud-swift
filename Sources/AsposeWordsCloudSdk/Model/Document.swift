/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="Document.swift">
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

public class Document : Codable {
    // Gets or sets the original format of the document.
    public enum SourceFormat : Int, Codable
    { 
        // Enum value "unknown"
        case unknown
        
        // Enum value "doc"
        case doc
        
        // Enum value "dot"
        case dot
        
        // Enum value "docPreWord60"
        case docPreWord60
        
        // Enum value "docx"
        case docx
        
        // Enum value "docm"
        case docm
        
        // Enum value "dotx"
        case dotx
        
        // Enum value "dotm"
        case dotm
        
        // Enum value "flatOpc"
        case flatOpc
        
        // Enum value "rtf"
        case rtf
        
        // Enum value "wordML"
        case wordML
        
        // Enum value "html"
        case html
        
        // Enum value "mhtml"
        case mhtml
        
        // Enum value "epub"
        case epub
        
        // Enum value "text"
        case text
        
        // Enum value "odt"
        case odt
        
        // Enum value "ott"
        case ott
        
        // Enum value "pdf"
        case pdf
        
        // Enum value "xps"
        case xps
        
        // Enum value "tiff"
        case tiff
        
        // Enum value "svg"
        case svg
        
    }

        
    // Gets or sets a list of links that originate from this document.
    private let links : [Link]?;
    // Gets or sets the name of the file.
    private let fileName : String?;
    // Gets or sets the original format of the document.
    private let sourceFormat : SourceFormat;
    // Gets or sets a value indicating whether returns true if the document is encrypted and requires a password to open.
    private let isEncrypted : Bool;
    // Gets or sets a value indicating whether returns true if the document contains a digital signature. This property merely informs that a digital signature is present on a document, but it does not specify whether the signature is valid or not.
    private let isSigned : Bool;
    // Gets or sets returns document properties.
    private let documentProperties : DocumentProperties?;
        
    private enum CodingKeys: String, CodingKey {
        case links;
        case fileName;
        case sourceFormat;
        case isEncrypted;
        case isSigned;
        case documentProperties;
    }
        
    public init(links : [Link]? = nil, fileName : String? = nil, sourceFormat : SourceFormat, isEncrypted : Bool, isSigned : Bool, documentProperties : DocumentProperties? = nil) {
        self.links = links;
        self.fileName = fileName;
        self.sourceFormat = sourceFormat;
        self.isEncrypted = isEncrypted;
        self.isSigned = isSigned;
        self.documentProperties = documentProperties;
    }
    
    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self);
        
        self.links = try container.decodeIfPresent([Link].self, forKey: .links);
        self.fileName = try container.decodeIfPresent(String.self, forKey: .fileName);
        self.sourceFormat = try container.decode(SourceFormat.self, forKey: .sourceFormat);
        self.isEncrypted = try container.decode(Bool.self, forKey: .isEncrypted);
        self.isSigned = try container.decode(Bool.self, forKey: .isSigned);
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
        try container.encode(self.sourceFormat, forKey: .sourceFormat);
        try container.encode(self.isEncrypted, forKey: .isEncrypted);
        try container.encode(self.isSigned, forKey: .isSigned);
        if (self.documentProperties != nil) {
            try container.encode(self.documentProperties, forKey: .documentProperties);
        }
        
    }
        
    public func getLinks() -> [Link]? {
        return self.links;
    }
    public func getFileName() -> String? {
        return self.fileName;
    }
    public func getSourceFormat() -> SourceFormat {
        return self.sourceFormat;
    }
    public func getIsEncrypted() -> Bool {
        return self.isEncrypted;
    }
    public func getIsSigned() -> Bool {
        return self.isSigned;
    }
    public func getDocumentProperties() -> DocumentProperties? {
        return self.documentProperties;
    }
}