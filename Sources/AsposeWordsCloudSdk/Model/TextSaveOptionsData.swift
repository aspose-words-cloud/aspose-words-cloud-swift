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

public class TextSaveOptionsData : SaveOptionsData, WordsApiModel {
    // Gets or sets specifies whether to output headers and footers when exporting in plain text format. default value is TxtExportHeadersFootersMode.PrimaryOnly.
    public enum ExportHeadersFootersMode : String, Codable
    { 
        // Enum value "_none"
        case _none = "None"
        
        // Enum value "primaryOnly"
        case primaryOnly = "PrimaryOnly"
        
        // Enum value "allAtEnd"
        case allAtEnd = "AllAtEnd"
        
    }

        
    // Gets or sets specifies whether to add bi-directional marks before each BiDi run when exporting in plain text format. The default value is true.
    private var addBidiMarks : Bool?;
    // Gets or sets specifies the encoding to use when exporting in plain text format.
    private var encoding : String?;
    // Gets or sets specifies whether to output headers and footers when exporting in plain text format. default value is TxtExportHeadersFootersMode.PrimaryOnly.
    private var exportHeadersFootersMode : ExportHeadersFootersMode?;
    // Gets or sets allows to specify whether the page breaks should be preserved during export. The default value is false.
    private var forcePageBreaks : Bool?;
    // Gets or sets specifies the string to use as a paragraph break when exporting in plain text format.
    private var paragraphBreak : String?;
    // Gets or sets specifies whether the program should attempt to preserve layout of tables when saving in the plain text format.
    private var preserveTableLayout : Bool?;
    // Gets or sets specifies whether the program should simplify list labels in case of complex label formatting not being adequately represented by plain text.
    private var simplifyListLabels : Bool?;
        
    private enum CodingKeys: String, CodingKey {
        case addBidiMarks;
        case encoding;
        case exportHeadersFootersMode;
        case forcePageBreaks;
        case paragraphBreak;
        case preserveTableLayout;
        case simplifyListLabels;
        case invalidCodingKey;
    }
        
    public override init() {
        super.init();
    }
    
    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder);
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.addBidiMarks = try container.decodeIfPresent(Bool.self, forKey: .addBidiMarks);
        self.encoding = try container.decodeIfPresent(String.self, forKey: .encoding);
        self.exportHeadersFootersMode = try container.decodeIfPresent(ExportHeadersFootersMode.self, forKey: .exportHeadersFootersMode);
        self.forcePageBreaks = try container.decodeIfPresent(Bool.self, forKey: .forcePageBreaks);
        self.paragraphBreak = try container.decodeIfPresent(String.self, forKey: .paragraphBreak);
        self.preserveTableLayout = try container.decodeIfPresent(Bool.self, forKey: .preserveTableLayout);
        self.simplifyListLabels = try container.decodeIfPresent(Bool.self, forKey: .simplifyListLabels);
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder);
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
    }
        
    public func setAddBidiMarks(addBidiMarks : Bool?) {
        self.addBidiMarks = addBidiMarks;
    }
    
    public func getAddBidiMarks() -> Bool? {
        return self.addBidiMarks;
    }
    public func setEncoding(encoding : String?) {
        self.encoding = encoding;
    }
    
    public func getEncoding() -> String? {
        return self.encoding;
    }
    public func setExportHeadersFootersMode(exportHeadersFootersMode : ExportHeadersFootersMode?) {
        self.exportHeadersFootersMode = exportHeadersFootersMode;
    }
    
    public func getExportHeadersFootersMode() -> ExportHeadersFootersMode? {
        return self.exportHeadersFootersMode;
    }
    public func setForcePageBreaks(forcePageBreaks : Bool?) {
        self.forcePageBreaks = forcePageBreaks;
    }
    
    public func getForcePageBreaks() -> Bool? {
        return self.forcePageBreaks;
    }
    public func setParagraphBreak(paragraphBreak : String?) {
        self.paragraphBreak = paragraphBreak;
    }
    
    public func getParagraphBreak() -> String? {
        return self.paragraphBreak;
    }
    public func setPreserveTableLayout(preserveTableLayout : Bool?) {
        self.preserveTableLayout = preserveTableLayout;
    }
    
    public func getPreserveTableLayout() -> Bool? {
        return self.preserveTableLayout;
    }
    public func setSimplifyListLabels(simplifyListLabels : Bool?) {
        self.simplifyListLabels = simplifyListLabels;
    }
    
    public func getSimplifyListLabels() -> Bool? {
        return self.simplifyListLabels;
    }
}
