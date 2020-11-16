/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="HtmlSaveOptionsData.swift">
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

// Container class for html save options.
public class HtmlSaveOptionsData : SaveOptionsData {
    // Gets or sets the version of HTML standard, that should be used when saving the document to HTML or MHTML.
    // Default value is Aspose.Words.Saving.HtmlVersion.Xhtml.
    public enum HtmlVersion : String, Codable
    {
        // Enum value "xhtml"
        case xhtml = "Xhtml"

        // Enum value "html5"
        case html5 = "Html5"
    }

    // Gets or sets the options, that controls in what format metafiles are saved when exporting to HTML, MHTML, or EPUB.
    // The default value is Aspose.Words.Saving.HtmlMetafileFormat.Png, meaning that metafiles are rendered to raster PNG images.
    // Metafiles are not natively displayed by HTML browsers. By default, Aspose.Words converts WMF and EMF images into PNG files when exporting to HTML.Other options are to convert metafiles to SVG images or to export them as is without conversion.
    // Some image transforms, in particular image cropping, will not be applied to metafile images if they are exported to HTML without conversion.
    public enum MetafileFormat : String, Codable
    {
        // Enum value "png"
        case png = "Png"

        // Enum value "svg"
        case svg = "Svg"

        // Enum value "emfOrWmf"
        case emfOrWmf = "EmfOrWmf"
    }

    // Gets or sets the option that controls how OfficeMath objects are exported to HTML, MHTML or EPUB. The default value is HtmlOfficeMathOutputMode.Image.
    public enum OfficeMathOutputMode : String, Codable
    {
        // Enum value "image"
        case image = "Image"

        // Enum value "mathML"
        case mathML = "MathML"

        // Enum value "text"
        case text = "Text"
    }

    // Field of allowNegativeIndent. Container class for html save options.
    private var allowNegativeIndent : Bool?;

    // Field of cssClassNamePrefix. Container class for html save options.
    private var cssClassNamePrefix : String?;

    // Field of cssStyleSheetFileName. Container class for html save options.
    private var cssStyleSheetFileName : String?;

    // Field of cssStyleSheetType. Container class for html save options.
    private var cssStyleSheetType : String?;

    // Field of documentSplitCriteria. Container class for html save options.
    private var documentSplitCriteria : String?;

    // Field of documentSplitHeadingLevel. Container class for html save options.
    private var documentSplitHeadingLevel : Int?;

    // Field of encoding. Container class for html save options.
    private var encoding : String?;

    // Field of exportDocumentProperties. Container class for html save options.
    private var exportDocumentProperties : Bool?;

    // Field of exportDropDownFormFieldAsText. Container class for html save options.
    private var exportDropDownFormFieldAsText : Bool?;

    // Field of exportFontResources. Container class for html save options.
    private var exportFontResources : Bool?;

    // Field of exportFontsAsBase64. Container class for html save options.
    private var exportFontsAsBase64 : Bool?;

    // Field of exportHeadersFootersMode. Container class for html save options.
    private var exportHeadersFootersMode : String?;

    // Field of exportImagesAsBase64. Container class for html save options.
    private var exportImagesAsBase64 : Bool?;

    // Field of exportLanguageInformation. Container class for html save options.
    private var exportLanguageInformation : Bool?;

    // Field of exportListLabels. Container class for html save options.
    private var exportListLabels : String?;

    // Field of exportOriginalUrlForLinkedImages. Container class for html save options.
    private var exportOriginalUrlForLinkedImages : Bool?;

    // Field of exportPageMargins. Container class for html save options.
    private var exportPageMargins : Bool?;

    // Field of exportPageSetup. Container class for html save options.
    private var exportPageSetup : Bool?;

    // Field of exportRelativeFontSize. Container class for html save options.
    private var exportRelativeFontSize : Bool?;

    // Field of exportRoundtripInformation. Container class for html save options.
    private var exportRoundtripInformation : Bool?;

    // Field of exportTextBoxAsSvg. Container class for html save options.
    private var exportTextBoxAsSvg : Bool?;

    // Field of exportTextInputFormFieldAsText. Container class for html save options.
    private var exportTextInputFormFieldAsText : Bool?;

    // Field of exportTocPageNumbers. Container class for html save options.
    private var exportTocPageNumbers : Bool?;

    // Field of exportXhtmlTransitional. Container class for html save options.
    private var exportXhtmlTransitional : Bool?;

    // Field of fontResourcesSubsettingSizeThreshold. Container class for html save options.
    private var fontResourcesSubsettingSizeThreshold : Int?;

    // Field of fontsFolder. Container class for html save options.
    private var fontsFolder : String?;

    // Field of fontsFolderAlias. Container class for html save options.
    private var fontsFolderAlias : String?;

    // Field of htmlVersion. Container class for html save options.
    private var htmlVersion : HtmlVersion?;

    // Field of imageResolution. Container class for html save options.
    private var imageResolution : Int?;

