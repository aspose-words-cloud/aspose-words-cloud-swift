/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="CustomXmlPartResponse.swift">
 *   Copyright (c) 2023 Aspose.Words for Cloud
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

// The REST response with a custom xml part.
@available(macOS 10.12, iOS 10.3, watchOS 3.3, tvOS 12.0, *)
public class CustomXmlPartResponse : WordsResponse {
    // Field of customXmlPart. The REST response with a custom xml part.
    private var _customXmlPart : CustomXmlPart? = nil;

    public var customXmlPart : CustomXmlPart? {
        get {
            return self._customXmlPart;
        }
        set {
            self._customXmlPart = newValue;
        }
    }

    private enum CodingKeys: String, CodingKey {
        case customXmlPart = "CustomXmlPart";
        case invalidCodingKey;
    }

    public override init() {
        super.init();
    }

    public required init(from json: [String: Any]) throws {
        try super.init(from: json);
        if let raw_customXmlPart = json["CustomXmlPart"] as? [String: Any] {
            self.customXmlPart = try ObjectSerializer.deserialize(type: CustomXmlPart.self, from: raw_customXmlPart);
        }

    }

    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder);
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.customXmlPart = try container.decodeIfPresent(CustomXmlPart.self, forKey: .customXmlPart);
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder);
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.customXmlPart != nil) {
            try container.encode(self.customXmlPart, forKey: .customXmlPart);
        }
    }

    public override func collectFilesContent(_ resultFilesContent : inout [FileReference]) {
    }

    // Sets customXmlPart. Gets or sets the custom xml part.
    public func setCustomXmlPart(customXmlPart : CustomXmlPart?) -> CustomXmlPartResponse {
        self.customXmlPart = customXmlPart;
        return self;
    }

    // Gets customXmlPart. Gets or sets the custom xml part.
    public func getCustomXmlPart() -> CustomXmlPart? {
        return self.customXmlPart;
    }
}
