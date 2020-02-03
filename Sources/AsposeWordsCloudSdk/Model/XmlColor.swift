/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="XmlColor.swift">
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

public class XmlColor : Codable {
        
    // Gets or sets hTML string color representation.
    private let web : String?;
    // Gets or sets alpha component of color structure.
    private let alpha : Int;
        
    private enum CodingKeys: String, CodingKey { case web, alpha }
        
    public init(web : String? = nil, alpha : Int) {
        self.web = web;
        self.alpha = alpha;
    }
    
    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self);
        
        if let web = try container.decodeIfPresent(String.self, forKey: .web) {
            self.web = web;
        }
        self.alpha = try container.decode(Int.self, forKey: .alpha);

    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.web != nil) {
            try container.encode(self.web, forKey: .web);
        }
        try container.encode(self.alpha, forKey: .alpha);
        
        
    }
        
    public func getWeb() -> String? {
        return self.web;
    }
    public func getAlpha() -> Int {
        return self.alpha;
    }
}
