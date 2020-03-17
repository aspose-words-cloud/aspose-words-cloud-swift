/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="SaveOptionsData.swift">
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

// base container class for save options data.
public class SaveOptionsData : Codable, WordsApiModel {
    
    // Field of saveFormat. Gets or sets format of save.      
    private var saveFormat : String?;
    
    // Field of fileName. Gets or sets name of destination file.      
    private var fileName : String?;
    
    // Field of dmlRenderingMode. Gets or sets a value determining how DrawingML shapes are rendered. { Fallback | DrawingML }.      
    private var dmlRenderingMode : String?;
    
    // Field of dmlEffectsRenderingMode. Gets or sets a value determining how DrawingML effects are rendered. { Simplified | None | Fine }.      
    private var dmlEffectsRenderingMode : String?;
    
    // Field of zipOutput. Gets or sets controls zip output or not. Default value is false.      
    private var zipOutput : Bool?;
    
    // Field of updateLastSavedTimeProperty. Gets or sets a value determining whether the Aspose.Words.Properties.BuiltInDocumentProperties.LastSavedTime property is updated before saving.      
    private var updateLastSavedTimeProperty : Bool?;
    
    // Field of updateSdtContent. Gets or sets value determining whether content of StructuredDocumentTag is updated before saving.      
    private var updateSdtContent : Bool?;
    
    // Field of updateFields. Gets or sets a value determining if fields should be updated before saving the document to a fixed page format. Default value for this property is. true      
    private var updateFields : Bool?;
        
    private enum CodingKeys: String, CodingKey {
        case saveFormat;
        case fileName;
        case dmlRenderingMode;
        case dmlEffectsRenderingMode;
        case zipOutput;
        case updateLastSavedTimeProperty;
        case updateSdtContent;
        case updateFields;
        case invalidCodingKey;
    }
        
    public init() {
        
    }
    
    public required init(from decoder: Decoder) throws {
        
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.saveFormat = try container.decodeIfPresent(String.self, forKey: .saveFormat);
        self.fileName = try container.decodeIfPresent(String.self, forKey: .fileName);
        self.dmlRenderingMode = try container.decodeIfPresent(String.self, forKey: .dmlRenderingMode);
        self.dmlEffectsRenderingMode = try container.decodeIfPresent(String.self, forKey: .dmlEffectsRenderingMode);
        self.zipOutput = try container.decodeIfPresent(Bool.self, forKey: .zipOutput);
        self.updateLastSavedTimeProperty = try container.decodeIfPresent(Bool.self, forKey: .updateLastSavedTimeProperty);
        self.updateSdtContent = try container.decodeIfPresent(Bool.self, forKey: .updateSdtContent);
        self.updateFields = try container.decodeIfPresent(Bool.self, forKey: .updateFields);
    }

    public func encode(to encoder: Encoder) throws {
        
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.saveFormat != nil) {
            try container.encode(self.saveFormat, forKey: .saveFormat);
        }
        if (self.fileName != nil) {
            try container.encode(self.fileName, forKey: .fileName);
        }
        if (self.dmlRenderingMode != nil) {
            try container.encode(self.dmlRenderingMode, forKey: .dmlRenderingMode);
        }
        if (self.dmlEffectsRenderingMode != nil) {
            try container.encode(self.dmlEffectsRenderingMode, forKey: .dmlEffectsRenderingMode);
        }
        if (self.zipOutput != nil) {
            try container.encode(self.zipOutput, forKey: .zipOutput);
        }
        if (self.updateLastSavedTimeProperty != nil) {
            try container.encode(self.updateLastSavedTimeProperty, forKey: .updateLastSavedTimeProperty);
        }
        if (self.updateSdtContent != nil) {
            try container.encode(self.updateSdtContent, forKey: .updateSdtContent);
        }
        if (self.updateFields != nil) {
            try container.encode(self.updateFields, forKey: .updateFields);
        }
    }
    
    // Sets saveFormat. Gets or sets format of save.  
    public func setSaveFormat(saveFormat : String?) {
        self.saveFormat = saveFormat;
    }
    
    // Gets saveFormat. Gets or sets format of save.  
    public func getSaveFormat() -> String? {
        return self.saveFormat;
    }
    
    // Sets fileName. Gets or sets name of destination file.  
    public func setFileName(fileName : String?) {
        self.fileName = fileName;
    }
    
    // Gets fileName. Gets or sets name of destination file.  
    public func getFileName() -> String? {
        return self.fileName;
    }
    
    // Sets dmlRenderingMode. Gets or sets a value determining how DrawingML shapes are rendered. { Fallback | DrawingML }.  
    public func setDmlRenderingMode(dmlRenderingMode : String?) {
        self.dmlRenderingMode = dmlRenderingMode;
    }
    
    // Gets dmlRenderingMode. Gets or sets a value determining how DrawingML shapes are rendered. { Fallback | DrawingML }.  
    public func getDmlRenderingMode() -> String? {
        return self.dmlRenderingMode;
    }
    
    // Sets dmlEffectsRenderingMode. Gets or sets a value determining how DrawingML effects are rendered. { Simplified | None | Fine }.  
    public func setDmlEffectsRenderingMode(dmlEffectsRenderingMode : String?) {
        self.dmlEffectsRenderingMode = dmlEffectsRenderingMode;
    }
    
    // Gets dmlEffectsRenderingMode. Gets or sets a value determining how DrawingML effects are rendered. { Simplified | None | Fine }.  
    public func getDmlEffectsRenderingMode() -> String? {
        return self.dmlEffectsRenderingMode;
    }
    
    // Sets zipOutput. Gets or sets controls zip output or not. Default value is false.  
    public func setZipOutput(zipOutput : Bool?) {
        self.zipOutput = zipOutput;
    }
    
    // Gets zipOutput. Gets or sets controls zip output or not. Default value is false.  
    public func getZipOutput() -> Bool? {
        return self.zipOutput;
    }
    
    // Sets updateLastSavedTimeProperty. Gets or sets a value determining whether the Aspose.Words.Properties.BuiltInDocumentProperties.LastSavedTime property is updated before saving.  
    public func setUpdateLastSavedTimeProperty(updateLastSavedTimeProperty : Bool?) {
        self.updateLastSavedTimeProperty = updateLastSavedTimeProperty;
    }
    
    // Gets updateLastSavedTimeProperty. Gets or sets a value determining whether the Aspose.Words.Properties.BuiltInDocumentProperties.LastSavedTime property is updated before saving.  
    public func getUpdateLastSavedTimeProperty() -> Bool? {
        return self.updateLastSavedTimeProperty;
    }
    
    // Sets updateSdtContent. Gets or sets value determining whether content of StructuredDocumentTag is updated before saving.  
    public func setUpdateSdtContent(updateSdtContent : Bool?) {
        self.updateSdtContent = updateSdtContent;
    }
    
    // Gets updateSdtContent. Gets or sets value determining whether content of StructuredDocumentTag is updated before saving.  
    public func getUpdateSdtContent() -> Bool? {
        return self.updateSdtContent;
    }
    
    // Sets updateFields. Gets or sets a value determining if fields should be updated before saving the document to a fixed page format. Default value for this property is. true  
    public func setUpdateFields(updateFields : Bool?) {
        self.updateFields = updateFields;
    }
    
    // Gets updateFields. Gets or sets a value determining if fields should be updated before saving the document to a fixed page format. Default value for this property is. true  
    public func getUpdateFields() -> Bool? {
        return self.updateFields;
    }
}
