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
