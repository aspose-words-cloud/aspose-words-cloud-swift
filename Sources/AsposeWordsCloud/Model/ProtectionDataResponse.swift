/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="ProtectionDataResponse.swift">
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

// Response for the request of data about protection.
public class ProtectionDataResponse : WordsResponse {
    
    // Field of documentLink. Gets or sets link to the document.      
    private var documentLink : FileLink?;
    
    // Field of protectionData. Gets or sets protection's data of the document.      
    private var protectionData : ProtectionData?;
        
    private enum CodingKeys: String, CodingKey {
        case documentLink;
        case protectionData;
        case invalidCodingKey;
    }
        
    public override init() {
        super.init();
    }
    
    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder);
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.documentLink = try container.decodeIfPresent(FileLink.self, forKey: .documentLink);
        self.protectionData = try container.decodeIfPresent(ProtectionData.self, forKey: .protectionData);
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder);
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.documentLink != nil) {
            try container.encode(self.documentLink, forKey: .documentLink);
        }
        if (self.protectionData != nil) {
            try container.encode(self.protectionData, forKey: .protectionData);
        }
    }
    
    // Sets documentLink. Gets or sets link to the document.  
    public func setDocumentLink(documentLink : FileLink?) {
        self.documentLink = documentLink;
    }
    
    // Gets documentLink. Gets or sets link to the document.  
    public func getDocumentLink() -> FileLink? {
        return self.documentLink;
    }
    
    // Sets protectionData. Gets or sets protection's data of the document.  
    public func setProtectionData(protectionData : ProtectionData?) {
        self.protectionData = protectionData;
    }
    
    // Gets protectionData. Gets or sets protection's data of the document.  
    public func getProtectionData() -> ProtectionData? {
        return self.protectionData;
    }
}
