/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="DocumentProperty.swift">
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

public class DocumentProperty : LinkElement {
        
    // Gets or sets a value indicating whether flag indicates whether the property is built-in or not. If true the property is built-in, if false the property is custom.
    private let builtIn : Bool?;
    // Gets or sets name of the document property.
    private let name : String?;
    // Gets or sets string value of the document property.
    private let value : String?;
        
    private enum CodingKeys: String, CodingKey { case builtIn, name, value }
        
    public init(builtIn : Bool? = nil, name : String? = nil, value : String? = nil) {
        self.builtIn = builtIn;
        self.name = name;
        self.value = value;
    }
    
    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self);
        try super.init(from: try container.superDecoder());
        if let builtIn = try container.decodeIfPresent(Bool.self, forKey: .builtIn) {
            self.builtIn = builtIn;
        }
        if let name = try container.decodeIfPresent(String.self, forKey: .name) {
            self.name = name;
        }
        if let value = try container.decodeIfPresent(String.self, forKey: .value) {
            self.value = value;
        }

    }

    public override func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.builtIn != nil) {
            try container.encode(self.builtIn, forKey: .builtIn);
        }
        if (self.name != nil) {
            try container.encode(self.name, forKey: .name);
        }
        if (self.value != nil) {
            try container.encode(self.value, forKey: .value);
        }
        
        try super.encode(to: container.superEncoder());
    }
        
    public func getBuiltIn() -> Bool? {
        return self.builtIn;
    }
    public func getName() -> String? {
        return self.name;
    }
    public func getValue() -> String? {
        return self.value;
    }
}
