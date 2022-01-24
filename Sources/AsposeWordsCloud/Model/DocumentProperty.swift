/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="DocumentProperty.swift">
 *   Copyright (c) 2022 Aspose.Words for Cloud
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

// Words document property DTO.
@available(macOS 10.12, iOS 10.3, watchOS 3.3, tvOS 12.0, *)
public class DocumentProperty : LinkElement {
    // Field of builtIn. Words document property DTO.
    private var _builtIn : Bool?;

    public var : Bool? {
        get {
            return self._builtIn;
        }
        set {
            self._builtIn = newValue;
        }
    }

    // Field of name. Words document property DTO.
    private var _name : String?;

    public var : String? {
        get {
            return self._name;
        }
        set {
            self._name = newValue;
        }
    }

    // Field of value. Words document property DTO.
    private var _value : String?;

    public var : String? {
        get {
            return self._value;
        }
        set {
            self._value = newValue;
        }
    }

    private enum CodingKeys: String, CodingKey {
        case builtIn = "BuiltIn";
        case name = "Name";
        case value = "Value";
        case invalidCodingKey;
    }

    public override init() {
        super.init();
    }

    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder);
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.builtIn = try container.decodeIfPresent(Bool.self, forKey: .builtIn);
        self.name = try container.decodeIfPresent(String.self, forKey: .name);
        self.value = try container.decodeIfPresent(String.self, forKey: .value);
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder);
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
    }

    // Sets builtIn. Gets or sets a value indicating whether the property is built-in or not. If true the property is built-in, if false the property is custom.
    public func setBuiltIn(builtIn : Bool?) -> DocumentProperty {
        self.builtIn = builtIn;
        return self;
    }

    // Gets builtIn. Gets or sets a value indicating whether the property is built-in or not. If true the property is built-in, if false the property is custom.
    public func getBuiltIn() -> Bool? {
        return self.builtIn;
    }


    // Sets name. Gets or sets the name of the document property.
    public func setName(name : String?) -> DocumentProperty {
        self.name = name;
        return self;
    }

    // Gets name. Gets or sets the name of the document property.
    public func getName() -> String? {
        return self.name;
    }


    // Sets value. Gets or sets the value of the document property.
    public func setValue(value : String?) -> DocumentProperty {
        self.value = value;
        return self;
    }

    // Gets value. Gets or sets the value of the document property.
    public func getValue() -> String? {
        return self.value;
    }
}
