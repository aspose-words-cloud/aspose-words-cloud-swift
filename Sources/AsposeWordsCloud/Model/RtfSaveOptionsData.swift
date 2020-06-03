/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="RtfSaveOptionsData.swift">
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

// container class for rtf save options.
public class RtfSaveOptionsData : SaveOptionsData {
    
    // Field of exportCompactSize. Gets or sets allows to make output RTF documents smaller in size, but if they contain RTL (right-to-left) text, it will not be displayed correctly.      
    private var exportCompactSize : Bool?;
    
    // Field of exportImagesForOldReaders. Gets or sets specifies whether the keywords for \"old readers\" are written to RTF or not.      
    private var exportImagesForOldReaders : Bool?;
    
    // Field of prettyFormat. Gets or sets specifies whether or not use pretty formats output.      
    private var prettyFormat : Bool?;
    
    // Field of saveImagesAsWmf. Gets or sets a value indicating whether when true all images will be saved as WMF. This option might help to avoid WordPad warning messages.      
    private var saveImagesAsWmf : Bool?;
        
    private enum CodingKeys: String, CodingKey {
        case exportCompactSize;
        case exportImagesForOldReaders;
        case prettyFormat;
        case saveImagesAsWmf;
        case invalidCodingKey;
    }
        
    public override init() {
        super.init();
    }
    
    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder);
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.exportCompactSize = try container.decodeIfPresent(Bool.self, forKey: .exportCompactSize);
        self.exportImagesForOldReaders = try container.decodeIfPresent(Bool.self, forKey: .exportImagesForOldReaders);
        self.prettyFormat = try container.decodeIfPresent(Bool.self, forKey: .prettyFormat);
        self.saveImagesAsWmf = try container.decodeIfPresent(Bool.self, forKey: .saveImagesAsWmf);
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder);
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
        if (self.saveImagesAsWmf != nil) {
            try container.encode(self.saveImagesAsWmf, forKey: .saveImagesAsWmf);
        }
    }
    
    // Sets exportCompactSize. Gets or sets allows to make output RTF documents smaller in size, but if they contain RTL (right-to-left) text, it will not be displayed correctly.  
    public func setExportCompactSize(exportCompactSize : Bool?) {
        self.exportCompactSize = exportCompactSize;
    }
    
    // Gets exportCompactSize. Gets or sets allows to make output RTF documents smaller in size, but if they contain RTL (right-to-left) text, it will not be displayed correctly.  
    public func getExportCompactSize() -> Bool? {
        return self.exportCompactSize;
    }
    
    // Sets exportImagesForOldReaders. Gets or sets specifies whether the keywords for \"old readers\" are written to RTF or not.  
    public func setExportImagesForOldReaders(exportImagesForOldReaders : Bool?) {
        self.exportImagesForOldReaders = exportImagesForOldReaders;
    }
    
    // Gets exportImagesForOldReaders. Gets or sets specifies whether the keywords for \"old readers\" are written to RTF or not.  
    public func getExportImagesForOldReaders() -> Bool? {
        return self.exportImagesForOldReaders;
    }
    
    // Sets prettyFormat. Gets or sets specifies whether or not use pretty formats output.  
    public func setPrettyFormat(prettyFormat : Bool?) {
        self.prettyFormat = prettyFormat;
    }
    
    // Gets prettyFormat. Gets or sets specifies whether or not use pretty formats output.  
    public func getPrettyFormat() -> Bool? {
        return self.prettyFormat;
    }
    
    // Sets saveImagesAsWmf. Gets or sets a value indicating whether when true all images will be saved as WMF. This option might help to avoid WordPad warning messages.  
    public func setSaveImagesAsWmf(saveImagesAsWmf : Bool?) {
        self.saveImagesAsWmf = saveImagesAsWmf;
    }
    
    // Gets saveImagesAsWmf. Gets or sets a value indicating whether when true all images will be saved as WMF. This option might help to avoid WordPad warning messages.  
    public func getSaveImagesAsWmf() -> Bool? {
        return self.saveImagesAsWmf;
    }
}
