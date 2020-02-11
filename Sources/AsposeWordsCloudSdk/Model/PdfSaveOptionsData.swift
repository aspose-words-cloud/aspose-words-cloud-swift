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

// container class for pdf save options.
public class PdfSaveOptionsData : FixedPageSaveOptionsData {
    // Gets or sets determines how bookmarks in headers/footers are exported. The default value is Aspose.Words.Saving.HeaderFooterBookmarksExportMode.All.
    public enum HeaderFooterBookmarksExportMode : String, Codable
    { 
        // Enum value "_none"
        case _none = "None"
        
        // Enum value "first"
        case first = "First"
        
        // Enum value "all"
        case all = "All"
        
    }

    
    // Field of compliance. Gets or sets specifies the PDF standards compliance level for output documents.      
    private var compliance : String?;
    
    // Field of createNoteHyperlinks. Gets or sets specifies whether to convert footnote/endnote references in main text story into active hyperlinks. When clicked the hyperlink will lead to the corresponding footnote/endnote. Default is false.      
    private var createNoteHyperlinks : Bool?;
    
    // Field of customPropertiesExport. Gets or sets a value determining the way  are exported to PDF file. Default value is .      
    private var customPropertiesExport : String?;
    
    // Field of digitalSignatureDetails. Gets or sets specifies the details for signing the output PDF document.      
    private var digitalSignatureDetails : PdfDigitalSignatureDetailsData?;
    
    // Field of displayDocTitle. Gets or sets a flag specifying whether the window’s title bar should display the document title taken from the Title entry of the document information dictionary.      
    private var displayDocTitle : Bool?;
    
    // Field of downsampleOptions. Gets or sets allows to specify downsample options.      
    private var downsampleOptions : DownsampleOptionsData?;
    
    // Field of embedFullFonts. Gets or sets controls how fonts are embedded into the resulting PDF documents.      
    private var embedFullFonts : Bool?;
    
    // Field of encryptionDetails. Gets or sets specifies the details for encrypting the output PDF document.      
    private var encryptionDetails : PdfEncryptionDetailsData?;
    
    // Field of escapeUri. Gets or sets a flag specifying whether URI should be escaped before writing.                   
    private var escapeUri : Bool?;
    
    // Field of exportDocumentStructure. Gets or sets determines whether or not to export document structure.      
    private var exportDocumentStructure : Bool?;
    
    // Field of fontEmbeddingMode. Gets or sets specifies the font embedding mode.      
    private var fontEmbeddingMode : String?;
    
    // Field of headerFooterBookmarksExportMode. Gets or sets determines how bookmarks in headers/footers are exported. The default value is Aspose.Words.Saving.HeaderFooterBookmarksExportMode.All.      
    private var headerFooterBookmarksExportMode : HeaderFooterBookmarksExportMode?;
    
    // Field of imageColorSpaceExportMode. Gets or sets specifies how the color space will be selected for the images in PDF document.      
    private var imageColorSpaceExportMode : String?;
    
    // Field of imageCompression. Gets or sets specifies compression type to be used for all images in the document.      
    private var imageCompression : String?;
    
    // Field of openHyperlinksInNewWindow. Gets or sets determines whether hyperlinks in the output Pdf document are forced to be opened in a new window (or tab) of a browser.      
    private var openHyperlinksInNewWindow : Bool?;
    
    // Field of outlineOptions. Gets or sets allows to specify outline options.      
    private var outlineOptions : OutlineOptionsData?;
    
    // Field of pageMode. Gets or sets specifies how the PDF document should be displayed when opened in the PDF reader.      
    private var pageMode : String?;
    
    // Field of preblendImages. Gets or sets a value determining whether or not to preblend transparent images with black background color.      
    private var preblendImages : Bool?;
    
    // Field of preserveFormFields. Gets or sets specifies whether to preserve Microsoft Word form fields as form fields in PDF or convert them to text.      
    private var preserveFormFields : Bool?;
    
    // Field of textCompression. Gets or sets specifies compression type to be used for all textual content in the document.      
    private var textCompression : String?;
    
