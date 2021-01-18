/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="SaveOptionsData.swift">
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

// base container class for save options data.
public class SaveOptionsData : Codable, WordsApiModel {
    // Gets or sets the value determining how 3D effects are rendered.
    public enum Dml3DEffectsRenderingMode : String, Codable
    {
        // Enum value "basic"
        case basic = "Basic"

        // Enum value "advanced"
        case advanced = "Advanced"
    }

    // Field of dml3DEffectsRenderingMode. base container class for save options data.
    private var dml3DEffectsRenderingMode : Dml3DEffectsRenderingMode?;

    // Field of dmlEffectsRenderingMode. base container class for save options data.
    private var dmlEffectsRenderingMode : String?;

    // Field of dmlRenderingMode. base container class for save options data.
    private var dmlRenderingMode : String?;

    // Field of fileName. base container class for save options data.
    private var fileName : String?;

    // Field of saveFormat. base container class for save options data.
    private var saveFormat : String?;

    // Field of updateFields. base container class for save options data.
    private var updateFields : Bool?;

    // Field of updateLastPrintedProperty. base container class for save options data.
    private var updateLastPrintedProperty : Bool?;

    // Field of updateLastSavedTimeProperty. base container class for save options data.
    private var updateLastSavedTimeProperty : Bool?;

    // Field of updateSdtContent. base container class for save options data.
    private var updateSdtContent : Bool?;

    // Field of zipOutput. base container class for save options data.
    private var zipOutput : Bool?;

    private enum CodingKeys: String, CodingKey {
        case dml3DEffectsRenderingMode = "Dml3DEffectsRenderingMode";
        case dmlEffectsRenderingMode = "DmlEffectsRenderingMode";
        case dmlRenderingMode = "DmlRenderingMode";
        case fileName = "FileName";
        case saveFormat = "SaveFormat";
        case updateFields = "UpdateFields";
        case updateLastPrintedProperty = "UpdateLastPrintedProperty";
        case updateLastSavedTimeProperty = "UpdateLastSavedTimeProperty";
        case updateSdtContent = "UpdateSdtContent";
        case zipOutput = "ZipOutput";
        case invalidCodingKey;
    }

