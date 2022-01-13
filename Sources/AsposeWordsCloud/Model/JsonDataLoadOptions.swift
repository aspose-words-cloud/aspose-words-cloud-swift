/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="JsonDataLoadOptions.swift">
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

// Represents options for parsing JSON data.
@available(macOS 10.12, iOS 10.3, watchOS 3.3, tvOS 12.0, *)
public class JsonDataLoadOptions : Codable, WordsApiModel {
    // Gets or sets a mode for parsing JSON simple values (null, boolean, number, integer,
    // and string) while loading JSON. Such a mode does not affect parsing of date-time
    // values. The default is Aspose.Words.Reporting.JsonSimpleValueParseMode.Loose.
    public enum SimpleValueParseMode : String, Codable
    {
        // Enum value "loose"
        case loose = "Loose"

        // Enum value "strict"
        case strict = "Strict"
    }

    // Field of alwaysGenerateRootObject. Represents options for parsing JSON data.
    public var alwaysGenerateRootObject : Bool?;

    // Field of exactDateTimeParseFormats. Represents options for parsing JSON data.
    public var exactDateTimeParseFormats : [String]?;

    // Field of simpleValueParseMode. Represents options for parsing JSON data.
    public var simpleValueParseMode : SimpleValueParseMode?;

    private enum CodingKeys: String, CodingKey {
        case alwaysGenerateRootObject = "AlwaysGenerateRootObject";
        case exactDateTimeParseFormats = "ExactDateTimeParseFormats";
        case simpleValueParseMode = "SimpleValueParseMode";
        case invalidCodingKey;
    }

    public init() {
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.alwaysGenerateRootObject = try container.decodeIfPresent(Bool.self, forKey: .alwaysGenerateRootObject);
        self.exactDateTimeParseFormats = try container.decodeIfPresent([String].self, forKey: .exactDateTimeParseFormats);
        self.simpleValueParseMode = try container.decodeIfPresent(SimpleValueParseMode.self, forKey: .simpleValueParseMode);
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.alwaysGenerateRootObject != nil) {
            try container.encode(self.alwaysGenerateRootObject, forKey: .alwaysGenerateRootObject);
        }
        if (self.exactDateTimeParseFormats != nil) {
            try container.encode(self.exactDateTimeParseFormats, forKey: .exactDateTimeParseFormats);
        }
        if (self.simpleValueParseMode != nil) {
            try container.encode(self.simpleValueParseMode, forKey: .simpleValueParseMode);
        }
    }

    // Sets alwaysGenerateRootObject. Gets or sets a value indicating whether a generated data source will always contain an object for a JSON root element. If a JSON root element contains a single complex property, such an object is not created by default.
    public func setAlwaysGenerateRootObject(alwaysGenerateRootObject : Bool?) -> JsonDataLoadOptions {
        self.alwaysGenerateRootObject = alwaysGenerateRootObject;
        return self;
    }

    // Gets alwaysGenerateRootObject. Gets or sets a value indicating whether a generated data source will always contain an object for a JSON root element. If a JSON root element contains a single complex property, such an object is not created by default.
    public func getAlwaysGenerateRootObject() -> Bool? {
        return self.alwaysGenerateRootObject;
    }

    // Sets exactDateTimeParseFormats. Gets or sets exact formats for parsing JSON date-time values while loading JSON. The default is null.
    public func setExactDateTimeParseFormats(exactDateTimeParseFormats : [String]?) -> JsonDataLoadOptions {
        self.exactDateTimeParseFormats = exactDateTimeParseFormats;
        return self;
    }

    // Gets exactDateTimeParseFormats. Gets or sets exact formats for parsing JSON date-time values while loading JSON. The default is null.
    public func getExactDateTimeParseFormats() -> [String]? {
        return self.exactDateTimeParseFormats;
    }

    // Sets simpleValueParseMode. Gets or sets a mode for parsing JSON simple values (null, boolean, number, integer, and string) while loading JSON. Such a mode does not affect parsing of date-time values. The default is Aspose.Words.Reporting.JsonSimpleValueParseMode.Loose.
    public func setSimpleValueParseMode(simpleValueParseMode : SimpleValueParseMode?) -> JsonDataLoadOptions {
        self.simpleValueParseMode = simpleValueParseMode;
        return self;
    }

    // Gets simpleValueParseMode. Gets or sets a mode for parsing JSON simple values (null, boolean, number, integer, and string) while loading JSON. Such a mode does not affect parsing of date-time values. The default is Aspose.Words.Reporting.JsonSimpleValueParseMode.Loose.
    public func getSimpleValueParseMode() -> SimpleValueParseMode? {
        return self.simpleValueParseMode;
    }
}
