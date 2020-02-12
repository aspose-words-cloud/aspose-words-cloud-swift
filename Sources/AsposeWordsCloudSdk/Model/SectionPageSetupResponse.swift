/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="SectionPageSetupResponse.swift">
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

// This response should be returned by the service when handling: GET http://api.aspose.com/v4.0/words/Test.doc/sections/{0}/PageSetup.
public class SectionPageSetupResponse : WordsResponse {
    
    // Field of pageSetup. Gets or sets section.      
    private var pageSetup : PageSetup?;
        
    private enum CodingKeys: String, CodingKey {
        case pageSetup;
        case invalidCodingKey;
    }
        
    public override init() {
        super.init();
    }
    
    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder);
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.pageSetup = try container.decodeIfPresent(PageSetup.self, forKey: .pageSetup);
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder);
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.pageSetup != nil) {
            try container.encode(self.pageSetup, forKey: .pageSetup);
        }
    }
    
    // Sets pageSetup. Gets or sets section.  
    public func setPageSetup(pageSetup : PageSetup?) {
        self.pageSetup = pageSetup;
    }
    
    // Gets pageSetup. Gets or sets section.  
    public func getPageSetup() -> PageSetup? {
        return self.pageSetup;
    }
}
