/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="PdfSaveOptionsData.swift">
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

public class PdfSaveOptionsData : FixedPageSaveOptionsData {
    // Gets or sets determines how bookmarks in headers/footers are exported. The default value is Aspose.Words.Saving.HeaderFooterBookmarksExportMode.All.
    public enum HeaderFooterBookmarksExportMode
    { 
        // Enum value "_none"
        case _none
        
        // Enum value "first"
        case first
        
        // Enum value "all"
        case all
        
    }

        
    // Gets or sets specifies the PDF standards compliance level for output documents.
    private let compliance : String?;
    // Gets or sets specifies whether to convert footnote/endnote references in main text story into active hyperlinks. When clicked the hyperlink will lead to the corresponding footnote/endnote. Default is false.
    private let createNoteHyperlinks : Bool?;
    // Gets or sets a value determining the way  are exported to PDF file. Default value is .
    private let customPropertiesExport : String?;
    // Gets or sets specifies the details for signing the output PDF document.
    private let digitalSignatureDetails : PdfDigitalSignatureDetailsData?;
    // Gets or sets a flag specifying whether the window’s title bar should display the document title taken from the Title entry of the document information dictionary.
    private let displayDocTitle : Bool?;
    // Gets or sets allows to specify downsample options.
    private let downsampleOptions : DownsampleOptionsData?;
    // Gets or sets controls how fonts are embedded into the resulting PDF documents.
    private let embedFullFonts : Bool?;
    // Gets or sets specifies the details for encrypting the output PDF document.
    private let encryptionDetails : PdfEncryptionDetailsData?;
    // Gets or sets a flag specifying whether URI should be escaped before writing.             
    private let escapeUri : Bool?;
    // Gets or sets determines whether or not to export document structure.
    private let exportDocumentStructure : Bool?;
    // Gets or sets specifies the font embedding mode.
    private let fontEmbeddingMode : String?;
    // Gets or sets determines how bookmarks in headers/footers are exported. The default value is Aspose.Words.Saving.HeaderFooterBookmarksExportMode.All.
    private let headerFooterBookmarksExportMode : HeaderFooterBookmarksExportMode?;
    // Gets or sets specifies how the color space will be selected for the images in PDF document.
    private let imageColorSpaceExportMode : String?;
    // Gets or sets specifies compression type to be used for all images in the document.
    private let imageCompression : String?;
    // Gets or sets determines whether hyperlinks in the output Pdf document are forced to be opened in a new window (or tab) of a browser.
    private let openHyperlinksInNewWindow : Bool?;
    // Gets or sets allows to specify outline options.
    private let outlineOptions : OutlineOptionsData?;
    // Gets or sets specifies how the PDF document should be displayed when opened in the PDF reader.
    private let pageMode : String?;
    // Gets or sets a value determining whether or not to preblend transparent images with black background color.
    private let preblendImages : Bool?;
    // Gets or sets specifies whether to preserve Microsoft Word form fields as form fields in PDF or convert them to text.
    private let preserveFormFields : Bool?;
    // Gets or sets specifies compression type to be used for all textual content in the document.
    private let textCompression : String?;
    // Gets or sets determines whether the document should be saved using a booklet printing layout.
    private let useBookFoldPrintingSettings : Bool?;
    // Gets or sets determines whether or not to substitute TrueType fonts Arial, Times New Roman, Courier New and Symbol with core PDF Type 1 fonts.
    private let useCoreFonts : Bool?;
    // Gets or sets determines what type of zoom should be applied when a document is opened with a PDF viewer.
    private let zoomBehavior : String?;
    // Gets or sets determines zoom factor (in percentages) for a document.
    private let zoomFactor : Int?;
        
    private enum CodingKeys: String, CodingKey { case compliance, createNoteHyperlinks, customPropertiesExport, digitalSignatureDetails, displayDocTitle, downsampleOptions, embedFullFonts, encryptionDetails, escapeUri, exportDocumentStructure, fontEmbeddingMode, headerFooterBookmarksExportMode, imageColorSpaceExportMode, imageCompression, openHyperlinksInNewWindow, outlineOptions, pageMode, preblendImages, preserveFormFields, textCompression, useBookFoldPrintingSettings, useCoreFonts, zoomBehavior, zoomFactor }
        
