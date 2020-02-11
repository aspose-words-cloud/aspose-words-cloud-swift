/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="ReplaceTextResponse.swift">
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

// Response for \&quot;Replace text\&quot; action.
public class ReplaceTextResponse : WordsResponse {
    
    // Field of documentLink. Gets or sets link to the document.      
    private var documentLink : FileLink?;
    
    // Field of matches. Gets or sets number of occurrences of the captured text in the document.      
    private var matches : Int?;
        
    private enum CodingKeys: String, CodingKey {
        case documentLink;
        case matches;
        case invalidCodingKey;
    }
        
    public override init() {
        super.init();
    }
    
    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder);
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.documentLink = try container.decodeIfPresent(FileLink.self, forKey: .documentLink);
        self.matches = try container.decodeIfPresent(Int.self, forKey: .matches);
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder);
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.documentLink != nil) {
            try container.encode(self.documentLink, forKey: .documentLink);
        }
        if (self.matches != nil) {
            try container.encode(self.matches, forKey: .matches);
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
    
    // Sets matches. Gets or sets number of occurrences of the captured text in the document.  
    public func setMatches(matches : Int?) {
        self.matches = matches;
    }
    
    // Gets matches. Gets or sets number of occurrences of the captured text in the document.  
    public func getMatches() -> Int? {
        return self.matches;
    }
}
