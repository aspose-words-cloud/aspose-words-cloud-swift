/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="PublicKeyResponse.swift">
 *   Copyright (c) 2021 Aspose.Words for Cloud
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

// REST response for RSA public key info.
public class PublicKeyResponse : WordsResponse {
    // Field of exponent. REST response for RSA public key info.
    private var exponent : String?;

    // Field of modulus. REST response for RSA public key info.
    private var modulus : String?;

    private enum CodingKeys: String, CodingKey {
        case exponent = "Exponent";
        case modulus = "Modulus";
        case invalidCodingKey;
    }

    public override init() {
        super.init();
    }

    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder);
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.exponent = try container.decodeIfPresent(String.self, forKey: .exponent);
        self.modulus = try container.decodeIfPresent(String.self, forKey: .modulus);
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder);
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.exponent != nil) {
            try container.encode(self.exponent, forKey: .exponent);
        }
        if (self.modulus != nil) {
            try container.encode(self.modulus, forKey: .modulus);
        }
    }

    // Sets exponent. Gets or sets RSA key exponent as Base64 string.
    public func setExponent(exponent : String?) {
        self.exponent = exponent;
    }

    // Gets exponent. Gets or sets RSA key exponent as Base64 string.
    public func getExponent() -> String? {
        return self.exponent;
    }

    // Sets modulus. Gets or sets RSA key modulus as Base64 string.
    public func setModulus(modulus : String?) {
        self.modulus = modulus;
    }

    // Gets modulus. Gets or sets RSA key modulus as Base64 string.
    public func getModulus() -> String? {
        return self.modulus;
    }
}