/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="SaveOptionsData.swift">
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

// base container class for save options data.
@available(macOS 10.12, iOS 10.3, watchOS 3.3, tvOS 12.0, *)
public class SaveOptionsData : Codable, WordsApiModel {
    // Gets or sets the value determining how 3D effects are rendered.
    public enum Dml3DEffectsRenderingMode : String, Codable
    {
        // Enum value "basic"
        case basic = "Basic"

        // Enum value "advanced"
        case advanced = "Advanced"
    }

    // Field of allowEmbeddingPostScriptFonts. base container class for save options data.
    private var _allowEmbeddingPostScriptFonts : Bool?;

    public var allowEmbeddingPostScriptFonts : Bool? {
        get {
            return self._allowEmbeddingPostScriptFonts;
        }
        set {
            self._allowEmbeddingPostScriptFonts = newValue;
        }
    }

    // Field of customTimeZoneInfoData. base container class for save options data.
    private var _customTimeZoneInfoData : TimeZoneInfoData?;

    public var customTimeZoneInfoData : TimeZoneInfoData? {
        get {
            return self._customTimeZoneInfoData;
        }
        set {
            self._customTimeZoneInfoData = newValue;
        }
    }

    // Field of dml3DEffectsRenderingMode. base container class for save options data.
    private var _dml3DEffectsRenderingMode : Dml3DEffectsRenderingMode?;

    public var dml3DEffectsRenderingMode : Dml3DEffectsRenderingMode? {
        get {
            return self._dml3DEffectsRenderingMode;
        }
        set {
            self._dml3DEffectsRenderingMode = newValue;
        }
    }

    // Field of dmlEffectsRenderingMode. base container class for save options data.
    private var _dmlEffectsRenderingMode : String?;

    public var dmlEffectsRenderingMode : String? {
        get {
            return self._dmlEffectsRenderingMode;
        }
        set {
            self._dmlEffectsRenderingMode = newValue;
        }
    }

    // Field of dmlRenderingMode. base container class for save options data.
    private var _dmlRenderingMode : String?;

    public var dmlRenderingMode : String? {
        get {
            return self._dmlRenderingMode;
        }
        set {
            self._dmlRenderingMode = newValue;
        }
    }

    // Field of fileName. base container class for save options data.
    private var _fileName : String?;

    public var fileName : String? {
        get {
            return self._fileName;
        }
        set {
            self._fileName = newValue;
        }
    }

    // Field of flatOpcXmlMappingOnly. base container class for save options data.
    private var _flatOpcXmlMappingOnly : Bool?;

    public var flatOpcXmlMappingOnly : Bool? {
        get {
            return self._flatOpcXmlMappingOnly;
        }
        set {
            self._flatOpcXmlMappingOnly = newValue;
        }
    }

    // Field of imlRenderingMode. base container class for save options data.
    private var _imlRenderingMode : String?;

    public var imlRenderingMode : String? {
        get {
            return self._imlRenderingMode;
        }
        set {
            self._imlRenderingMode = newValue;
        }
    }

    // Field of saveFormat. base container class for save options data.
    private final let _saveFormat : String?;

    public var saveFormat : String? {
        get {
            return self._saveFormat;
        }
    }

    // Field of updateCreatedTimeProperty. base container class for save options data.
    private var _updateCreatedTimeProperty : Bool?;

    public var updateCreatedTimeProperty : Bool? {
        get {
            return self._updateCreatedTimeProperty;
        }
        set {
            self._updateCreatedTimeProperty = newValue;
        }
    }

    // Field of updateFields. base container class for save options data.
    private var _updateFields : Bool?;

    public var updateFields : Bool? {
        get {
            return self._updateFields;
        }
        set {
            self._updateFields = newValue;
        }
    }

    // Field of updateLastPrintedProperty. base container class for save options data.
    private var _updateLastPrintedProperty : Bool?;

    public var updateLastPrintedProperty : Bool? {
        get {
            return self._updateLastPrintedProperty;
        }
        set {
            self._updateLastPrintedProperty = newValue;
        }
    }

    // Field of updateLastSavedTimeProperty. base container class for save options data.
    private var _updateLastSavedTimeProperty : Bool?;