    // Field of useBookFoldPrintingSettings. Gets or sets determines whether the document should be saved using a booklet printing layout.      
    private var useBookFoldPrintingSettings : Bool?;
    
    // Field of useCoreFonts. Gets or sets determines whether or not to substitute TrueType fonts Arial, Times New Roman, Courier New and Symbol with core PDF Type 1 fonts.      
    private var useCoreFonts : Bool?;
    
    // Field of zoomBehavior. Gets or sets determines what type of zoom should be applied when a document is opened with a PDF viewer.      
    private var zoomBehavior : String?;
    
    // Field of zoomFactor. Gets or sets determines zoom factor (in percentages) for a document.      
    private var zoomFactor : Int?;
        
    private enum CodingKeys: String, CodingKey {
        case compliance;
        case createNoteHyperlinks;
        case customPropertiesExport;
        case digitalSignatureDetails;
        case displayDocTitle;
        case downsampleOptions;
        case embedFullFonts;
        case encryptionDetails;
        case escapeUri;
        case exportDocumentStructure;
        case fontEmbeddingMode;
        case headerFooterBookmarksExportMode;
        case imageColorSpaceExportMode;
        case imageCompression;
        case openHyperlinksInNewWindow;
        case outlineOptions;
        case pageMode;
        case preblendImages;
        case preserveFormFields;
        case textCompression;
        case useBookFoldPrintingSettings;
        case useCoreFonts;
        case zoomBehavior;
        case zoomFactor;
        case invalidCodingKey;
    }
        
