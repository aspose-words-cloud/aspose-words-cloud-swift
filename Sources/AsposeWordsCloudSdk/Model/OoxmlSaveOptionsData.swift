/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="OoxmlSaveOptionsData.swift">
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

public class OoxmlSaveOptionsData : SaveOptionsData {
        
    // Gets or sets specifies the OOXML version for the output document.
    private let compliance : String?;
    // Gets or sets specifies a password to encrypt document using ECMA376 Standard encryption algorithm.
    private let password : String?;
    // Gets or sets specifies whether or not use pretty formats output.
    private let prettyFormat : Bool?;
        
    private enum CodingKeys: String, CodingKey { case compliance, password, prettyFormat }
        
    public init(compliance : String? = nil, password : String? = nil, prettyFormat : Bool? = nil) {
        self.compliance = compliance;
        self.password = password;
        self.prettyFormat = prettyFormat;
    }
    
    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self);
        try super.init(from: try container.superDecoder());
        if let compliance = try container.decodeIfPresent(String.self, forKey: .compliance) {
            self.compliance = compliance;
        }
        if let password = try container.decodeIfPresent(String.self, forKey: .password) {
            self.password = password;
        }
        if let prettyFormat = try container.decodeIfPresent(Bool.self, forKey: .prettyFormat) {
            self.prettyFormat = prettyFormat;
        }

    }

    public override func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.compliance != nil) {
            try container.encode(self.compliance, forKey: .compliance);
        }
        if (self.password != nil) {
            try container.encode(self.password, forKey: .password);
        }
        if (self.prettyFormat != nil) {
            try container.encode(self.prettyFormat, forKey: .prettyFormat);
        }
        
        try super.encode(to: container.superEncoder());
    }
        
    public func getCompliance() -> String? {
        return self.compliance;
    }
    public func getPassword() -> String? {
        return self.password;
    }
    public func getPrettyFormat() -> Bool? {
        return self.prettyFormat;
    }
}