    public init(compliance : String? = nil, createNoteHyperlinks : Bool? = nil, customPropertiesExport : String? = nil, digitalSignatureDetails : PdfDigitalSignatureDetailsData? = nil, displayDocTitle : Bool? = nil, downsampleOptions : DownsampleOptionsData? = nil, embedFullFonts : Bool? = nil, encryptionDetails : PdfEncryptionDetailsData? = nil, escapeUri : Bool? = nil, exportDocumentStructure : Bool? = nil, fontEmbeddingMode : String? = nil, headerFooterBookmarksExportMode : HeaderFooterBookmarksExportMode? = nil, imageColorSpaceExportMode : String? = nil, imageCompression : String? = nil, openHyperlinksInNewWindow : Bool? = nil, outlineOptions : OutlineOptionsData? = nil, pageMode : String? = nil, preblendImages : Bool? = nil, preserveFormFields : Bool? = nil, textCompression : String? = nil, useBookFoldPrintingSettings : Bool? = nil, useCoreFonts : Bool? = nil, zoomBehavior : String? = nil, zoomFactor : Int? = nil) {
        self.compliance = compliance;
        self.createNoteHyperlinks = createNoteHyperlinks;
        self.customPropertiesExport = customPropertiesExport;
        self.digitalSignatureDetails = digitalSignatureDetails;
        self.displayDocTitle = displayDocTitle;
        self.downsampleOptions = downsampleOptions;
        self.embedFullFonts = embedFullFonts;
        self.encryptionDetails = encryptionDetails;
        self.escapeUri = escapeUri;
        self.exportDocumentStructure = exportDocumentStructure;
        self.fontEmbeddingMode = fontEmbeddingMode;
        self.headerFooterBookmarksExportMode = headerFooterBookmarksExportMode;
        self.imageColorSpaceExportMode = imageColorSpaceExportMode;
        self.imageCompression = imageCompression;
        self.openHyperlinksInNewWindow = openHyperlinksInNewWindow;
        self.outlineOptions = outlineOptions;
        self.pageMode = pageMode;
        self.preblendImages = preblendImages;
        self.preserveFormFields = preserveFormFields;
        self.textCompression = textCompression;
        self.useBookFoldPrintingSettings = useBookFoldPrintingSettings;
        self.useCoreFonts = useCoreFonts;
        self.zoomBehavior = zoomBehavior;
        self.zoomFactor = zoomFactor;
    }
    
    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self);
        try super.init(from: try container.superDecoder());
        if let compliance = try container.decodeIfPresent(String.self, forKey: .compliance) {
            self.compliance = compliance;
        }
        if let createNoteHyperlinks = try container.decodeIfPresent(Bool.self, forKey: .createNoteHyperlinks) {
            self.createNoteHyperlinks = createNoteHyperlinks;
        }
        if let customPropertiesExport = try container.decodeIfPresent(String.self, forKey: .customPropertiesExport) {
            self.customPropertiesExport = customPropertiesExport;
        }
        if let digitalSignatureDetails = try container.decodeIfPresent(PdfDigitalSignatureDetailsData.self, forKey: .digitalSignatureDetails) {
            self.digitalSignatureDetails = digitalSignatureDetails;
        }
        if let displayDocTitle = try container.decodeIfPresent(Bool.self, forKey: .displayDocTitle) {
            self.displayDocTitle = displayDocTitle;
        }
        if let downsampleOptions = try container.decodeIfPresent(DownsampleOptionsData.self, forKey: .downsampleOptions) {
            self.downsampleOptions = downsampleOptions;
        }
        if let embedFullFonts = try container.decodeIfPresent(Bool.self, forKey: .embedFullFonts) {
            self.embedFullFonts = embedFullFonts;
        }
        if let encryptionDetails = try container.decodeIfPresent(PdfEncryptionDetailsData.self, forKey: .encryptionDetails) {
            self.encryptionDetails = encryptionDetails;
        }
        if let escapeUri = try container.decodeIfPresent(Bool.self, forKey: .escapeUri) {
            self.escapeUri = escapeUri;
        }
        if let exportDocumentStructure = try container.decodeIfPresent(Bool.self, forKey: .exportDocumentStructure) {
            self.exportDocumentStructure = exportDocumentStructure;
        }
        if let fontEmbeddingMode = try container.decodeIfPresent(String.self, forKey: .fontEmbeddingMode) {
            self.fontEmbeddingMode = fontEmbeddingMode;
        }
        if let headerFooterBookmarksExportMode = try container.decodeIfPresent(HeaderFooterBookmarksExportMode.self, forKey: .headerFooterBookmarksExportMode) {
            self.headerFooterBookmarksExportMode = headerFooterBookmarksExportMode;
        }
        if let imageColorSpaceExportMode = try container.decodeIfPresent(String.self, forKey: .imageColorSpaceExportMode) {
            self.imageColorSpaceExportMode = imageColorSpaceExportMode;
        }
        if let imageCompression = try container.decodeIfPresent(String.self, forKey: .imageCompression) {
            self.imageCompression = imageCompression;
        }
        if let openHyperlinksInNewWindow = try container.decodeIfPresent(Bool.self, forKey: .openHyperlinksInNewWindow) {
            self.openHyperlinksInNewWindow = openHyperlinksInNewWindow;
        }
        if let outlineOptions = try container.decodeIfPresent(OutlineOptionsData.self, forKey: .outlineOptions) {
            self.outlineOptions = outlineOptions;
        }
        if let pageMode = try container.decodeIfPresent(String.self, forKey: .pageMode) {
            self.pageMode = pageMode;
        }
        if let preblendImages = try container.decodeIfPresent(Bool.self, forKey: .preblendImages) {
            self.preblendImages = preblendImages;
        }
        if let preserveFormFields = try container.decodeIfPresent(Bool.self, forKey: .preserveFormFields) {
            self.preserveFormFields = preserveFormFields;
        }
        if let textCompression = try container.decodeIfPresent(String.self, forKey: .textCompression) {
            self.textCompression = textCompression;
        }
        if let useBookFoldPrintingSettings = try container.decodeIfPresent(Bool.self, forKey: .useBookFoldPrintingSettings) {
            self.useBookFoldPrintingSettings = useBookFoldPrintingSettings;
        }
        if let useCoreFonts = try container.decodeIfPresent(Bool.self, forKey: .useCoreFonts) {
            self.useCoreFonts = useCoreFonts;
        }
        if let zoomBehavior = try container.decodeIfPresent(String.self, forKey: .zoomBehavior) {
            self.zoomBehavior = zoomBehavior;
        }
        if let zoomFactor = try container.decodeIfPresent(Int.self, forKey: .zoomFactor) {
            self.zoomFactor = zoomFactor;
        }

    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.compliance != nil) {
            try container.encode(self.compliance, forKey: .compliance);
        }
        if (self.createNoteHyperlinks != nil) {
            try container.encode(self.createNoteHyperlinks, forKey: .createNoteHyperlinks);
        }
        if (self.customPropertiesExport != nil) {
            try container.encode(self.customPropertiesExport, forKey: .customPropertiesExport);
        }
        if (self.digitalSignatureDetails != nil) {
            try container.encode(self.digitalSignatureDetails, forKey: .digitalSignatureDetails);
        }
        if (self.displayDocTitle != nil) {
            try container.encode(self.displayDocTitle, forKey: .displayDocTitle);
        }
        if (self.downsampleOptions != nil) {
            try container.encode(self.downsampleOptions, forKey: .downsampleOptions);
        }
        if (self.embedFullFonts != nil) {
            try container.encode(self.embedFullFonts, forKey: .embedFullFonts);
        }
        if (self.encryptionDetails != nil) {
            try container.encode(self.encryptionDetails, forKey: .encryptionDetails);
        }
        if (self.escapeUri != nil) {
            try container.encode(self.escapeUri, forKey: .escapeUri);
        }
        if (self.exportDocumentStructure != nil) {
            try container.encode(self.exportDocumentStructure, forKey: .exportDocumentStructure);
        }
        if (self.fontEmbeddingMode != nil) {
            try container.encode(self.fontEmbeddingMode, forKey: .fontEmbeddingMode);
        }
        if (self.headerFooterBookmarksExportMode != nil) {
            try container.encode(self.headerFooterBookmarksExportMode, forKey: .headerFooterBookmarksExportMode);
        }
        if (self.imageColorSpaceExportMode != nil) {
            try container.encode(self.imageColorSpaceExportMode, forKey: .imageColorSpaceExportMode);
        }
        if (self.imageCompression != nil) {
            try container.encode(self.imageCompression, forKey: .imageCompression);
        }
        if (self.openHyperlinksInNewWindow != nil) {
            try container.encode(self.openHyperlinksInNewWindow, forKey: .openHyperlinksInNewWindow);
        }
        if (self.outlineOptions != nil) {
            try container.encode(self.outlineOptions, forKey: .outlineOptions);
        }
        if (self.pageMode != nil) {
            try container.encode(self.pageMode, forKey: .pageMode);
        }
        if (self.preblendImages != nil) {
            try container.encode(self.preblendImages, forKey: .preblendImages);
        }
        if (self.preserveFormFields != nil) {
            try container.encode(self.preserveFormFields, forKey: .preserveFormFields);
        }
        if (self.textCompression != nil) {
            try container.encode(self.textCompression, forKey: .textCompression);
        }
        if (self.useBookFoldPrintingSettings != nil) {
            try container.encode(self.useBookFoldPrintingSettings, forKey: .useBookFoldPrintingSettings);
        }
        if (self.useCoreFonts != nil) {
            try container.encode(self.useCoreFonts, forKey: .useCoreFonts);
        }
        if (self.zoomBehavior != nil) {
            try container.encode(self.zoomBehavior, forKey: .zoomBehavior);
        }
        if (self.zoomFactor != nil) {
            try container.encode(self.zoomFactor, forKey: .zoomFactor);
        }
        
        try super.encode(to: container.superEncoder());
    }
        
    public func getCompliance() -> String? {
        return self.compliance;
    }
    public func getCreateNoteHyperlinks() -> Bool? {
        return self.createNoteHyperlinks;
    }
    public func getCustomPropertiesExport() -> String? {
        return self.customPropertiesExport;
    }
    public func getDigitalSignatureDetails() -> PdfDigitalSignatureDetailsData? {
        return self.digitalSignatureDetails;
    }
    public func getDisplayDocTitle() -> Bool? {
        return self.displayDocTitle;
    }
    public func getDownsampleOptions() -> DownsampleOptionsData? {
        return self.downsampleOptions;
    }
    public func getEmbedFullFonts() -> Bool? {
        return self.embedFullFonts;
    }
    public func getEncryptionDetails() -> PdfEncryptionDetailsData? {
        return self.encryptionDetails;
    }
    public func getEscapeUri() -> Bool? {
        return self.escapeUri;
    }
    public func getExportDocumentStructure() -> Bool? {
        return self.exportDocumentStructure;
    }
    public func getFontEmbeddingMode() -> String? {
        return self.fontEmbeddingMode;
    }
    public func getHeaderFooterBookmarksExportMode() -> HeaderFooterBookmarksExportMode? {
        return self.headerFooterBookmarksExportMode;
    }
    public func getImageColorSpaceExportMode() -> String? {
        return self.imageColorSpaceExportMode;
    }
    public func getImageCompression() -> String? {
        return self.imageCompression;
    }
    public func getOpenHyperlinksInNewWindow() -> Bool? {
        return self.openHyperlinksInNewWindow;
    }
    public func getOutlineOptions() -> OutlineOptionsData? {
        return self.outlineOptions;
    }
    public func getPageMode() -> String? {
        return self.pageMode;
    }
    public func getPreblendImages() -> Bool? {
        return self.preblendImages;
    }
    public func getPreserveFormFields() -> Bool? {
        return self.preserveFormFields;
    }
    public func getTextCompression() -> String? {
        return self.textCompression;
    }
    public func getUseBookFoldPrintingSettings() -> Bool? {
        return self.useBookFoldPrintingSettings;
    }
    public func getUseCoreFonts() -> Bool? {
        return self.useCoreFonts;
    }
    public func getZoomBehavior() -> String? {
        return self.zoomBehavior;
    }
    public func getZoomFactor() -> Int? {
        return self.zoomFactor;
    }
}