    public override init() {
        super.init();
    }
    
    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder);
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.compliance = try container.decodeIfPresent(String.self, forKey: .compliance);
        self.createNoteHyperlinks = try container.decodeIfPresent(Bool.self, forKey: .createNoteHyperlinks);
        self.customPropertiesExport = try container.decodeIfPresent(String.self, forKey: .customPropertiesExport);
        self.digitalSignatureDetails = try container.decodeIfPresent(PdfDigitalSignatureDetailsData.self, forKey: .digitalSignatureDetails);
        self.displayDocTitle = try container.decodeIfPresent(Bool.self, forKey: .displayDocTitle);
        self.downsampleOptions = try container.decodeIfPresent(DownsampleOptionsData.self, forKey: .downsampleOptions);
        self.embedFullFonts = try container.decodeIfPresent(Bool.self, forKey: .embedFullFonts);
        self.encryptionDetails = try container.decodeIfPresent(PdfEncryptionDetailsData.self, forKey: .encryptionDetails);
        self.escapeUri = try container.decodeIfPresent(Bool.self, forKey: .escapeUri);
        self.exportDocumentStructure = try container.decodeIfPresent(Bool.self, forKey: .exportDocumentStructure);
        self.fontEmbeddingMode = try container.decodeIfPresent(String.self, forKey: .fontEmbeddingMode);
        self.headerFooterBookmarksExportMode = try container.decodeIfPresent(HeaderFooterBookmarksExportMode.self, forKey: .headerFooterBookmarksExportMode);
        self.imageColorSpaceExportMode = try container.decodeIfPresent(String.self, forKey: .imageColorSpaceExportMode);
        self.imageCompression = try container.decodeIfPresent(String.self, forKey: .imageCompression);
        self.openHyperlinksInNewWindow = try container.decodeIfPresent(Bool.self, forKey: .openHyperlinksInNewWindow);
        self.outlineOptions = try container.decodeIfPresent(OutlineOptionsData.self, forKey: .outlineOptions);
        self.pageMode = try container.decodeIfPresent(String.self, forKey: .pageMode);
        self.preblendImages = try container.decodeIfPresent(Bool.self, forKey: .preblendImages);
        self.preserveFormFields = try container.decodeIfPresent(Bool.self, forKey: .preserveFormFields);
        self.textCompression = try container.decodeIfPresent(String.self, forKey: .textCompression);
        self.useBookFoldPrintingSettings = try container.decodeIfPresent(Bool.self, forKey: .useBookFoldPrintingSettings);
        self.useCoreFonts = try container.decodeIfPresent(Bool.self, forKey: .useCoreFonts);
        self.zoomBehavior = try container.decodeIfPresent(String.self, forKey: .zoomBehavior);
        self.zoomFactor = try container.decodeIfPresent(Int.self, forKey: .zoomFactor);
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder);
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
    }
    
    // Sets compliance. Gets or sets specifies the PDF standards compliance level for output documents.  
    public func setCompliance(compliance : String?) {
        self.compliance = compliance;
    }
    
    // Gets compliance. Gets or sets specifies the PDF standards compliance level for output documents.  
    public func getCompliance() -> String? {
        return self.compliance;
    }
    
    // Sets createNoteHyperlinks. Gets or sets specifies whether to convert footnote/endnote references in main text story into active hyperlinks. When clicked the hyperlink will lead to the corresponding footnote/endnote. Default is false.  
    public func setCreateNoteHyperlinks(createNoteHyperlinks : Bool?) {
        self.createNoteHyperlinks = createNoteHyperlinks;
    }
    
    // Gets createNoteHyperlinks. Gets or sets specifies whether to convert footnote/endnote references in main text story into active hyperlinks. When clicked the hyperlink will lead to the corresponding footnote/endnote. Default is false.  
    public func getCreateNoteHyperlinks() -> Bool? {
        return self.createNoteHyperlinks;
    }
    
    // Sets customPropertiesExport. Gets or sets a value determining the way  are exported to PDF file. Default value is .  
    public func setCustomPropertiesExport(customPropertiesExport : String?) {
        self.customPropertiesExport = customPropertiesExport;
    }
    
    // Gets customPropertiesExport. Gets or sets a value determining the way  are exported to PDF file. Default value is .  
    public func getCustomPropertiesExport() -> String? {
        return self.customPropertiesExport;
    }
    
    // Sets digitalSignatureDetails. Gets or sets specifies the details for signing the output PDF document.  
    public func setDigitalSignatureDetails(digitalSignatureDetails : PdfDigitalSignatureDetailsData?) {
        self.digitalSignatureDetails = digitalSignatureDetails;
    }
    
    // Gets digitalSignatureDetails. Gets or sets specifies the details for signing the output PDF document.  
    public func getDigitalSignatureDetails() -> PdfDigitalSignatureDetailsData? {
        return self.digitalSignatureDetails;
    }
    
    // Sets displayDocTitle. Gets or sets a flag specifying whether the window’s title bar should display the document title taken from the Title entry of the document information dictionary.  
    public func setDisplayDocTitle(displayDocTitle : Bool?) {
        self.displayDocTitle = displayDocTitle;
    }
    
    // Gets displayDocTitle. Gets or sets a flag specifying whether the window’s title bar should display the document title taken from the Title entry of the document information dictionary.  
    public func getDisplayDocTitle() -> Bool? {
        return self.displayDocTitle;
    }
    
    // Sets downsampleOptions. Gets or sets allows to specify downsample options.  
    public func setDownsampleOptions(downsampleOptions : DownsampleOptionsData?) {
        self.downsampleOptions = downsampleOptions;
    }
    
    // Gets downsampleOptions. Gets or sets allows to specify downsample options.  
    public func getDownsampleOptions() -> DownsampleOptionsData? {
        return self.downsampleOptions;
    }
    
    // Sets embedFullFonts. Gets or sets controls how fonts are embedded into the resulting PDF documents.  
    public func setEmbedFullFonts(embedFullFonts : Bool?) {
        self.embedFullFonts = embedFullFonts;
    }
    
    // Gets embedFullFonts. Gets or sets controls how fonts are embedded into the resulting PDF documents.  
    public func getEmbedFullFonts() -> Bool? {
        return self.embedFullFonts;
    }
    
    // Sets encryptionDetails. Gets or sets specifies the details for encrypting the output PDF document.  
    public func setEncryptionDetails(encryptionDetails : PdfEncryptionDetailsData?) {
        self.encryptionDetails = encryptionDetails;
    }
    
    // Gets encryptionDetails. Gets or sets specifies the details for encrypting the output PDF document.  
    public func getEncryptionDetails() -> PdfEncryptionDetailsData? {
        return self.encryptionDetails;
    }
    
    // Sets escapeUri. Gets or sets a flag specifying whether URI should be escaped before writing.               
    public func setEscapeUri(escapeUri : Bool?) {
        self.escapeUri = escapeUri;
    }
    
    // Gets escapeUri. Gets or sets a flag specifying whether URI should be escaped before writing.               
    public func getEscapeUri() -> Bool? {
        return self.escapeUri;
    }
    
    // Sets exportDocumentStructure. Gets or sets determines whether or not to export document structure.  
    public func setExportDocumentStructure(exportDocumentStructure : Bool?) {
        self.exportDocumentStructure = exportDocumentStructure;
    }
    
    // Gets exportDocumentStructure. Gets or sets determines whether or not to export document structure.  
    public func getExportDocumentStructure() -> Bool? {
        return self.exportDocumentStructure;
    }
    
    // Sets fontEmbeddingMode. Gets or sets specifies the font embedding mode.  
    public func setFontEmbeddingMode(fontEmbeddingMode : String?) {
        self.fontEmbeddingMode = fontEmbeddingMode;
    }
    
    // Gets fontEmbeddingMode. Gets or sets specifies the font embedding mode.  
    public func getFontEmbeddingMode() -> String? {
        return self.fontEmbeddingMode;
    }
    
    // Sets headerFooterBookmarksExportMode. Gets or sets determines how bookmarks in headers/footers are exported. The default value is Aspose.Words.Saving.HeaderFooterBookmarksExportMode.All.  
    public func setHeaderFooterBookmarksExportMode(headerFooterBookmarksExportMode : HeaderFooterBookmarksExportMode?) {
        self.headerFooterBookmarksExportMode = headerFooterBookmarksExportMode;
    }
    
    // Gets headerFooterBookmarksExportMode. Gets or sets determines how bookmarks in headers/footers are exported. The default value is Aspose.Words.Saving.HeaderFooterBookmarksExportMode.All.  
    public func getHeaderFooterBookmarksExportMode() -> HeaderFooterBookmarksExportMode? {
        return self.headerFooterBookmarksExportMode;
    }
    
    // Sets imageColorSpaceExportMode. Gets or sets specifies how the color space will be selected for the images in PDF document.  
    public func setImageColorSpaceExportMode(imageColorSpaceExportMode : String?) {
        self.imageColorSpaceExportMode = imageColorSpaceExportMode;
    }
    
    // Gets imageColorSpaceExportMode. Gets or sets specifies how the color space will be selected for the images in PDF document.  
    public func getImageColorSpaceExportMode() -> String? {
        return self.imageColorSpaceExportMode;
    }
    
    // Sets imageCompression. Gets or sets specifies compression type to be used for all images in the document.  
    public func setImageCompression(imageCompression : String?) {
        self.imageCompression = imageCompression;
    }
    
    // Gets imageCompression. Gets or sets specifies compression type to be used for all images in the document.  
    public func getImageCompression() -> String? {
        return self.imageCompression;
    }
    
    // Sets openHyperlinksInNewWindow. Gets or sets determines whether hyperlinks in the output Pdf document are forced to be opened in a new window (or tab) of a browser.  
    public func setOpenHyperlinksInNewWindow(openHyperlinksInNewWindow : Bool?) {
        self.openHyperlinksInNewWindow = openHyperlinksInNewWindow;
    }
    
    // Gets openHyperlinksInNewWindow. Gets or sets determines whether hyperlinks in the output Pdf document are forced to be opened in a new window (or tab) of a browser.  
    public func getOpenHyperlinksInNewWindow() -> Bool? {
        return self.openHyperlinksInNewWindow;
    }
    
    // Sets outlineOptions. Gets or sets allows to specify outline options.  
    public func setOutlineOptions(outlineOptions : OutlineOptionsData?) {
        self.outlineOptions = outlineOptions;
    }
    
    // Gets outlineOptions. Gets or sets allows to specify outline options.  
    public func getOutlineOptions() -> OutlineOptionsData? {
        return self.outlineOptions;
    }
    
    // Sets pageMode. Gets or sets specifies how the PDF document should be displayed when opened in the PDF reader.  
    public func setPageMode(pageMode : String?) {
        self.pageMode = pageMode;
    }
    
    // Gets pageMode. Gets or sets specifies how the PDF document should be displayed when opened in the PDF reader.  
    public func getPageMode() -> String? {
        return self.pageMode;
    }
    
    // Sets preblendImages. Gets or sets a value determining whether or not to preblend transparent images with black background color.  
    public func setPreblendImages(preblendImages : Bool?) {
        self.preblendImages = preblendImages;
    }
    
    // Gets preblendImages. Gets or sets a value determining whether or not to preblend transparent images with black background color.  
    public func getPreblendImages() -> Bool? {
        return self.preblendImages;
    }
    
    // Sets preserveFormFields. Gets or sets specifies whether to preserve Microsoft Word form fields as form fields in PDF or convert them to text.  
    public func setPreserveFormFields(preserveFormFields : Bool?) {
        self.preserveFormFields = preserveFormFields;
    }
    
    // Gets preserveFormFields. Gets or sets specifies whether to preserve Microsoft Word form fields as form fields in PDF or convert them to text.  
    public func getPreserveFormFields() -> Bool? {
        return self.preserveFormFields;
    }
    
    // Sets textCompression. Gets or sets specifies compression type to be used for all textual content in the document.  
    public func setTextCompression(textCompression : String?) {
        self.textCompression = textCompression;
    }
    
    // Gets textCompression. Gets or sets specifies compression type to be used for all textual content in the document.  
    public func getTextCompression() -> String? {
        return self.textCompression;
    }
    
    // Sets useBookFoldPrintingSettings. Gets or sets determines whether the document should be saved using a booklet printing layout.  
    public func setUseBookFoldPrintingSettings(useBookFoldPrintingSettings : Bool?) {
        self.useBookFoldPrintingSettings = useBookFoldPrintingSettings;
    }
    
    // Gets useBookFoldPrintingSettings. Gets or sets determines whether the document should be saved using a booklet printing layout.  
    public func getUseBookFoldPrintingSettings() -> Bool? {
        return self.useBookFoldPrintingSettings;
    }
    
    // Sets useCoreFonts. Gets or sets determines whether or not to substitute TrueType fonts Arial, Times New Roman, Courier New and Symbol with core PDF Type 1 fonts.  
    public func setUseCoreFonts(useCoreFonts : Bool?) {
        self.useCoreFonts = useCoreFonts;
    }
    
    // Gets useCoreFonts. Gets or sets determines whether or not to substitute TrueType fonts Arial, Times New Roman, Courier New and Symbol with core PDF Type 1 fonts.  
    public func getUseCoreFonts() -> Bool? {
        return self.useCoreFonts;
    }
    
    // Sets zoomBehavior. Gets or sets determines what type of zoom should be applied when a document is opened with a PDF viewer.  
    public func setZoomBehavior(zoomBehavior : String?) {
        self.zoomBehavior = zoomBehavior;
    }
    
    // Gets zoomBehavior. Gets or sets determines what type of zoom should be applied when a document is opened with a PDF viewer.  
    public func getZoomBehavior() -> String? {
        return self.zoomBehavior;
    }
    
    // Sets zoomFactor. Gets or sets determines zoom factor (in percentages) for a document.  
    public func setZoomFactor(zoomFactor : Int?) {
        self.zoomFactor = zoomFactor;
    }
    
    // Gets zoomFactor. Gets or sets determines zoom factor (in percentages) for a document.  
    public func getZoomFactor() -> Int? {
        return self.zoomFactor;
    }
}
