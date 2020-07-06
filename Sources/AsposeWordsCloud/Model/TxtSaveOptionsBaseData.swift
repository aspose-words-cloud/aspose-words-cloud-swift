/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="TxtSaveOptionsBaseData.swift">
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

// Base class for save options of text formats.
public class TxtSaveOptionsBaseData : SaveOptionsData {
    // Gets or sets specifies whether to output headers and footers when exporting in plain text format.
    // default value is TxtExportHeadersFootersMode.PrimaryOnly.
    public enum ExportHeadersFootersMode : String, Codable
    {
        // Enum value "_none"
        case _none = "None"

        // Enum value "primaryOnly"
        case primaryOnly = "PrimaryOnly"

        // Enum value "allAtEnd"
        case allAtEnd = "AllAtEnd"
    }

    // Field of encoding. Base class for save options of text formats.
    private var encoding : String?;

    // Field of exportHeadersFootersMode. Base class for save options of text formats.
    private var exportHeadersFootersMode : ExportHeadersFootersMode?;

    // Field of forcePageBreaks. Base class for save options of text formats.
    private var forcePageBreaks : Bool?;

    // Field of paragraphBreak. Base class for save options of text formats.
    private var paragraphBreak : String?;

    private enum CodingKeys: String, CodingKey {
        case encoding;
        case exportHeadersFootersMode;
        case forcePageBreaks;
        case paragraphBreak;
        case invalidCodingKey;
    }

    public override init() {
        super.init();
    }

    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder);
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.encoding = try container.decodeIfPresent(String.self, forKey: .encoding);
        self.exportHeadersFootersMode = try container.decodeIfPresent(ExportHeadersFootersMode.self, forKey: .exportHeadersFootersMode);
        self.forcePageBreaks = try container.decodeIfPresent(Bool.self, forKey: .forcePageBreaks);
        self.paragraphBreak = try container.decodeIfPresent(String.self, forKey: .paragraphBreak);
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder);
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.encoding != nil) {
            try container.encode(self.encoding, forKey: .encoding);
        }
        if (self.exportHeadersFootersMode != nil) {
            try container.encode(self.exportHeadersFootersMode, forKey: .exportHeadersFootersMode);
        }
        if (self.forcePageBreaks != nil) {
            try container.encode(self.forcePageBreaks, forKey: .forcePageBreaks);
        }
        if (self.paragraphBreak != nil) {
            try container.encode(self.paragraphBreak, forKey: .paragraphBreak);
        }
    }

    // Sets encoding. Gets or sets specifies the encoding to use when exporting in plain text format.
    public func setEncoding(encoding : String?) {
        self.encoding = encoding;
    }

    // Gets encoding. Gets or sets specifies the encoding to use when exporting in plain text format.
    public func getEncoding() -> String? {
        return self.encoding;
    }

    // Sets exportHeadersFootersMode. Gets or sets specifies whether to output headers and footers when exporting in plain text format. default value is TxtExportHeadersFootersMode.PrimaryOnly.
    public func setExportHeadersFootersMode(exportHeadersFootersMode : ExportHeadersFootersMode?) {
        self.exportHeadersFootersMode = exportHeadersFootersMode;
    }

    // Gets exportHeadersFootersMode. Gets or sets specifies whether to output headers and footers when exporting in plain text format. default value is TxtExportHeadersFootersMode.PrimaryOnly.
    public func getExportHeadersFootersMode() -> ExportHeadersFootersMode? {
        return self.exportHeadersFootersMode;
    }

    // Sets forcePageBreaks. Gets or sets allows to specify whether the page breaks should be preserved during export. The default value is false.
    public func setForcePageBreaks(forcePageBreaks : Bool?) {
        self.forcePageBreaks = forcePageBreaks;
    }

    // Gets forcePageBreaks. Gets or sets allows to specify whether the page breaks should be preserved during export. The default value is false.
    public func getForcePageBreaks() -> Bool? {
        return self.forcePageBreaks;
    }

    // Sets paragraphBreak. Gets or sets specifies the string to use as a paragraph break when exporting in plain text format.
    public func setParagraphBreak(paragraphBreak : String?) {
        self.paragraphBreak = paragraphBreak;
    }

    // Gets paragraphBreak. Gets or sets specifies the string to use as a paragraph break when exporting in plain text format.
    public func getParagraphBreak() -> String? {
        return self.paragraphBreak;
    }
}
