/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="TextSaveOptionsData.swift">
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

public class TextSaveOptionsData : SaveOptionsData {
    // Gets or sets specifies whether to output headers and footers when exporting in plain text format. default value is TxtExportHeadersFootersMode.PrimaryOnly.
    public enum ExportHeadersFootersMode
    { 
        // Enum value "_none"
        case _none
        
        // Enum value "primaryOnly"
        case primaryOnly
        
        // Enum value "allAtEnd"
        case allAtEnd
        
    }

        
    // Gets or sets specifies whether to add bi-directional marks before each BiDi run when exporting in plain text format. The default value is true.
    private let addBidiMarks : Bool?;
    // Gets or sets specifies the encoding to use when exporting in plain text format.
    private let encoding : String?;
    // Gets or sets specifies whether to output headers and footers when exporting in plain text format. default value is TxtExportHeadersFootersMode.PrimaryOnly.
    private let exportHeadersFootersMode : ExportHeadersFootersMode?;
    // Gets or sets allows to specify whether the page breaks should be preserved during export. The default value is false.
    private let forcePageBreaks : Bool?;
    // Gets or sets specifies the string to use as a paragraph break when exporting in plain text format.
    private let paragraphBreak : String?;
    // Gets or sets specifies whether the program should attempt to preserve layout of tables when saving in the plain text format.
    private let preserveTableLayout : Bool?;
    // Gets or sets specifies whether the program should simplify list labels in case of complex label formatting not being adequately represented by plain text.
    private let simplifyListLabels : Bool?;
        
    private enum CodingKeys: String, CodingKey { case addBidiMarks, encoding, exportHeadersFootersMode, forcePageBreaks, paragraphBreak, preserveTableLayout, simplifyListLabels }
        
    public init(addBidiMarks : Bool? = nil, encoding : String? = nil, exportHeadersFootersMode : ExportHeadersFootersMode? = nil, forcePageBreaks : Bool? = nil, paragraphBreak : String? = nil, preserveTableLayout : Bool? = nil, simplifyListLabels : Bool? = nil) {
        self.addBidiMarks = addBidiMarks;
        self.encoding = encoding;
        self.exportHeadersFootersMode = exportHeadersFootersMode;
        self.forcePageBreaks = forcePageBreaks;
        self.paragraphBreak = paragraphBreak;
        self.preserveTableLayout = preserveTableLayout;
        self.simplifyListLabels = simplifyListLabels;
    }
    
    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self);
        try super.init(from: try container.superDecoder());
        if let addBidiMarks = try container.decodeIfPresent(Bool.self, forKey: .addBidiMarks) {
            self.addBidiMarks = addBidiMarks;
        }
        if let encoding = try container.decodeIfPresent(String.self, forKey: .encoding) {
            self.encoding = encoding;
        }
        if let exportHeadersFootersMode = try container.decodeIfPresent(ExportHeadersFootersMode.self, forKey: .exportHeadersFootersMode) {
            self.exportHeadersFootersMode = exportHeadersFootersMode;
        }
        if let forcePageBreaks = try container.decodeIfPresent(Bool.self, forKey: .forcePageBreaks) {
            self.forcePageBreaks = forcePageBreaks;
        }
        if let paragraphBreak = try container.decodeIfPresent(String.self, forKey: .paragraphBreak) {
            self.paragraphBreak = paragraphBreak;
        }
        if let preserveTableLayout = try container.decodeIfPresent(Bool.self, forKey: .preserveTableLayout) {
            self.preserveTableLayout = preserveTableLayout;
        }
        if let simplifyListLabels = try container.decodeIfPresent(Bool.self, forKey: .simplifyListLabels) {
            self.simplifyListLabels = simplifyListLabels;
        }

    }

    public override func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.addBidiMarks != nil) {
            try container.encode(self.addBidiMarks, forKey: .addBidiMarks);
        }
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
        if (self.preserveTableLayout != nil) {
            try container.encode(self.preserveTableLayout, forKey: .preserveTableLayout);
        }
        if (self.simplifyListLabels != nil) {
            try container.encode(self.simplifyListLabels, forKey: .simplifyListLabels);
        }
        
        try super.encode(to: container.superEncoder());
    }
        
    public func getAddBidiMarks() -> Bool? {
        return self.addBidiMarks;
    }
    public func getEncoding() -> String? {
        return self.encoding;
    }
    public func getExportHeadersFootersMode() -> ExportHeadersFootersMode? {
        return self.exportHeadersFootersMode;
    }
    public func getForcePageBreaks() -> Bool? {
        return self.forcePageBreaks;
    }
    public func getParagraphBreak() -> String? {
        return self.paragraphBreak;
    }
    public func getPreserveTableLayout() -> Bool? {
        return self.preserveTableLayout;
    }
    public func getSimplifyListLabels() -> Bool? {
        return self.simplifyListLabels;
    }
}