    public var updateLastSavedTimeProperty : Bool? {
        get {
            return self._updateLastSavedTimeProperty;
        }
        set {
            self._updateLastSavedTimeProperty = newValue;
        }
    }

    // Field of updateSdtContent. base container class for save options data.
    private var _updateSdtContent : Bool?;

    public var updateSdtContent : Bool? {
        get {
            return self._updateSdtContent;
        }
        set {
            self._updateSdtContent = newValue;
        }
    }

    // Field of zipOutput. base container class for save options data.
    private var _zipOutput : Bool?;

    public var zipOutput : Bool? {
        get {
            return self._zipOutput;
        }
        set {
            self._zipOutput = newValue;
        }
    }

    private enum CodingKeys: String, CodingKey {
        case allowEmbeddingPostScriptFonts = "AllowEmbeddingPostScriptFonts";
        case customTimeZoneInfoData = "CustomTimeZoneInfoData";
        case dml3DEffectsRenderingMode = "Dml3DEffectsRenderingMode";
        case dmlEffectsRenderingMode = "DmlEffectsRenderingMode";
        case dmlRenderingMode = "DmlRenderingMode";
        case fileName = "FileName";
        case flatOpcXmlMappingOnly = "FlatOpcXmlMappingOnly";
        case imlRenderingMode = "ImlRenderingMode";
        case saveFormat = "SaveFormat";
        case updateCreatedTimeProperty = "UpdateCreatedTimeProperty";
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
        self.allowEmbeddingPostScriptFonts = try container.decodeIfPresent(Bool.self, forKey: .allowEmbeddingPostScriptFonts);
        self.customTimeZoneInfoData = try container.decodeIfPresent(TimeZoneInfoData.self, forKey: .customTimeZoneInfoData);
        self.dml3DEffectsRenderingMode = try container.decodeIfPresent(Dml3DEffectsRenderingMode.self, forKey: .dml3DEffectsRenderingMode);
        self.dmlEffectsRenderingMode = try container.decodeIfPresent(String.self, forKey: .dmlEffectsRenderingMode);
        self.dmlRenderingMode = try container.decodeIfPresent(String.self, forKey: .dmlRenderingMode);
        self.fileName = try container.decodeIfPresent(String.self, forKey: .fileName);
        self.flatOpcXmlMappingOnly = try container.decodeIfPresent(Bool.self, forKey: .flatOpcXmlMappingOnly);
        self.imlRenderingMode = try container.decodeIfPresent(String.self, forKey: .imlRenderingMode);

