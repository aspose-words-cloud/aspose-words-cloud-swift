/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="ParagraphLinkCollection.swift">
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

// Collection of links to paragraphs.
public class ParagraphLinkCollection : LinkElement {
    
    // Field of paragraphLinkList. Gets or sets collection of paragraph's links.      
    private var paragraphLinkList : [ParagraphLink]?;
        
    private enum CodingKeys: String, CodingKey {
        case paragraphLinkList;
        case invalidCodingKey;
    }
        
    public override init() {
        super.init();
    }
    
    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder);
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.paragraphLinkList = try container.decodeIfPresent([ParagraphLink].self, forKey: .paragraphLinkList);
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder);
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.paragraphLinkList != nil) {
            try container.encode(self.paragraphLinkList, forKey: .paragraphLinkList);
        }
    }
    
    // Sets paragraphLinkList. Gets or sets collection of paragraph's links.  
    public func setParagraphLinkList(paragraphLinkList : [ParagraphLink]?) {
        self.paragraphLinkList = paragraphLinkList;
    }
    
    // Gets paragraphLinkList. Gets or sets collection of paragraph's links.  
    public func getParagraphLinkList() -> [ParagraphLink]? {
        return self.paragraphLinkList;
    }
}