    public init() {
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.dml3DEffectsRenderingMode = try container.decodeIfPresent(Dml3DEffectsRenderingMode.self, forKey: .dml3DEffectsRenderingMode);
        self.dmlEffectsRenderingMode = try container.decodeIfPresent(String.self, forKey: .dmlEffectsRenderingMode);
        self.dmlRenderingMode = try container.decodeIfPresent(String.self, forKey: .dmlRenderingMode);
        self.fileName = try container.decodeIfPresent(String.self, forKey: .fileName);
        self.saveFormat = try container.decodeIfPresent(String.self, forKey: .saveFormat);
        self.updateFields = try container.decodeIfPresent(Bool.self, forKey: .updateFields);
        self.updateLastPrintedProperty = try container.decodeIfPresent(Bool.self, forKey: .updateLastPrintedProperty);
        self.updateLastSavedTimeProperty = try container.decodeIfPresent(Bool.self, forKey: .updateLastSavedTimeProperty);
        self.updateSdtContent = try container.decodeIfPresent(Bool.self, forKey: .updateSdtContent);
        self.zipOutput = try container.decodeIfPresent(Bool.self, forKey: .zipOutput);
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.dml3DEffectsRenderingMode != nil) {
            try container.encode(self.dml3DEffectsRenderingMode, forKey: .dml3DEffectsRenderingMode);
        }
        if (self.dmlEffectsRenderingMode != nil) {
            try container.encode(self.dmlEffectsRenderingMode, forKey: .dmlEffectsRenderingMode);
        }
        if (self.dmlRenderingMode != nil) {
            try container.encode(self.dmlRenderingMode, forKey: .dmlRenderingMode);
        }
        if (self.fileName != nil) {
            try container.encode(self.fileName, forKey: .fileName);
        }
        if (self.saveFormat != nil) {
            try container.encode(self.saveFormat, forKey: .saveFormat);
        }
        if (self.updateFields != nil) {
            try container.encode(self.updateFields, forKey: .updateFields);
        }
        if (self.updateLastPrintedProperty != nil) {
            try container.encode(self.updateLastPrintedProperty, forKey: .updateLastPrintedProperty);
        }
        if (self.updateLastSavedTimeProperty != nil) {
            try container.encode(self.updateLastSavedTimeProperty, forKey: .updateLastSavedTimeProperty);
        }
        if (self.updateSdtContent != nil) {
            try container.encode(self.updateSdtContent, forKey: .updateSdtContent);
        }
        if (self.zipOutput != nil) {
            try container.encode(self.zipOutput, forKey: .zipOutput);
        }
    }

    // Sets dml3DEffectsRenderingMode. Gets or sets the value determining how 3D effects are rendered.
    public func setDml3DEffectsRenderingMode(dml3DEffectsRenderingMode : Dml3DEffectsRenderingMode?) {
        self.dml3DEffectsRenderingMode = dml3DEffectsRenderingMode;
    }

    // Gets dml3DEffectsRenderingMode. Gets or sets the value determining how 3D effects are rendered.
    public func getDml3DEffectsRenderingMode() -> Dml3DEffectsRenderingMode? {
        return self.dml3DEffectsRenderingMode;
    }

    // Sets dmlEffectsRenderingMode. Gets or sets the value determining how DrawingML effects are rendered. { Simplified | None | Fine }.
    public func setDmlEffectsRenderingMode(dmlEffectsRenderingMode : String?) {
        self.dmlEffectsRenderingMode = dmlEffectsRenderingMode;
    }

    // Gets dmlEffectsRenderingMode. Gets or sets the value determining how DrawingML effects are rendered. { Simplified | None | Fine }.
    public func getDmlEffectsRenderingMode() -> String? {
        return self.dmlEffectsRenderingMode;
    }

    // Sets dmlRenderingMode. Gets or sets the option that controls how DrawingML shapes are rendered.
    public func setDmlRenderingMode(dmlRenderingMode : String?) {
        self.dmlRenderingMode = dmlRenderingMode;
    }

    // Gets dmlRenderingMode. Gets or sets the option that controls how DrawingML shapes are rendered.
    public func getDmlRenderingMode() -> String? {
        return self.dmlRenderingMode;
    }

    // Sets fileName. Gets or sets the name of destination file.
    public func setFileName(fileName : String?) {
        self.fileName = fileName;
    }

    // Gets fileName. Gets or sets the name of destination file.
    public func getFileName() -> String? {
        return self.fileName;
    }

    // Sets saveFormat. Gets or sets the format of save.
    public func setSaveFormat(saveFormat : String?) {
        self.saveFormat = saveFormat;
    }

    // Gets saveFormat. Gets or sets the format of save.
    public func getSaveFormat() -> String? {
        return self.saveFormat;
    }

    // Sets updateFields. Gets or sets a value indicating whether fields should be updated before saving the document to a fixed page format. The default value is true.
    public func setUpdateFields(updateFields : Bool?) {
        self.updateFields = updateFields;
    }

    // Gets updateFields. Gets or sets a value indicating whether fields should be updated before saving the document to a fixed page format. The default value is true.
    public func getUpdateFields() -> Bool? {
        return self.updateFields;
    }

    // Sets updateLastPrintedProperty. Gets or sets a value indicating whether the Aspose.Words.Properties.BuiltInDocumentProperties.LastPrinted property is updated before saving.
    public func setUpdateLastPrintedProperty(updateLastPrintedProperty : Bool?) {
        self.updateLastPrintedProperty = updateLastPrintedProperty;
    }

    // Gets updateLastPrintedProperty. Gets or sets a value indicating whether the Aspose.Words.Properties.BuiltInDocumentProperties.LastPrinted property is updated before saving.
    public func getUpdateLastPrintedProperty() -> Bool? {
        return self.updateLastPrintedProperty;
    }

    // Sets updateLastSavedTimeProperty. Gets or sets a value indicating whether the Aspose.Words.Properties.BuiltInDocumentProperties.LastSavedTime property is updated before saving.
    public func setUpdateLastSavedTimeProperty(updateLastSavedTimeProperty : Bool?) {
        self.updateLastSavedTimeProperty = updateLastSavedTimeProperty;
    }

    // Gets updateLastSavedTimeProperty. Gets or sets a value indicating whether the Aspose.Words.Properties.BuiltInDocumentProperties.LastSavedTime property is updated before saving.
    public func getUpdateLastSavedTimeProperty() -> Bool? {
        return self.updateLastSavedTimeProperty;
    }

    // Sets updateSdtContent. Gets or sets a value indicating whether content of StructuredDocumentTag is updated before saving.
    public func setUpdateSdtContent(updateSdtContent : Bool?) {
        self.updateSdtContent = updateSdtContent;
    }

    // Gets updateSdtContent. Gets or sets a value indicating whether content of StructuredDocumentTag is updated before saving.
    public func getUpdateSdtContent() -> Bool? {
        return self.updateSdtContent;
    }

    // Sets zipOutput. Gets or sets a value indicating whether to zip output or not. The default value is false.
    public func setZipOutput(zipOutput : Bool?) {
        self.zipOutput = zipOutput;
    }

    // Gets zipOutput. Gets or sets a value indicating whether to zip output or not. The default value is false.
    public func getZipOutput() -> Bool? {
        return self.zipOutput;
    }
}
