/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="FieldOptions.swift">
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

// DTO for field options.
@available(macOS 10.12, iOS 10.3, watchOS 3.3, tvOS 12.0, *)
public class FieldOptions : Codable, WordsApiModel {
    // Gets or sets Field Index Format.
    public enum FieldIndexFormat : String, Codable
    {
        // Enum value "template"
        case template = "Template"

        // Enum value "classic"
        case classic = "Classic"

        // Enum value "fancy"
        case fancy = "Fancy"

        // Enum value "modern"
        case modern = "Modern"

        // Enum value "bulleted"
        case bulleted = "Bulleted"

        // Enum value "formal"
        case formal = "Formal"

        // Enum value "simple"
        case simple = "Simple"
    }

    // Gets or sets Field Update Culture Source.
    public enum FieldUpdateCultureSource : String, Codable
    {
        // Enum value "currentThread"
        case currentThread = "CurrentThread"

        // Enum value "fieldCode"
        case fieldCode = "FieldCode"
    }

    // Field of builtInTemplatesPaths. DTO for field options.
    public var builtInTemplatesPaths : [String]?;

    // Field of currentUser. DTO for field options.
    public var currentUser : UserInformation?;

    // Field of customTocStyleSeparator. DTO for field options.
    public var customTocStyleSeparator : String?;

    // Field of defaultDocumentAuthor. DTO for field options.
    public var defaultDocumentAuthor : String?;

    // Field of fieldIndexFormat. DTO for field options.
    public var fieldIndexFormat : FieldIndexFormat?;

    // Field of fieldUpdateCultureName. DTO for field options.
    public var fieldUpdateCultureName : String?;

    // Field of fieldUpdateCultureSource. DTO for field options.
    public var fieldUpdateCultureSource : FieldUpdateCultureSource?;

    // Field of fileName. DTO for field options.
    public var fileName : String?;

    // Field of isBidiTextSupportedOnUpdate. DTO for field options.
    public var isBidiTextSupportedOnUpdate : Bool?;

    // Field of legacyNumberFormat. DTO for field options.
    public var legacyNumberFormat : Bool?;

    // Field of preProcessCultureName. DTO for field options.
    public var preProcessCultureName : String?;

    // Field of templateName. DTO for field options.
    public var templateName : String?;

    // Field of useInvariantCultureNumberFormat. DTO for field options.
    public var useInvariantCultureNumberFormat : Bool?;

    private enum CodingKeys: String, CodingKey {
        case builtInTemplatesPaths = "BuiltInTemplatesPaths";
        case currentUser = "CurrentUser";
        case customTocStyleSeparator = "CustomTocStyleSeparator";
        case defaultDocumentAuthor = "DefaultDocumentAuthor";
        case fieldIndexFormat = "FieldIndexFormat";
        case fieldUpdateCultureName = "FieldUpdateCultureName";
        case fieldUpdateCultureSource = "FieldUpdateCultureSource";
        case fileName = "FileName";
        case isBidiTextSupportedOnUpdate = "IsBidiTextSupportedOnUpdate";
        case legacyNumberFormat = "LegacyNumberFormat";
        case preProcessCultureName = "PreProcessCultureName";
        case templateName = "TemplateName";
        case useInvariantCultureNumberFormat = "UseInvariantCultureNumberFormat";
        case invalidCodingKey;
    }

