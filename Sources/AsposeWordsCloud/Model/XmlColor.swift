/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="XmlColor.swift">
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

// Utility class for Color serialization.
public class XmlColor : Codable, WordsApiModel {
    // Field of alpha. Utility class for Color serialization.
    private var alpha : Int?;

    // Field of web. Utility class for Color serialization.
    private var web : String?;

    private enum CodingKeys: String, CodingKey {
        case alpha;
        case web;
        case invalidCodingKey;
    }

    public init() {
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.alpha = try container.decodeIfPresent(Int.self, forKey: .alpha);
        self.web = try container.decodeIfPresent(String.self, forKey: .web);
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.alpha != nil) {
            try container.encode(self.alpha, forKey: .alpha);
        }
        if (self.web != nil) {
            try container.encode(self.web, forKey: .web);
        }
    }

    // Sets alpha. Gets or sets alpha component of color structure.
    public func setAlpha(alpha : Int?) {
        self.alpha = alpha;
    }

    // Gets alpha. Gets or sets alpha component of color structure.
    public func getAlpha() -> Int? {
        return self.alpha;
    }

    // Sets web. Gets or sets hTML string color representation.
    public func setWeb(web : String?) {
        self.web = web;
    }

    // Gets web. Gets or sets hTML string color representation.
    public func getWeb() -> String? {
        return self.web;
    }
}