    // Field of imagesFolder. Container class for html save options.
    private var imagesFolder : String?;

    // Field of imagesFolderAlias. Container class for html save options.
    private var imagesFolderAlias : String?;

    // Field of metafileFormat. Container class for html save options.
    private var metafileFormat : MetafileFormat?;

    // Field of officeMathOutputMode. Container class for html save options.
    private var officeMathOutputMode : OfficeMathOutputMode?;

    // Field of prettyFormat. Container class for html save options.
    private var prettyFormat : Bool?;

    // Field of resolveFontNames. Container class for html save options.
    private var resolveFontNames : Bool?;

    // Field of resourceFolder. Container class for html save options.
    private var resourceFolder : String?;

    // Field of resourceFolderAlias. Container class for html save options.
    private var resourceFolderAlias : String?;

    // Field of scaleImageToShapeSize. Container class for html save options.
    private var scaleImageToShapeSize : Bool?;

    // Field of tableWidthOutputMode. Container class for html save options.
    private var tableWidthOutputMode : String?;

    private enum CodingKeys: String, CodingKey {
        case allowNegativeIndent = "AllowNegativeIndent";
        case cssClassNamePrefix = "CssClassNamePrefix";
        case cssStyleSheetFileName = "CssStyleSheetFileName";
        case cssStyleSheetType = "CssStyleSheetType";
        case documentSplitCriteria = "DocumentSplitCriteria";
        case documentSplitHeadingLevel = "DocumentSplitHeadingLevel";
        case encoding = "Encoding";
        case exportDocumentProperties = "ExportDocumentProperties";
        case exportDropDownFormFieldAsText = "ExportDropDownFormFieldAsText";
        case exportFontResources = "ExportFontResources";
        case exportFontsAsBase64 = "ExportFontsAsBase64";
        case exportHeadersFootersMode = "ExportHeadersFootersMode";
        case exportImagesAsBase64 = "ExportImagesAsBase64";
        case exportLanguageInformation = "ExportLanguageInformation";
        case exportListLabels = "ExportListLabels";
        case exportOriginalUrlForLinkedImages = "ExportOriginalUrlForLinkedImages";
        case exportPageMargins = "ExportPageMargins";
        case exportPageSetup = "ExportPageSetup";
        case exportRelativeFontSize = "ExportRelativeFontSize";
        case exportRoundtripInformation = "ExportRoundtripInformation";
        case exportTextBoxAsSvg = "ExportTextBoxAsSvg";
        case exportTextInputFormFieldAsText = "ExportTextInputFormFieldAsText";
        case exportTocPageNumbers = "ExportTocPageNumbers";
        case exportXhtmlTransitional = "ExportXhtmlTransitional";
        case fontResourcesSubsettingSizeThreshold = "FontResourcesSubsettingSizeThreshold";
        case fontsFolder = "FontsFolder";
        case fontsFolderAlias = "FontsFolderAlias";
        case htmlVersion = "HtmlVersion";
        case imageResolution = "ImageResolution";
        case imagesFolder = "ImagesFolder";
        case imagesFolderAlias = "ImagesFolderAlias";
        case metafileFormat = "MetafileFormat";
        case officeMathOutputMode = "OfficeMathOutputMode";
        case prettyFormat = "PrettyFormat";
        case resolveFontNames = "ResolveFontNames";
        case resourceFolder = "ResourceFolder";
        case resourceFolderAlias = "ResourceFolderAlias";
        case scaleImageToShapeSize = "ScaleImageToShapeSize";
        case tableWidthOutputMode = "TableWidthOutputMode";
        case invalidCodingKey;
    }