    public init() {
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.builtInTemplatesPaths = try container.decodeIfPresent([String].self, forKey: .builtInTemplatesPaths);
        self.currentUser = try container.decodeIfPresent(UserInformation.self, forKey: .currentUser);
        self.customTocStyleSeparator = try container.decodeIfPresent(String.self, forKey: .customTocStyleSeparator);
        self.defaultDocumentAuthor = try container.decodeIfPresent(String.self, forKey: .defaultDocumentAuthor);
        self.fieldIndexFormat = try container.decodeIfPresent(FieldIndexFormat.self, forKey: .fieldIndexFormat);
        self.fieldUpdateCultureName = try container.decodeIfPresent(String.self, forKey: .fieldUpdateCultureName);
        self.fieldUpdateCultureSource = try container.decodeIfPresent(FieldUpdateCultureSource.self, forKey: .fieldUpdateCultureSource);
        self.fileName = try container.decodeIfPresent(String.self, forKey: .fileName);
        self.isBidiTextSupportedOnUpdate = try container.decodeIfPresent(Bool.self, forKey: .isBidiTextSupportedOnUpdate);
        self.legacyNumberFormat = try container.decodeIfPresent(Bool.self, forKey: .legacyNumberFormat);
        self.preProcessCultureName = try container.decodeIfPresent(String.self, forKey: .preProcessCultureName);
        self.templateName = try container.decodeIfPresent(String.self, forKey: .templateName);
        self.useInvariantCultureNumberFormat = try container.decodeIfPresent(Bool.self, forKey: .useInvariantCultureNumberFormat);
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.builtInTemplatesPaths != nil) {
            try container.encode(self.builtInTemplatesPaths, forKey: .builtInTemplatesPaths);
        }
        if (self.currentUser != nil) {
            try container.encode(self.currentUser, forKey: .currentUser);
        }
        if (self.customTocStyleSeparator != nil) {
            try container.encode(self.customTocStyleSeparator, forKey: .customTocStyleSeparator);
        }
        if (self.defaultDocumentAuthor != nil) {
            try container.encode(self.defaultDocumentAuthor, forKey: .defaultDocumentAuthor);
        }
        if (self.fieldIndexFormat != nil) {
            try container.encode(self.fieldIndexFormat, forKey: .fieldIndexFormat);
        }
        if (self.fieldUpdateCultureName != nil) {
            try container.encode(self.fieldUpdateCultureName, forKey: .fieldUpdateCultureName);
        }
        if (self.fieldUpdateCultureSource != nil) {
            try container.encode(self.fieldUpdateCultureSource, forKey: .fieldUpdateCultureSource);
        }
        if (self.fileName != nil) {
            try container.encode(self.fileName, forKey: .fileName);
        }
        if (self.isBidiTextSupportedOnUpdate != nil) {
            try container.encode(self.isBidiTextSupportedOnUpdate, forKey: .isBidiTextSupportedOnUpdate);
        }
        if (self.legacyNumberFormat != nil) {
            try container.encode(self.legacyNumberFormat, forKey: .legacyNumberFormat);
        }
        if (self.preProcessCultureName != nil) {
            try container.encode(self.preProcessCultureName, forKey: .preProcessCultureName);
        }
        if (self.templateName != nil) {
            try container.encode(self.templateName, forKey: .templateName);
        }
        if (self.useInvariantCultureNumberFormat != nil) {
            try container.encode(self.useInvariantCultureNumberFormat, forKey: .useInvariantCultureNumberFormat);
        }
    }

    // Sets builtInTemplatesPaths. Gets or sets BuiltIn Templates Paths.
    public func setBuiltInTemplatesPaths(builtInTemplatesPaths : [String]?) -> FieldOptions {
        self.builtInTemplatesPaths = builtInTemplatesPaths;
        return self;
    }

    // Gets builtInTemplatesPaths. Gets or sets BuiltIn Templates Paths.
    public func getBuiltInTemplatesPaths() -> [String]? {
        return self.builtInTemplatesPaths;
    }

    // Sets currentUser. Gets or sets Curren tUser.
    public func setCurrentUser(currentUser : UserInformation?) -> FieldOptions {
        self.currentUser = currentUser;
        return self;
    }

    // Gets currentUser. Gets or sets Curren tUser.
    public func getCurrentUser() -> UserInformation? {
        return self.currentUser;
    }

    // Sets customTocStyleSeparator. Gets or sets Custom Toc Style Separator.
    public func setCustomTocStyleSeparator(customTocStyleSeparator : String?) -> FieldOptions {
        self.customTocStyleSeparator = customTocStyleSeparator;
        return self;
    }

    // Gets customTocStyleSeparator. Gets or sets Custom Toc Style Separator.
    public func getCustomTocStyleSeparator() -> String? {
        return self.customTocStyleSeparator;
    }

    // Sets defaultDocumentAuthor. Gets or sets Default Document Author.
    public func setDefaultDocumentAuthor(defaultDocumentAuthor : String?) -> FieldOptions {
        self.defaultDocumentAuthor = defaultDocumentAuthor;
        return self;
    }

    // Gets defaultDocumentAuthor. Gets or sets Default Document Author.
    public func getDefaultDocumentAuthor() -> String? {
        return self.defaultDocumentAuthor;
    }

    // Sets fieldIndexFormat. Gets or sets Field Index Format.
    public func setFieldIndexFormat(fieldIndexFormat : FieldIndexFormat?) -> FieldOptions {
        self.fieldIndexFormat = fieldIndexFormat;
        return self;
    }

    // Gets fieldIndexFormat. Gets or sets Field Index Format.
    public func getFieldIndexFormat() -> FieldIndexFormat? {
        return self.fieldIndexFormat;
    }

    // Sets fieldUpdateCultureName. Gets or sets Field Update Culture Name. It is used for all fields if FieldUpdateCultureSource is FieldCode.
    public func setFieldUpdateCultureName(fieldUpdateCultureName : String?) -> FieldOptions {
        self.fieldUpdateCultureName = fieldUpdateCultureName;
        return self;
    }

    // Gets fieldUpdateCultureName. Gets or sets Field Update Culture Name. It is used for all fields if FieldUpdateCultureSource is FieldCode.
    public func getFieldUpdateCultureName() -> String? {
        return self.fieldUpdateCultureName;
    }

    // Sets fieldUpdateCultureSource. Gets or sets Field Update Culture Source.
    public func setFieldUpdateCultureSource(fieldUpdateCultureSource : FieldUpdateCultureSource?) -> FieldOptions {
        self.fieldUpdateCultureSource = fieldUpdateCultureSource;
        return self;
    }

    // Gets fieldUpdateCultureSource. Gets or sets Field Update Culture Source.
    public func getFieldUpdateCultureSource() -> FieldUpdateCultureSource? {
        return self.fieldUpdateCultureSource;
    }

    // Sets fileName. Gets or sets File Name.
    public func setFileName(fileName : String?) -> FieldOptions {
        self.fileName = fileName;
        return self;
    }

    // Gets fileName. Gets or sets File Name.
    public func getFileName() -> String? {
        return self.fileName;
    }

    // Sets isBidiTextSupportedOnUpdate. Gets or sets if Bidi Text Supported OnUpdate.
    public func setIsBidiTextSupportedOnUpdate(isBidiTextSupportedOnUpdate : Bool?) -> FieldOptions {
        self.isBidiTextSupportedOnUpdate = isBidiTextSupportedOnUpdate;
        return self;
    }

    // Gets isBidiTextSupportedOnUpdate. Gets or sets if Bidi Text Supported OnUpdate.
    public func getIsBidiTextSupportedOnUpdate() -> Bool? {
        return self.isBidiTextSupportedOnUpdate;
    }

    // Sets legacyNumberFormat. Gets or sets if Legacy Number Format.
    public func setLegacyNumberFormat(legacyNumberFormat : Bool?) -> FieldOptions {
        self.legacyNumberFormat = legacyNumberFormat;
        return self;
    }

    // Gets legacyNumberFormat. Gets or sets if Legacy Number Format.
    public func getLegacyNumberFormat() -> Bool? {
        return self.legacyNumberFormat;
    }

    // Sets preProcessCultureName. Gets or sets PreProcess Culture Name. It is a culture code for DOC fields.
    public func setPreProcessCultureName(preProcessCultureName : String?) -> FieldOptions {
        self.preProcessCultureName = preProcessCultureName;
        return self;
    }

    // Gets preProcessCultureName. Gets or sets PreProcess Culture Name. It is a culture code for DOC fields.
    public func getPreProcessCultureName() -> String? {
        return self.preProcessCultureName;
    }

    // Sets templateName. Gets or sets Template Name.
    public func setTemplateName(templateName : String?) -> FieldOptions {
        self.templateName = templateName;
        return self;
    }

    // Gets templateName. Gets or sets Template Name.
    public func getTemplateName() -> String? {
        return self.templateName;
    }

    // Sets useInvariantCultureNumberFormat. Gets or sets if Use Invariant Culture Number Format.
    public func setUseInvariantCultureNumberFormat(useInvariantCultureNumberFormat : Bool?) -> FieldOptions {
        self.useInvariantCultureNumberFormat = useInvariantCultureNumberFormat;
        return self;
    }

    // Gets useInvariantCultureNumberFormat. Gets or sets if Use Invariant Culture Number Format.
    public func getUseInvariantCultureNumberFormat() -> Bool? {
        return self.useInvariantCultureNumberFormat;
    }
}
