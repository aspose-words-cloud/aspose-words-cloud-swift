/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="XmlColor.swift">
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

// Utility class for Color serialization.
@available(macOS 10.12, iOS 10.3, watchOS 3.3, tvOS 12.0, *)
public class XmlColor : Codable, WordsApiModel {
    // Field of alpha. Utility class for Color serialization.
    private var _alpha : Int? = nil;

    public var alpha : Int? {
        get {
            return self._alpha;
        }
        set {
            self._alpha = newValue;
        }
    }

    // Field of web. Utility class for Color serialization.
    private var _web : String? = nil;

    public var web : String? {
        get {
            return self._web;
        }
        set {
            self._web = newValue;
        }
    }

    // Field of xmlAlpha. Utility class for Color serialization.
    private var _xmlAlpha : Int? = nil;

    public var xmlAlpha : Int? {
        get {
            return self._xmlAlpha;
        }
        set {
            self._xmlAlpha = newValue;
        }
    }

    // Field of xmlAlphaSpecified. Utility class for Color serialization.
    private final let _xmlAlphaSpecified : Bool? = nil;

    public var xmlAlphaSpecified : Bool? {
        get {
            return self._xmlAlphaSpecified;
        }
    }

    private enum CodingKeys: String, CodingKey {
        case alpha = "Alpha";
        case web = "Web";
        case xmlAlpha = "XmlAlpha";
        case xmlAlphaSpecified = "XmlAlphaSpecified";
        case invalidCodingKey;
    }

    public init() {
    }

    public required init(from json: [String: Any]) throws {
        self.alpha = json["Alpha"] as? Int;
        self.web = json["Web"] as? String;
        self.xmlAlpha = json["XmlAlpha"] as? Int;

    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.alpha = try container.decodeIfPresent(Int.self, forKey: .alpha);
        self.web = try container.decodeIfPresent(String.self, forKey: .web);
        self.xmlAlpha = try container.decodeIfPresent(Int.self, forKey: .xmlAlpha);

    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.alpha != nil) {
            try container.encode(self.alpha, forKey: .alpha);
        }
        if (self.web != nil) {
            try container.encode(self.web, forKey: .web);
        }
        if (self.xmlAlpha != nil) {
            try container.encode(self.xmlAlpha, forKey: .xmlAlpha);
        }
        if (self.xmlAlphaSpecified != nil) {
            try container.encode(self.xmlAlphaSpecified, forKey: .xmlAlphaSpecified);
        }
    }

    public func collectFilesContent(_ resultFilesContent : inout [FileReference]) {
    }

    public func validate() throws {
        if (self.xmlAlpha == null)
        {
            throw WordsApiError.requiredParameterError(paramName: "xmlAlpha");
        }

        if (self.xmlAlphaSpecified == null)
        {
            throw WordsApiError.requiredParameterError(paramName: "xmlAlphaSpecified");
        }

    }

    // Sets alpha. Gets or sets the Alpha component of color structure.
    public func setAlpha(alpha : Int?) -> XmlColor {
        self.alpha = alpha;
        return self;
    }

    // Gets alpha. Gets or sets the Alpha component of color structure.
    public func getAlpha() -> Int? {
        return self.alpha;
    }


    // Sets web. Gets or sets the HTML string color representation.
    public func setWeb(web : String?) -> XmlColor {
        self.web = web;
        return self;
    }

    // Gets web. Gets or sets the HTML string color representation.
    public func getWeb() -> String? {
        return self.web;
    }


    // Sets xmlAlpha. Gets or sets the Alpha wrapper for serialization.
    public func setXmlAlpha(xmlAlpha : Int?) -> XmlColor {
        self.xmlAlpha = xmlAlpha;
        return self;
    }

    // Gets xmlAlpha. Gets or sets the Alpha wrapper for serialization.
    public func getXmlAlpha() -> Int? {
        return self.xmlAlpha;
    }


    // Gets xmlAlphaSpecified. Gets a value indicating whether Alpha is specified.
    public func getXmlAlphaSpecified() -> Bool? {
        return self.xmlAlphaSpecified;
    }
}
