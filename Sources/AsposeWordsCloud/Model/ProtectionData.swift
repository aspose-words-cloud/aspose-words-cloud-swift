/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="ProtectionData.swift">
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

// Container for the data about protection of the document.
public class ProtectionData : Codable, WordsApiModel {
    // Field of protectionType. Container for the data about protection of the document.
    private var protectionType : String?;

    private enum CodingKeys: String, CodingKey {
        case protectionType = "ProtectionType";
        case invalidCodingKey;
    }

    public init() {
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.protectionType = try container.decodeIfPresent(String.self, forKey: .protectionType);
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.protectionType != nil) {
            try container.encode(self.protectionType, forKey: .protectionType);
        }
    }

    // Sets protectionType. Gets or sets type of the protection.
    public func setProtectionType(protectionType : String?) {
        self.protectionType = protectionType;
    }

    // Gets protectionType. Gets or sets type of the protection.
    public func getProtectionType() -> String? {
        return self.protectionType;
    }
}