        self.updateCreatedTimeProperty = try container.decodeIfPresent(Bool.self, forKey: .updateCreatedTimeProperty);
        self.updateFields = try container.decodeIfPresent(Bool.self, forKey: .updateFields);
        self.updateLastPrintedProperty = try container.decodeIfPresent(Bool.self, forKey: .updateLastPrintedProperty);
        self.updateLastSavedTimeProperty = try container.decodeIfPresent(Bool.self, forKey: .updateLastSavedTimeProperty);
        self.updateSdtContent = try container.decodeIfPresent(Bool.self, forKey: .updateSdtContent);
        self.zipOutput = try container.decodeIfPresent(Bool.self, forKey: .zipOutput);
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.allowEmbeddingPostScriptFonts != nil) {
            try container.encode(self.allowEmbeddingPostScriptFonts, forKey: .allowEmbeddingPostScriptFonts);
        }
        if (self.customTimeZoneInfoData != nil) {
            try container.encode(self.customTimeZoneInfoData, forKey: .customTimeZoneInfoData);
        }
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
        if (self.flatOpcXmlMappingOnly != nil) {
            try container.encode(self.flatOpcXmlMappingOnly, forKey: .flatOpcXmlMappingOnly);
        }
        if (self.imlRenderingMode != nil) {
            try container.encode(self.imlRenderingMode, forKey: .imlRenderingMode);
        }
        if (self.saveFormat != nil) {
            try container.encode(self.saveFormat, forKey: .saveFormat);
        }
        if (self.updateCreatedTimeProperty != nil) {
            try container.encode(self.updateCreatedTimeProperty, forKey: .updateCreatedTimeProperty);
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

    // Sets allowEmbeddingPostScriptFonts. Gets or sets a boolean value indicating whether to allow embedding fonts with PostScript outlines when embedding TrueType fonts in a document upon it is saved. The default value is false..
    public func setAllowEmbeddingPostScriptFonts(allowEmbeddingPostScriptFonts : Bool?) -> SaveOptionsData {
        self.allowEmbeddingPostScriptFonts = allowEmbeddingPostScriptFonts;
        return self;
    }

    // Gets allowEmbeddingPostScriptFonts. Gets or sets a boolean value indicating whether to allow embedding fonts with PostScript outlines when embedding TrueType fonts in a document upon it is saved. The default value is false..
    public func getAllowEmbeddingPostScriptFonts() -> Bool? {
        return self.allowEmbeddingPostScriptFonts;
    }


    // Sets customTimeZoneInfoData. Gets or sets CustomTimeZoneInfo.
    public func setCustomTimeZoneInfoData(customTimeZoneInfoData : TimeZoneInfoData?) -> SaveOptionsData {
        self.customTimeZoneInfoData = customTimeZoneInfoData;
        return self;
    }

    // Gets customTimeZoneInfoData. Gets or sets CustomTimeZoneInfo.
    public func getCustomTimeZoneInfoData() -> TimeZoneInfoData? {
        return self.customTimeZoneInfoData;
    }


    // Sets dml3DEffectsRenderingMode. Gets or sets the value determining how 3D effects are rendered.
    public func setDml3DEffectsRenderingMode(dml3DEffectsRenderingMode : Dml3DEffectsRenderingMode?) -> SaveOptionsData {
        self.dml3DEffectsRenderingMode = dml3DEffectsRenderingMode;
        return self;
    }

    // Gets dml3DEffectsRenderingMode. Gets or sets the value determining how 3D effects are rendered.
    public func getDml3DEffectsRenderingMode() -> Dml3DEffectsRenderingMode? {
        return self.dml3DEffectsRenderingMode;
    }


    // Sets dmlEffectsRenderingMode. Gets or sets the value determining how DrawingML effects are rendered. { Simplified | None | Fine }.
    public func setDmlEffectsRenderingMode(dmlEffectsRenderingMode : String?) -> SaveOptionsData {
        self.dmlEffectsRenderingMode = dmlEffectsRenderingMode;
        return self;
    }

    // Gets dmlEffectsRenderingMode. Gets or sets the value determining how DrawingML effects are rendered. { Simplified | None | Fine }.
    public func getDmlEffectsRenderingMode() -> String? {
        return self.dmlEffectsRenderingMode;
    }


    // Sets dmlRenderingMode. Gets or sets the option that controls how DrawingML shapes are rendered.
    public func setDmlRenderingMode(dmlRenderingMode : String?) -> SaveOptionsData {
        self.dmlRenderingMode = dmlRenderingMode;
        return self;
    }

    // Gets dmlRenderingMode. Gets or sets the option that controls how DrawingML shapes are rendered.
    public func getDmlRenderingMode() -> String? {
        return self.dmlRenderingMode;
    }


    // Sets fileName. Gets or sets the name of destination file.
    public func setFileName(fileName : String?) -> SaveOptionsData {
        self.fileName = fileName;
        return self;
    }

    // Gets fileName. Gets or sets the name of destination file.
    public func getFileName() -> String? {
        return self.fileName;
    }


    // Sets flatOpcXmlMappingOnly. Gets or sets value determining which document formats are allowed to be mapped by Aspose.Words.Markup.StructuredDocumentTag.XmlMapping. By default only Aspose.Words.LoadFormat.FlatOpc document format is allowed to be mapped.
    public func setFlatOpcXmlMappingOnly(flatOpcXmlMappingOnly : Bool?) -> SaveOptionsData {
        self.flatOpcXmlMappingOnly = flatOpcXmlMappingOnly;
        return self;
    }

    // Gets flatOpcXmlMappingOnly. Gets or sets value determining which document formats are allowed to be mapped by Aspose.Words.Markup.StructuredDocumentTag.XmlMapping. By default only Aspose.Words.LoadFormat.FlatOpc document format is allowed to be mapped.
    public func getFlatOpcXmlMappingOnly() -> Bool? {
        return self.flatOpcXmlMappingOnly;
    }


    // Sets imlRenderingMode. Gets or sets the value determining how ink (InkML) objects are rendered.
    public func setImlRenderingMode(imlRenderingMode : String?) -> SaveOptionsData {
        self.imlRenderingMode = imlRenderingMode;
        return self;
    }

    // Gets imlRenderingMode. Gets or sets the value determining how ink (InkML) objects are rendered.
    public func getImlRenderingMode() -> String? {
        return self.imlRenderingMode;
    }


    // Gets saveFormat. Gets or sets the format of save.
    public func getSaveFormat() -> String? {
        return self.saveFormat;
    }


    // Sets updateCreatedTimeProperty. Gets or sets a value determining whether the Aspose.Words.Properties.BuiltInDocumentProperties.CreatedTime property is updated before saving. Default value is false.
    public func setUpdateCreatedTimeProperty(updateCreatedTimeProperty : Bool?) -> SaveOptionsData {
        self.updateCreatedTimeProperty = updateCreatedTimeProperty;
        return self;
    }

    // Gets updateCreatedTimeProperty. Gets or sets a value determining whether the Aspose.Words.Properties.BuiltInDocumentProperties.CreatedTime property is updated before saving. Default value is false.
    public func getUpdateCreatedTimeProperty() -> Bool? {
        return self.updateCreatedTimeProperty;
    }


    // Sets updateFields. Gets or sets a value indicating whether fields should be updated before saving the document to a fixed page format. The default value is true.
    public func setUpdateFields(updateFields : Bool?) -> SaveOptionsData {
        self.updateFields = updateFields;
        return self;
    }

    // Gets updateFields. Gets or sets a value indicating whether fields should be updated before saving the document to a fixed page format. The default value is true.
    public func getUpdateFields() -> Bool? {
        return self.updateFields;
    }


    // Sets updateLastPrintedProperty. Gets or sets a value indicating whether the Aspose.Words.Properties.BuiltInDocumentProperties.LastPrinted property is updated before saving.
    public func setUpdateLastPrintedProperty(updateLastPrintedProperty : Bool?) -> SaveOptionsData {
        self.updateLastPrintedProperty = updateLastPrintedProperty;
        return self;
    }

    // Gets updateLastPrintedProperty. Gets or sets a value indicating whether the Aspose.Words.Properties.BuiltInDocumentProperties.LastPrinted property is updated before saving.
    public func getUpdateLastPrintedProperty() -> Bool? {
        return self.updateLastPrintedProperty;
    }


    // Sets updateLastSavedTimeProperty. Gets or sets a value indicating whether the Aspose.Words.Properties.BuiltInDocumentProperties.LastSavedTime property is updated before saving.
    public func setUpdateLastSavedTimeProperty(updateLastSavedTimeProperty : Bool?) -> SaveOptionsData {
        self.updateLastSavedTimeProperty = updateLastSavedTimeProperty;
        return self;
    }

    // Gets updateLastSavedTimeProperty. Gets or sets a value indicating whether the Aspose.Words.Properties.BuiltInDocumentProperties.LastSavedTime property is updated before saving.
    public func getUpdateLastSavedTimeProperty() -> Bool? {
        return self.updateLastSavedTimeProperty;
    }


    // Sets updateSdtContent. Gets or sets a value indicating whether content of StructuredDocumentTag is updated before saving.
    public func setUpdateSdtContent(updateSdtContent : Bool?) -> SaveOptionsData {
        self.updateSdtContent = updateSdtContent;
        return self;
    }

    // Gets updateSdtContent. Gets or sets a value indicating whether content of StructuredDocumentTag is updated before saving.
    public func getUpdateSdtContent() -> Bool? {
        return self.updateSdtContent;
    }


    // Sets zipOutput. Gets or sets a value indicating whether to zip output or not. The default value is false.
    public func setZipOutput(zipOutput : Bool?) -> SaveOptionsData {
        self.zipOutput = zipOutput;
        return self;
    }

    // Gets zipOutput. Gets or sets a value indicating whether to zip output or not. The default value is false.
    public func getZipOutput() -> Bool? {
        return self.zipOutput;
    }
}
