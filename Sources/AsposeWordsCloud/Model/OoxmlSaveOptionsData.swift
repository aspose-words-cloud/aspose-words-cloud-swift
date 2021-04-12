/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="OoxmlSaveOptionsData.swift">
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

// Container class for docx/docm/dotx/dotm/flatopc save options.
public class OoxmlSaveOptionsData : SaveOptionsData {
    // Gets or sets the compression level.
    public enum CompressionLevel : String, Codable
    {
        // Enum value "normal"
        case normal = "Normal"

        // Enum value "maximum"
        case maximum = "Maximum"

        // Enum value "fast"
        case fast = "Fast"

        // Enum value "superFast"
        case superFast = "SuperFast"
    }

    // Field of compliance. Container class for docx/docm/dotx/dotm/flatopc save options.
    private var compliance : String?;

    // Field of compressionLevel. Container class for docx/docm/dotx/dotm/flatopc save options.
    private var compressionLevel : CompressionLevel?;

    // Field of password. Container class for docx/docm/dotx/dotm/flatopc save options.
    private var password : String?;

    // Field of prettyFormat. Container class for docx/docm/dotx/dotm/flatopc save options.
    private var prettyFormat : Bool?;

    private enum CodingKeys: String, CodingKey {
        case compliance = "Compliance";
        case compressionLevel = "CompressionLevel";
        case password = "Password";
        case prettyFormat = "PrettyFormat";
        case invalidCodingKey;
    }

    public override init() {
        super.init();
    }

    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder);
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.compliance = try container.decodeIfPresent(String.self, forKey: .compliance);
        self.compressionLevel = try container.decodeIfPresent(CompressionLevel.self, forKey: .compressionLevel);
        self.password = try container.decodeIfPresent(String.self, forKey: .password);
        self.prettyFormat = try container.decodeIfPresent(Bool.self, forKey: .prettyFormat);
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder);
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.compliance != nil) {
            try container.encode(self.compliance, forKey: .compliance);
        }
        if (self.compressionLevel != nil) {
            try container.encode(self.compressionLevel, forKey: .compressionLevel);
        }
        if (self.password != nil) {
            try container.encode(self.password, forKey: .password);
        }
        if (self.prettyFormat != nil) {
            try container.encode(self.prettyFormat, forKey: .prettyFormat);
        }
    }

    // Sets compliance. Gets or sets the oOXML version for the output document.
    public func setCompliance(compliance : String?) {
        self.compliance = compliance;
    }

    // Gets compliance. Gets or sets the oOXML version for the output document.
    public func getCompliance() -> String? {
        return self.compliance;
    }

    // Sets compressionLevel. Gets or sets the compression level.
    public func setCompressionLevel(compressionLevel : CompressionLevel?) {
        self.compressionLevel = compressionLevel;
    }

    // Gets compressionLevel. Gets or sets the compression level.
    public func getCompressionLevel() -> CompressionLevel? {
        return self.compressionLevel;
    }

    // Sets password. Gets or sets the password to encrypt document using ECMA376 Standard encryption algorithm.
    public func setPassword(password : String?) {
        self.password = password;
    }

    // Gets password. Gets or sets the password to encrypt document using ECMA376 Standard encryption algorithm.
    public func getPassword() -> String? {
        return self.password;
    }

    // Sets prettyFormat. Gets or sets a value indicating whether to use pretty formats output.
    public func setPrettyFormat(prettyFormat : Bool?) {
        self.prettyFormat = prettyFormat;
    }

    // Gets prettyFormat. Gets or sets a value indicating whether to use pretty formats output.
    public func getPrettyFormat() -> Bool? {
        return self.prettyFormat;
    }
}