    public override init() {
        super.init();
    }

    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder);
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.allowNegativeIndent = try container.decodeIfPresent(Bool.self, forKey: .allowNegativeIndent);
        self.cssClassNamePrefix = try container.decodeIfPresent(String.self, forKey: .cssClassNamePrefix);
        self.cssStyleSheetFileName = try container.decodeIfPresent(String.self, forKey: .cssStyleSheetFileName);
        self.cssStyleSheetType = try container.decodeIfPresent(String.self, forKey: .cssStyleSheetType);
        self.documentSplitCriteria = try container.decodeIfPresent(String.self, forKey: .documentSplitCriteria);
        self.documentSplitHeadingLevel = try container.decodeIfPresent(Int.self, forKey: .documentSplitHeadingLevel);
        self.encoding = try container.decodeIfPresent(String.self, forKey: .encoding);
        self.exportDocumentProperties = try container.decodeIfPresent(Bool.self, forKey: .exportDocumentProperties);
        self.exportDropDownFormFieldAsText = try container.decodeIfPresent(Bool.self, forKey: .exportDropDownFormFieldAsText);
        self.exportFontResources = try container.decodeIfPresent(Bool.self, forKey: .exportFontResources);
        self.exportFontsAsBase64 = try container.decodeIfPresent(Bool.self, forKey: .exportFontsAsBase64);
        self.exportHeadersFootersMode = try container.decodeIfPresent(String.self, forKey: .exportHeadersFootersMode);
        self.exportImagesAsBase64 = try container.decodeIfPresent(Bool.self, forKey: .exportImagesAsBase64);
        self.exportLanguageInformation = try container.decodeIfPresent(Bool.self, forKey: .exportLanguageInformation);
        self.exportListLabels = try container.decodeIfPresent(String.self, forKey: .exportListLabels);
        self.exportOriginalUrlForLinkedImages = try container.decodeIfPresent(Bool.self, forKey: .exportOriginalUrlForLinkedImages);
        self.exportPageMargins = try container.decodeIfPresent(Bool.self, forKey: .exportPageMargins);
        self.exportPageSetup = try container.decodeIfPresent(Bool.self, forKey: .exportPageSetup);
        self.exportRelativeFontSize = try container.decodeIfPresent(Bool.self, forKey: .exportRelativeFontSize);
        self.exportRoundtripInformation = try container.decodeIfPresent(Bool.self, forKey: .exportRoundtripInformation);
        self.exportTextBoxAsSvg = try container.decodeIfPresent(Bool.self, forKey: .exportTextBoxAsSvg);
        self.exportTextInputFormFieldAsText = try container.decodeIfPresent(Bool.self, forKey: .exportTextInputFormFieldAsText);
        self.exportTocPageNumbers = try container.decodeIfPresent(Bool.self, forKey: .exportTocPageNumbers);
        self.exportXhtmlTransitional = try container.decodeIfPresent(Bool.self, forKey: .exportXhtmlTransitional);
        self.fontResourcesSubsettingSizeThreshold = try container.decodeIfPresent(Int.self, forKey: .fontResourcesSubsettingSizeThreshold);
        self.fontsFolder = try container.decodeIfPresent(String.self, forKey: .fontsFolder);
        self.fontsFolderAlias = try container.decodeIfPresent(String.self, forKey: .fontsFolderAlias);
        self.htmlVersion = try container.decodeIfPresent(HtmlVersion.self, forKey: .htmlVersion);
        self.imageResolution = try container.decodeIfPresent(Int.self, forKey: .imageResolution);
        self.imagesFolder = try container.decodeIfPresent(String.self, forKey: .imagesFolder);
        self.imagesFolderAlias = try container.decodeIfPresent(String.self, forKey: .imagesFolderAlias);
        self.metafileFormat = try container.decodeIfPresent(MetafileFormat.self, forKey: .metafileFormat);
        self.officeMathOutputMode = try container.decodeIfPresent(OfficeMathOutputMode.self, forKey: .officeMathOutputMode);
        self.prettyFormat = try container.decodeIfPresent(Bool.self, forKey: .prettyFormat);
        self.resolveFontNames = try container.decodeIfPresent(Bool.self, forKey: .resolveFontNames);
        self.resourceFolder = try container.decodeIfPresent(String.self, forKey: .resourceFolder);
        self.resourceFolderAlias = try container.decodeIfPresent(String.self, forKey: .resourceFolderAlias);
        self.scaleImageToShapeSize = try container.decodeIfPresent(Bool.self, forKey: .scaleImageToShapeSize);
        self.tableWidthOutputMode = try container.decodeIfPresent(String.self, forKey: .tableWidthOutputMode);
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder);
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.allowNegativeIndent != nil) {
            try container.encode(self.allowNegativeIndent, forKey: .allowNegativeIndent);
        }
        if (self.cssClassNamePrefix != nil) {
            try container.encode(self.cssClassNamePrefix, forKey: .cssClassNamePrefix);
        }
        if (self.cssStyleSheetFileName != nil) {
            try container.encode(self.cssStyleSheetFileName, forKey: .cssStyleSheetFileName);
        }
        if (self.cssStyleSheetType != nil) {
            try container.encode(self.cssStyleSheetType, forKey: .cssStyleSheetType);
        }
        if (self.documentSplitCriteria != nil) {
            try container.encode(self.documentSplitCriteria, forKey: .documentSplitCriteria);
        }
        if (self.documentSplitHeadingLevel != nil) {
            try container.encode(self.documentSplitHeadingLevel, forKey: .documentSplitHeadingLevel);
        }
        if (self.encoding != nil) {
            try container.encode(self.encoding, forKey: .encoding);
        }
        if (self.exportDocumentProperties != nil) {
            try container.encode(self.exportDocumentProperties, forKey: .exportDocumentProperties);
        }
        if (self.exportDropDownFormFieldAsText != nil) {
            try container.encode(self.exportDropDownFormFieldAsText, forKey: .exportDropDownFormFieldAsText);
        }
        if (self.exportFontResources != nil) {
            try container.encode(self.exportFontResources, forKey: .exportFontResources);
        }
        if (self.exportFontsAsBase64 != nil) {
            try container.encode(self.exportFontsAsBase64, forKey: .exportFontsAsBase64);
        }
        if (self.exportHeadersFootersMode != nil) {
            try container.encode(self.exportHeadersFootersMode, forKey: .exportHeadersFootersMode);
        }
        if (self.exportImagesAsBase64 != nil) {
            try container.encode(self.exportImagesAsBase64, forKey: .exportImagesAsBase64);
        }
        if (self.exportLanguageInformation != nil) {
            try container.encode(self.exportLanguageInformation, forKey: .exportLanguageInformation);
        }
        if (self.exportListLabels != nil) {
            try container.encode(self.exportListLabels, forKey: .exportListLabels);
        }
        if (self.exportOriginalUrlForLinkedImages != nil) {
            try container.encode(self.exportOriginalUrlForLinkedImages, forKey: .exportOriginalUrlForLinkedImages);
        }
        if (self.exportPageMargins != nil) {
            try container.encode(self.exportPageMargins, forKey: .exportPageMargins);
        }
        if (self.exportPageSetup != nil) {
            try container.encode(self.exportPageSetup, forKey: .exportPageSetup);
        }
        if (self.exportRelativeFontSize != nil) {
            try container.encode(self.exportRelativeFontSize, forKey: .exportRelativeFontSize);
        }
        if (self.exportRoundtripInformation != nil) {
            try container.encode(self.exportRoundtripInformation, forKey: .exportRoundtripInformation);
        }
        if (self.exportTextBoxAsSvg != nil) {
            try container.encode(self.exportTextBoxAsSvg, forKey: .exportTextBoxAsSvg);
        }
        if (self.exportTextInputFormFieldAsText != nil) {
            try container.encode(self.exportTextInputFormFieldAsText, forKey: .exportTextInputFormFieldAsText);
        }
        if (self.exportTocPageNumbers != nil) {
            try container.encode(self.exportTocPageNumbers, forKey: .exportTocPageNumbers);
        }
        if (self.exportXhtmlTransitional != nil) {
            try container.encode(self.exportXhtmlTransitional, forKey: .exportXhtmlTransitional);
        }
        if (self.fontResourcesSubsettingSizeThreshold != nil) {
            try container.encode(self.fontResourcesSubsettingSizeThreshold, forKey: .fontResourcesSubsettingSizeThreshold);
        }
        if (self.fontsFolder != nil) {
            try container.encode(self.fontsFolder, forKey: .fontsFolder);
        }
        if (self.fontsFolderAlias != nil) {
            try container.encode(self.fontsFolderAlias, forKey: .fontsFolderAlias);
        }
        if (self.htmlVersion != nil) {
            try container.encode(self.htmlVersion, forKey: .htmlVersion);
        }
        if (self.imageResolution != nil) {
            try container.encode(self.imageResolution, forKey: .imageResolution);
        }
        if (self.imagesFolder != nil) {
            try container.encode(self.imagesFolder, forKey: .imagesFolder);
        }
        if (self.imagesFolderAlias != nil) {
            try container.encode(self.imagesFolderAlias, forKey: .imagesFolderAlias);
        }
        if (self.metafileFormat != nil) {
            try container.encode(self.metafileFormat, forKey: .metafileFormat);
        }
        if (self.officeMathOutputMode != nil) {
            try container.encode(self.officeMathOutputMode, forKey: .officeMathOutputMode);
        }
        if (self.prettyFormat != nil) {
            try container.encode(self.prettyFormat, forKey: .prettyFormat);
        }
        if (self.resolveFontNames != nil) {
            try container.encode(self.resolveFontNames, forKey: .resolveFontNames);
        }
        if (self.resourceFolder != nil) {
            try container.encode(self.resourceFolder, forKey: .resourceFolder);
        }
        if (self.resourceFolderAlias != nil) {
            try container.encode(self.resourceFolderAlias, forKey: .resourceFolderAlias);
        }
        if (self.scaleImageToShapeSize != nil) {
            try container.encode(self.scaleImageToShapeSize, forKey: .scaleImageToShapeSize);
        }
        if (self.tableWidthOutputMode != nil) {
            try container.encode(self.tableWidthOutputMode, forKey: .tableWidthOutputMode);
        }
    }

    // Sets allowNegativeIndent. Gets or sets a value indicating whether negative left and right indents of paragraphs are allowed (not normalized).
    public func setAllowNegativeIndent(allowNegativeIndent : Bool?) {
        self.allowNegativeIndent = allowNegativeIndent;
    }

    // Gets allowNegativeIndent. Gets or sets a value indicating whether negative left and right indents of paragraphs are allowed (not normalized).
    public func getAllowNegativeIndent() -> Bool? {
        return self.allowNegativeIndent;
    }

    // Sets cssClassNamePrefix. Gets or sets the prefix which is added to all CSS class names. The default value is an empty string and generated CSS class names have no common prefix. If this value is not empty, all CSS classes generated by Aspose.Words will start with the specified prefix.This might be useful, for example, if you add custom CSS to generated documents and want to prevent class name conflicts. If the value is not null or empty, it must be a valid CSS identifier.
    public func setCssClassNamePrefix(cssClassNamePrefix : String?) {
        self.cssClassNamePrefix = cssClassNamePrefix;
    }

    // Gets cssClassNamePrefix. Gets or sets the prefix which is added to all CSS class names. The default value is an empty string and generated CSS class names have no common prefix. If this value is not empty, all CSS classes generated by Aspose.Words will start with the specified prefix.This might be useful, for example, if you add custom CSS to generated documents and want to prevent class name conflicts. If the value is not null or empty, it must be a valid CSS identifier.
    public func getCssClassNamePrefix() -> String? {
        return self.cssClassNamePrefix;
    }

    // Sets cssStyleSheetFileName. Gets or sets the name of the CSS file written when the document is exported to HTML.
    public func setCssStyleSheetFileName(cssStyleSheetFileName : String?) {
        self.cssStyleSheetFileName = cssStyleSheetFileName;
    }

    // Gets cssStyleSheetFileName. Gets or sets the name of the CSS file written when the document is exported to HTML.
    public func getCssStyleSheetFileName() -> String? {
        return self.cssStyleSheetFileName;
    }

    // Sets cssStyleSheetType. Gets or sets the option that controls how the CSS styles are exported.
    public func setCssStyleSheetType(cssStyleSheetType : String?) {
        self.cssStyleSheetType = cssStyleSheetType;
    }

    // Gets cssStyleSheetType. Gets or sets the option that controls how the CSS styles are exported.
    public func getCssStyleSheetType() -> String? {
        return self.cssStyleSheetType;
    }

    // Sets documentSplitCriteria. Gets or sets the option that controls how the document should be split when saving.
    public func setDocumentSplitCriteria(documentSplitCriteria : String?) {
        self.documentSplitCriteria = documentSplitCriteria;
    }

    // Gets documentSplitCriteria. Gets or sets the option that controls how the document should be split when saving.
    public func getDocumentSplitCriteria() -> String? {
        return self.documentSplitCriteria;
    }

    // Sets documentSplitHeadingLevel. Gets or sets the maximum level of headings at which to split the document.
    public func setDocumentSplitHeadingLevel(documentSplitHeadingLevel : Int?) {
        self.documentSplitHeadingLevel = documentSplitHeadingLevel;
    }

    // Gets documentSplitHeadingLevel. Gets or sets the maximum level of headings at which to split the document.
    public func getDocumentSplitHeadingLevel() -> Int? {
        return self.documentSplitHeadingLevel;
    }

    // Sets encoding. Gets or sets the character encoding to use when exporting.
    public func setEncoding(encoding : String?) {
        self.encoding = encoding;
    }

    // Gets encoding. Gets or sets the character encoding to use when exporting.
    public func getEncoding() -> String? {
        return self.encoding;
    }

    // Sets exportDocumentProperties. Gets or sets a value indicating whether to export built-in and custom document properties.
    public func setExportDocumentProperties(exportDocumentProperties : Bool?) {
        self.exportDocumentProperties = exportDocumentProperties;
    }

    // Gets exportDocumentProperties. Gets or sets a value indicating whether to export built-in and custom document properties.
    public func getExportDocumentProperties() -> Bool? {
        return self.exportDocumentProperties;
    }

    // Sets exportDropDownFormFieldAsText. Gets or sets the flag, that controls how drop-down form fields are saved to HTML. The default value is false.
    public func setExportDropDownFormFieldAsText(exportDropDownFormFieldAsText : Bool?) {
        self.exportDropDownFormFieldAsText = exportDropDownFormFieldAsText;
    }

    // Gets exportDropDownFormFieldAsText. Gets or sets the flag, that controls how drop-down form fields are saved to HTML. The default value is false.
    public func getExportDropDownFormFieldAsText() -> Bool? {
        return self.exportDropDownFormFieldAsText;
    }

    // Sets exportFontResources. Gets or sets a value indicating whether font resources should be exported.
    public func setExportFontResources(exportFontResources : Bool?) {
        self.exportFontResources = exportFontResources;
    }

    // Gets exportFontResources. Gets or sets a value indicating whether font resources should be exported.
    public func getExportFontResources() -> Bool? {
        return self.exportFontResources;
    }

    // Sets exportFontsAsBase64. Gets or sets a value indicating whether fonts resources should be embedded to HTML in Base64 encoding. The default value is false.
    public func setExportFontsAsBase64(exportFontsAsBase64 : Bool?) {
        self.exportFontsAsBase64 = exportFontsAsBase64;
    }

    // Gets exportFontsAsBase64. Gets or sets a value indicating whether fonts resources should be embedded to HTML in Base64 encoding. The default value is false.
    public func getExportFontsAsBase64() -> Bool? {
        return self.exportFontsAsBase64;
    }

    // Sets exportHeadersFootersMode. Gets or sets the option that controls how headers and footers are exported.
    public func setExportHeadersFootersMode(exportHeadersFootersMode : String?) {
        self.exportHeadersFootersMode = exportHeadersFootersMode;
    }

    // Gets exportHeadersFootersMode. Gets or sets the option that controls how headers and footers are exported.
    public func getExportHeadersFootersMode() -> String? {
        return self.exportHeadersFootersMode;
    }

    // Sets exportImagesAsBase64. Gets or sets a value indicating whether images are saved in Base64 format.
    public func setExportImagesAsBase64(exportImagesAsBase64 : Bool?) {
        self.exportImagesAsBase64 = exportImagesAsBase64;
    }

    // Gets exportImagesAsBase64. Gets or sets a value indicating whether images are saved in Base64 format.
    public func getExportImagesAsBase64() -> Bool? {
        return self.exportImagesAsBase64;
    }

    // Sets exportLanguageInformation. Gets or sets a value indicating whether language information is exported.
    public func setExportLanguageInformation(exportLanguageInformation : Bool?) {
        self.exportLanguageInformation = exportLanguageInformation;
    }

    // Gets exportLanguageInformation. Gets or sets a value indicating whether language information is exported.
    public func getExportLanguageInformation() -> Bool? {
        return self.exportLanguageInformation;
    }

    // Sets exportListLabels. Gets or sets the option that controls how list labels are exported.
    public func setExportListLabels(exportListLabels : String?) {
        self.exportListLabels = exportListLabels;
    }

    // Gets exportListLabels. Gets or sets the option that controls how list labels are exported.
    public func getExportListLabels() -> String? {
        return self.exportListLabels;
    }

    // Sets exportOriginalUrlForLinkedImages. Gets or sets a value indicating whether the original URL should be used as the URL of the linked images. The default value is false.
    public func setExportOriginalUrlForLinkedImages(exportOriginalUrlForLinkedImages : Bool?) {
        self.exportOriginalUrlForLinkedImages = exportOriginalUrlForLinkedImages;
    }

    // Gets exportOriginalUrlForLinkedImages. Gets or sets a value indicating whether the original URL should be used as the URL of the linked images. The default value is false.
    public func getExportOriginalUrlForLinkedImages() -> Bool? {
        return self.exportOriginalUrlForLinkedImages;
    }

    // Sets exportPageMargins. Gets or sets a value indicating whether page margins are exported to HTML, MHTML or EPUB. The default value is false.
    public func setExportPageMargins(exportPageMargins : Bool?) {
        self.exportPageMargins = exportPageMargins;
    }

    // Gets exportPageMargins. Gets or sets a value indicating whether page margins are exported to HTML, MHTML or EPUB. The default value is false.
    public func getExportPageMargins() -> Bool? {
        return self.exportPageMargins;
    }

    // Sets exportPageSetup. Gets or sets a value indicating whether page setup is exported.
    public func setExportPageSetup(exportPageSetup : Bool?) {
        self.exportPageSetup = exportPageSetup;
    }

    // Gets exportPageSetup. Gets or sets a value indicating whether page setup is exported.
    public func getExportPageSetup() -> Bool? {
        return self.exportPageSetup;
    }

    // Sets exportRelativeFontSize. Gets or sets a value indicating whether font sizes should be output in relative units when saving.
    public func setExportRelativeFontSize(exportRelativeFontSize : Bool?) {
        self.exportRelativeFontSize = exportRelativeFontSize;
    }

    // Gets exportRelativeFontSize. Gets or sets a value indicating whether font sizes should be output in relative units when saving.
    public func getExportRelativeFontSize() -> Bool? {
        return self.exportRelativeFontSize;
    }

    // Sets exportRoundtripInformation. Gets or sets a value indicating whether to write the roundtrip information when saving to HTML. The default value is true.
    public func setExportRoundtripInformation(exportRoundtripInformation : Bool?) {
        self.exportRoundtripInformation = exportRoundtripInformation;
    }

    // Gets exportRoundtripInformation. Gets or sets a value indicating whether to write the roundtrip information when saving to HTML. The default value is true.
    public func getExportRoundtripInformation() -> Bool? {
        return self.exportRoundtripInformation;
    }

    // Sets exportTextBoxAsSvg. Gets or sets the flag, that controls how textboxes represented by Aspose.Words.Drawing.Shape are saved to HTML, MHTML or EPUB. The default value is false. When set to true, exports textboxes as inline "svg" elements. When false, exports as "image" elements.
    public func setExportTextBoxAsSvg(exportTextBoxAsSvg : Bool?) {
        self.exportTextBoxAsSvg = exportTextBoxAsSvg;
    }

    // Gets exportTextBoxAsSvg. Gets or sets the flag, that controls how textboxes represented by Aspose.Words.Drawing.Shape are saved to HTML, MHTML or EPUB. The default value is false. When set to true, exports textboxes as inline "svg" elements. When false, exports as "image" elements.
    public func getExportTextBoxAsSvg() -> Bool? {
        return self.exportTextBoxAsSvg;
    }

    // Sets exportTextInputFormFieldAsText. Gets or sets the flag, that controls how text input form fields are saved.
    public func setExportTextInputFormFieldAsText(exportTextInputFormFieldAsText : Bool?) {
        self.exportTextInputFormFieldAsText = exportTextInputFormFieldAsText;
    }

    // Gets exportTextInputFormFieldAsText. Gets or sets the flag, that controls how text input form fields are saved.
    public func getExportTextInputFormFieldAsText() -> Bool? {
        return self.exportTextInputFormFieldAsText;
    }

    // Sets exportTocPageNumbers. Gets or sets a value indicating whether to write page numbers to table of contents when saving.
    public func setExportTocPageNumbers(exportTocPageNumbers : Bool?) {
        self.exportTocPageNumbers = exportTocPageNumbers;
    }

    // Gets exportTocPageNumbers. Gets or sets a value indicating whether to write page numbers to table of contents when saving.
    public func getExportTocPageNumbers() -> Bool? {
        return self.exportTocPageNumbers;
    }

    // Sets exportXhtmlTransitional. Gets or sets a value indicating whether to write the DOCTYPE declaration when saving.
    public func setExportXhtmlTransitional(exportXhtmlTransitional : Bool?) {
        self.exportXhtmlTransitional = exportXhtmlTransitional;
    }

    // Gets exportXhtmlTransitional. Gets or sets a value indicating whether to write the DOCTYPE declaration when saving.
    public func getExportXhtmlTransitional() -> Bool? {
        return self.exportXhtmlTransitional;
    }

    // Sets fontResourcesSubsettingSizeThreshold. Gets or sets the option that controls which font resources need subsetting when saving.
    public func setFontResourcesSubsettingSizeThreshold(fontResourcesSubsettingSizeThreshold : Int?) {
        self.fontResourcesSubsettingSizeThreshold = fontResourcesSubsettingSizeThreshold;
    }

    // Gets fontResourcesSubsettingSizeThreshold. Gets or sets the option that controls which font resources need subsetting when saving.
    public func getFontResourcesSubsettingSizeThreshold() -> Int? {
        return self.fontResourcesSubsettingSizeThreshold;
    }

    // Sets fontsFolder. Gets or sets the physical folder where fonts are saved when exporting a document.
    public func setFontsFolder(fontsFolder : String?) {
        self.fontsFolder = fontsFolder;
    }

    // Gets fontsFolder. Gets or sets the physical folder where fonts are saved when exporting a document.
    public func getFontsFolder() -> String? {
        return self.fontsFolder;
    }

    // Sets fontsFolderAlias. Gets or sets the name of the folder used to construct font URIs.
    public func setFontsFolderAlias(fontsFolderAlias : String?) {
        self.fontsFolderAlias = fontsFolderAlias;
    }

    // Gets fontsFolderAlias. Gets or sets the name of the folder used to construct font URIs.
    public func getFontsFolderAlias() -> String? {
        return self.fontsFolderAlias;
    }

    // Sets htmlVersion. Gets or sets the version of HTML standard, that should be used when saving the document to HTML or MHTML. Default value is Aspose.Words.Saving.HtmlVersion.Xhtml.
    public func setHtmlVersion(htmlVersion : HtmlVersion?) {
        self.htmlVersion = htmlVersion;
    }

    // Gets htmlVersion. Gets or sets the version of HTML standard, that should be used when saving the document to HTML or MHTML. Default value is Aspose.Words.Saving.HtmlVersion.Xhtml.
    public func getHtmlVersion() -> HtmlVersion? {
        return self.htmlVersion;
    }

    // Sets imageResolution. Gets or sets the output resolution for images when exporting.
    public func setImageResolution(imageResolution : Int?) {
        self.imageResolution = imageResolution;
    }

    // Gets imageResolution. Gets or sets the output resolution for images when exporting.
    public func getImageResolution() -> Int? {
        return self.imageResolution;
    }

    // Sets imagesFolder. Gets or sets the physical folder where images are saved when exporting a document.
    public func setImagesFolder(imagesFolder : String?) {
        self.imagesFolder = imagesFolder;
    }

    // Gets imagesFolder. Gets or sets the physical folder where images are saved when exporting a document.
    public func getImagesFolder() -> String? {
        return self.imagesFolder;
    }

    // Sets imagesFolderAlias. Gets or sets the name of the folder used to construct image URIs.
    public func setImagesFolderAlias(imagesFolderAlias : String?) {
        self.imagesFolderAlias = imagesFolderAlias;
    }

    // Gets imagesFolderAlias. Gets or sets the name of the folder used to construct image URIs.
    public func getImagesFolderAlias() -> String? {
        return self.imagesFolderAlias;
    }

    // Sets metafileFormat. Gets or sets the options, that controls in what format metafiles are saved when exporting to HTML, MHTML, or EPUB. The default value is Aspose.Words.Saving.HtmlMetafileFormat.Png, meaning that metafiles are rendered to raster PNG images. Metafiles are not natively displayed by HTML browsers. By default, Aspose.Words converts WMF and EMF images into PNG files when exporting to HTML.Other options are to convert metafiles to SVG images or to export them as is without conversion. Some image transforms, in particular image cropping, will not be applied to metafile images if they are exported to HTML without conversion.
    public func setMetafileFormat(metafileFormat : MetafileFormat?) {
        self.metafileFormat = metafileFormat;
    }

    // Gets metafileFormat. Gets or sets the options, that controls in what format metafiles are saved when exporting to HTML, MHTML, or EPUB. The default value is Aspose.Words.Saving.HtmlMetafileFormat.Png, meaning that metafiles are rendered to raster PNG images. Metafiles are not natively displayed by HTML browsers. By default, Aspose.Words converts WMF and EMF images into PNG files when exporting to HTML.Other options are to convert metafiles to SVG images or to export them as is without conversion. Some image transforms, in particular image cropping, will not be applied to metafile images if they are exported to HTML without conversion.
    public func getMetafileFormat() -> MetafileFormat? {
        return self.metafileFormat;
    }

    // Sets officeMathOutputMode. Gets or sets the option that controls how OfficeMath objects are exported to HTML, MHTML or EPUB. The default value is HtmlOfficeMathOutputMode.Image.
    public func setOfficeMathOutputMode(officeMathOutputMode : OfficeMathOutputMode?) {
        self.officeMathOutputMode = officeMathOutputMode;
    }

    // Gets officeMathOutputMode. Gets or sets the option that controls how OfficeMath objects are exported to HTML, MHTML or EPUB. The default value is HtmlOfficeMathOutputMode.Image.
    public func getOfficeMathOutputMode() -> OfficeMathOutputMode? {
        return self.officeMathOutputMode;
    }

    // Sets prettyFormat. Gets or sets a value indicating whether to use pretty formats output.
    public func setPrettyFormat(prettyFormat : Bool?) {
        self.prettyFormat = prettyFormat;
    }

    // Gets prettyFormat. Gets or sets a value indicating whether to use pretty formats output.
    public func getPrettyFormat() -> Bool? {
        return self.prettyFormat;
    }

    // Sets resolveFontNames. Gets or sets a value indicating whether font family names used in the document are resolved and substituted according to FontSettings when being written into HTML-based formats. The default value is false.
    public func setResolveFontNames(resolveFontNames : Bool?) {
        self.resolveFontNames = resolveFontNames;
    }

    // Gets resolveFontNames. Gets or sets a value indicating whether font family names used in the document are resolved and substituted according to FontSettings when being written into HTML-based formats. The default value is false.
    public func getResolveFontNames() -> Bool? {
        return self.resolveFontNames;
    }

    // Sets resourceFolder. Gets or sets the physical folder where all resources like images, fonts, and external CSS are saved when a document is exported to HTML. The default value is an empty string.
    public func setResourceFolder(resourceFolder : String?) {
        self.resourceFolder = resourceFolder;
    }

    // Gets resourceFolder. Gets or sets the physical folder where all resources like images, fonts, and external CSS are saved when a document is exported to HTML. The default value is an empty string.
    public func getResourceFolder() -> String? {
        return self.resourceFolder;
    }

    // Sets resourceFolderAlias. Gets or sets the name of the folder used to construct URIs of all resources written into HTML document. The default value is an empty string.
    public func setResourceFolderAlias(resourceFolderAlias : String?) {
        self.resourceFolderAlias = resourceFolderAlias;
    }

    // Gets resourceFolderAlias. Gets or sets the name of the folder used to construct URIs of all resources written into HTML document. The default value is an empty string.
    public func getResourceFolderAlias() -> String? {
        return self.resourceFolderAlias;
    }

    // Sets scaleImageToShapeSize. Gets or sets a value indicating whether images are scaled by Aspose.Words to the bounding shape size when exporting.
    public func setScaleImageToShapeSize(scaleImageToShapeSize : Bool?) {
        self.scaleImageToShapeSize = scaleImageToShapeSize;
    }

    // Gets scaleImageToShapeSize. Gets or sets a value indicating whether images are scaled by Aspose.Words to the bounding shape size when exporting.
    public func getScaleImageToShapeSize() -> Bool? {
        return self.scaleImageToShapeSize;
    }

    // Sets tableWidthOutputMode. Gets or sets the option that controls how table, row and cell widths are exported.
    public func setTableWidthOutputMode(tableWidthOutputMode : String?) {
        self.tableWidthOutputMode = tableWidthOutputMode;
    }

    // Gets tableWidthOutputMode. Gets or sets the option that controls how table, row and cell widths are exported.
    public func getTableWidthOutputMode() -> String? {
        return self.tableWidthOutputMode;
    }
}
