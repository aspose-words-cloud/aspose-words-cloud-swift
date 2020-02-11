/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="SaveResult.swift">
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

// Result of saving.
public class SaveResult : Codable, WordsApiModel {
    
    // Field of sourceDocument. Gets or sets link to source document.      
    private var sourceDocument : FileLink?;
    
    // Field of destDocument. Gets or sets link to destination document.      
    private var destDocument : FileLink?;
    
    // Field of additionalItems. Gets or sets links to additional items (css, images etc).      
    private var additionalItems : [FileLink]?;
        
    private enum CodingKeys: String, CodingKey {
        case sourceDocument;
        case destDocument;
        case additionalItems;
        case invalidCodingKey;
    }
        
    public init() {
        
    }
    
    public required init(from decoder: Decoder) throws {
        
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.sourceDocument = try container.decodeIfPresent(FileLink.self, forKey: .sourceDocument);
        self.destDocument = try container.decodeIfPresent(FileLink.self, forKey: .destDocument);
        self.additionalItems = try container.decodeIfPresent([FileLink].self, forKey: .additionalItems);
    }

    public func encode(to encoder: Encoder) throws {
        
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.sourceDocument != nil) {
            try container.encode(self.sourceDocument, forKey: .sourceDocument);
        }
        if (self.destDocument != nil) {
            try container.encode(self.destDocument, forKey: .destDocument);
        }
        if (self.additionalItems != nil) {
            try container.encode(self.additionalItems, forKey: .additionalItems);
        }
    }
    
    // Sets sourceDocument. Gets or sets link to source document.  
    public func setSourceDocument(sourceDocument : FileLink?) {
        self.sourceDocument = sourceDocument;
    }
    
    // Gets sourceDocument. Gets or sets link to source document.  
    public func getSourceDocument() -> FileLink? {
        return self.sourceDocument;
    }
    
    // Sets destDocument. Gets or sets link to destination document.  
    public func setDestDocument(destDocument : FileLink?) {
        self.destDocument = destDocument;
    }
    
    // Gets destDocument. Gets or sets link to destination document.  
    public func getDestDocument() -> FileLink? {
        return self.destDocument;
    }
    
    // Sets additionalItems. Gets or sets links to additional items (css, images etc).  
    public func setAdditionalItems(additionalItems : [FileLink]?) {
        self.additionalItems = additionalItems;
    }
    
    // Gets additionalItems. Gets or sets links to additional items (css, images etc).  
    public func getAdditionalItems() -> [FileLink]? {
        return self.additionalItems;
    }
}
