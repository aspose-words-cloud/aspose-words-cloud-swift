/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="RtfSaveOptionsData.swift">
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

public class RtfSaveOptionsData : SaveOptionsData {
        
    // Gets or sets allows to make output RTF documents smaller in size, but if they contain RTL (right-to-left) text, it will not be displayed correctly.
    private let exportCompactSize : Bool?;
    // Gets or sets specifies whether the keywords for \&quot;old readers\&quot; are written to RTF or not.
    private let exportImagesForOldReaders : Bool?;
    // Gets or sets specifies whether or not use pretty formats output.
    private let prettyFormat : Bool?;
        
    private enum CodingKeys: String, CodingKey { case exportCompactSize, exportImagesForOldReaders, prettyFormat }
        
    public init(exportCompactSize : Bool? = nil, exportImagesForOldReaders : Bool? = nil, prettyFormat : Bool? = nil) {
        self.exportCompactSize = exportCompactSize;
        self.exportImagesForOldReaders = exportImagesForOldReaders;
        self.prettyFormat = prettyFormat;
    }
    
    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self);
        try super.init(from: try container.superDecoder());
        if let exportCompactSize = try container.decodeIfPresent(Bool.self, forKey: .exportCompactSize) {
            self.exportCompactSize = exportCompactSize;
        }
        if let exportImagesForOldReaders = try container.decodeIfPresent(Bool.self, forKey: .exportImagesForOldReaders) {
            self.exportImagesForOldReaders = exportImagesForOldReaders;
        }
        if let prettyFormat = try container.decodeIfPresent(Bool.self, forKey: .prettyFormat) {
            self.prettyFormat = prettyFormat;
        }

    }

    public override func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.exportCompactSize != nil) {
            try container.encode(self.exportCompactSize, forKey: .exportCompactSize);
        }
        if (self.exportImagesForOldReaders != nil) {
            try container.encode(self.exportImagesForOldReaders, forKey: .exportImagesForOldReaders);
        }
        if (self.prettyFormat != nil) {
            try container.encode(self.prettyFormat, forKey: .prettyFormat);
        }
        
        try super.encode(to: container.superEncoder());
    }
        
    public func getExportCompactSize() -> Bool? {
        return self.exportCompactSize;
    }
    public func getExportImagesForOldReaders() -> Bool? {
        return self.exportImagesForOldReaders;
    }
    public func getPrettyFormat() -> Bool? {
        return self.prettyFormat;
    }
}
