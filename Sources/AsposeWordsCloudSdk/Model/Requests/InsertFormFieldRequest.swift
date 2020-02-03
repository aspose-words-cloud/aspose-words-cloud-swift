/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="InsertFormFieldRequest.swift">
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

public class InsertFormFieldRequest : Decodable {
    private let name : String;
    private let formField : FormField;
    private let nodePath : String;
    private let folder : String?;
    private let storage : String?;
    private let loadEncoding : String?;
    private let password : String?;
    private let destFileName : String?;
    private let revisionAuthor : String?;
    private let revisionDateTime : String?;
    private let insertBeforeNode : String?;
    
    private enum CodingKeys: String, CodingKey { case name, formField, nodePath, folder, storage, loadEncoding, password, destFileName, revisionAuthor, revisionDateTime, insertBeforeNode }
    
    public init(name : String, formField : FormField, nodePath : String, folder : String? = null, storage : String? = null, loadEncoding : String? = null, password : String? = null, destFileName : String? = null, revisionAuthor : String? = null, revisionDateTime : String? = null, insertBeforeNode : String? = null) {
        self.name = name;
        self.formField = formField;
        self.nodePath = nodePath;
        self.folder = folder;
        self.storage = storage;
        self.loadEncoding = loadEncoding;
        self.password = password;
        self.destFileName = destFileName;
        self.revisionAuthor = revisionAuthor;
        self.revisionDateTime = revisionDateTime;
        self.insertBeforeNode = insertBeforeNode;
    }
    
    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self);
        
        self.name = try container.decode(.self, forKey: .name);
        self.formField = try container.decode(.self, forKey: .formField);
        self.nodePath = try container.decode(.self, forKey: .nodePath);
        if let folder = try container.decodeIfPresent(.self, forKey: .folder) {
            self.folder = folder;
        }
        if let storage = try container.decodeIfPresent(.self, forKey: .storage) {
            self.storage = storage;
        }
        if let loadEncoding = try container.decodeIfPresent(.self, forKey: .loadEncoding) {
            self.loadEncoding = loadEncoding;
        }
        if let password = try container.decodeIfPresent(.self, forKey: .password) {
            self.password = password;
        }
        if let destFileName = try container.decodeIfPresent(.self, forKey: .destFileName) {
            self.destFileName = destFileName;
        }
        if let revisionAuthor = try container.decodeIfPresent(.self, forKey: .revisionAuthor) {
            self.revisionAuthor = revisionAuthor;
        }
        if let revisionDateTime = try container.decodeIfPresent(.self, forKey: .revisionDateTime) {
            self.revisionDateTime = revisionDateTime;
        }
        if let insertBeforeNode = try container.decodeIfPresent(.self, forKey: .insertBeforeNode) {
            self.insertBeforeNode = insertBeforeNode;
        }

    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self);
        try container.encode(self.name, forKey: .name);
        try container.encode(self.formField, forKey: .formField);
        try container.encode(self.nodePath, forKey: .nodePath);
        if (self.folder != nil) {
            try container.encode(self.folder, forKey: .folder);
        }
        if (self.storage != nil) {
            try container.encode(self.storage, forKey: .storage);
        }
        if (self.loadEncoding != nil) {
            try container.encode(self.loadEncoding, forKey: .loadEncoding);
        }
        if (self.password != nil) {
            try container.encode(self.password, forKey: .password);
        }
        if (self.destFileName != nil) {
            try container.encode(self.destFileName, forKey: .destFileName);
        }
        if (self.revisionAuthor != nil) {
            try container.encode(self.revisionAuthor, forKey: .revisionAuthor);
        }
        if (self.revisionDateTime != nil) {
            try container.encode(self.revisionDateTime, forKey: .revisionDateTime);
        }
        if (self.insertBeforeNode != nil) {
            try container.encode(self.insertBeforeNode, forKey: .insertBeforeNode);
        }
        
        
    }
    
    public func getName() -> String {
        return self.name;
    }
    
    public func getFormField() -> FormField {
        return self.formField;
    }
    
    public func getNodePath() -> String {
        return self.nodePath;
    }
    
    public func getFolder() -> String? {
        return self.folder;
    }
    
    public func getStorage() -> String? {
        return self.storage;
    }
    
    public func getLoadEncoding() -> String? {
        return self.loadEncoding;
    }
    
    public func getPassword() -> String? {
        return self.password;
    }
    
    public func getDestFileName() -> String? {
        return self.destFileName;
    }
    
    public func getRevisionAuthor() -> String? {
        return self.revisionAuthor;
    }
    
    public func getRevisionDateTime() -> String? {
        return self.revisionDateTime;
    }
    
    public func getInsertBeforeNode() -> String? {
        return self.insertBeforeNode;
    }
}
