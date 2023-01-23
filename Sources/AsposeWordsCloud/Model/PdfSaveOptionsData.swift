/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="PdfSaveOptionsData.swift">
 *   Copyright (c) 2023 Aspose.Words for Cloud
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

// Container class for pdf save options.
@available(macOS 10.12, iOS 10.3, watchOS 3.3, tvOS 12.0, *)
public class PdfSaveOptionsData : FixedPageSaveOptionsData {
    // Gets or sets the PDF standards compliance level for output documents.
    public enum Compliance : String, Codable
    {
        // Enum value "pdf17"
        case pdf17 = "Pdf17"

        // Enum value "pdf20"
        case pdf20 = "Pdf20"

        // Enum value "pdfA1a"
        case pdfA1a = "PdfA1a"

        // Enum value "pdfA1b"
        case pdfA1b = "PdfA1b"

        // Enum value "pdfA2a"
        case pdfA2a = "PdfA2a"

        // Enum value "pdfA2u"
        case pdfA2u = "PdfA2u"

        // Enum value "pdfA4"
        case pdfA4 = "PdfA4"

        // Enum value "pdfUa1"
        case pdfUa1 = "PdfUa1"
    }

    // Gets or sets the option that controls the way CustomDocumentProperties are exported to PDF file.
    // The default value is None.
    public enum CustomPropertiesExport : String, Codable
    {
        // Enum value "_none"
        case _none = "None"

        // Enum value "standard"
        case standard = "Standard"

        // Enum value "metadata"
        case metadata = "Metadata"
    }

    // Gets or sets the font embedding mode.
    public enum FontEmbeddingMode : String, Codable
    {
        // Enum value "embedAll"
        case embedAll = "EmbedAll"

        // Enum value "embedNonstandard"
        case embedNonstandard = "EmbedNonstandard"

        // Enum value "embedNone"
        case embedNone = "EmbedNone"
    }

    // Gets or sets the option that controls how bookmarks in headers/footers are exported.
    // The default value is Aspose.Words.Saving.HeaderFooterBookmarksExportMode.All.
    public enum HeaderFooterBookmarksExportMode : String, Codable
    {
        // Enum value "_none"
        case _none = "None"

        // Enum value "first"
        case first = "First"

        // Enum value "all"
        case all = "All"
    }

    // Gets or sets the option that controls how the color space will be selected for the images in PDF document.
    public enum ImageColorSpaceExportMode : String, Codable
    {
        // Enum value "auto"
        case auto = "Auto"

        // Enum value "simpleCmyk"
        case simpleCmyk = "SimpleCmyk"
    }

    // Gets or sets the option that controls how the PDF document should be displayed when opened in the PDF reader.
    public enum PageMode : String, Codable
    {
        // Enum value "useNone"
        case useNone = "UseNone"

        // Enum value "useOutlines"
        case useOutlines = "UseOutlines"

        // Enum value "useThumbs"
        case useThumbs = "UseThumbs"

        // Enum value "fullScreen"
        case fullScreen = "FullScreen"

        // Enum value "useOC"
        case useOC = "UseOC"

        // Enum value "useAttachments"
        case useAttachments = "UseAttachments"
    }

    // Gets or sets the compression type to be used for all textual content in the document.
    public enum TextCompression : String, Codable
    {
        // Enum value "_none"
        case _none = "None"

        // Enum value "flate"
        case flate = "Flate"
    }

    // Gets or sets the option that controls what type of zoom should be applied when a document is opened with a PDF viewer.
    public enum ZoomBehavior : String, Codable
    {
        // Enum value "_none"
        case _none = "None"

        // Enum value "zoomFactor"
        case zoomFactor = "ZoomFactor"

        // Enum value "fitPage"
        case fitPage = "FitPage"

        // Enum value "fitWidth"
        case fitWidth = "FitWidth"

        // Enum value "fitHeight"
        case fitHeight = "FitHeight"

        // Enum value "fitBox"
        case fitBox = "FitBox"
    }

    // Field of cacheBackgroundGraphics. Container class for pdf save options.
    private var _cacheBackgroundGraphics : Bool? = nil;

    public var cacheBackgroundGraphics : Bool? {
        get {
            return self._cacheBackgroundGraphics;
        }
        set {
            self._cacheBackgroundGraphics = newValue;
        }
    }

    // Field of compliance. Container class for pdf save options.
    private var _compliance : Compliance? = nil;

    public var compliance : Compliance? {
        get {
            return self._compliance;
        }
        set {
            self._compliance = newValue;
        }
    }

    // Field of createNoteHyperlinks. Container class for pdf save options.
    private var _createNoteHyperlinks : Bool? = nil;

    public var createNoteHyperlinks : Bool? {
        get {
            return self._createNoteHyperlinks;
        }
        set {
            self._createNoteHyperlinks = newValue;
        }
    }

    // Field of customPropertiesExport. Container class for pdf save options.
    private var _customPropertiesExport : CustomPropertiesExport? = nil;

    public var customPropertiesExport : CustomPropertiesExport? {
        get {
            return self._customPropertiesExport;
        }
        set {
            self._customPropertiesExport = newValue;
        }
    }

    // Field of digitalSignatureDetails. Container class for pdf save options.
    private var _digitalSignatureDetails : PdfDigitalSignatureDetailsData? = nil;

    public var digitalSignatureDetails : PdfDigitalSignatureDetailsData? {
        get {
            return self._digitalSignatureDetails;
        }
        set {
            self._digitalSignatureDetails = newValue;
        }
    }

    // Field of displayDocTitle. Container class for pdf save options.
    private var _displayDocTitle : Bool? = nil;

    public var displayDocTitle : Bool? {
        get {
            return self._displayDocTitle;
        }
        set {
            self._displayDocTitle = newValue;
        }
    }

    // Field of downsampleOptions. Container class for pdf save options.
    private var _downsampleOptions : DownsampleOptionsData? = nil;

    public var downsampleOptions : DownsampleOptionsData? {
        get {
            return self._downsampleOptions;
        }
        set {
            self._downsampleOptions = newValue;
        }
    }

    // Field of embedAttachments. Container class for pdf save options.
    private var _embedAttachments : Bool? = nil;

    public var embedAttachments : Bool? {
        get {
            return self._embedAttachments;
        }
        set {
            self._embedAttachments = newValue;
        }
    }

    // Field of embedFullFonts. Container class for pdf save options.
    private var _embedFullFonts : Bool? = nil;

    public var embedFullFonts : Bool? {
        get {
            return self._embedFullFonts;
        }
        set {
            self._embedFullFonts = newValue;
        }
    }

    // Field of encryptionDetails. Container class for pdf save options.
    private var _encryptionDetails : PdfEncryptionDetailsData? = nil;

    public var encryptionDetails : PdfEncryptionDetailsData? {
        get {
            return self._encryptionDetails;
        }
        set {
            self._encryptionDetails = newValue;
        }
    }

    // Field of exportDocumentStructure. Container class for pdf save options.
    private var _exportDocumentStructure : Bool? = nil;

    public var exportDocumentStructure : Bool? {
        get {
            return self._exportDocumentStructure;
        }
        set {
            self._exportDocumentStructure = newValue;
        }
    }

    // Field of exportLanguageToSpanTag. Container class for pdf save options.
    private var _exportLanguageToSpanTag : Bool? = nil;

    public var exportLanguageToSpanTag : Bool? {
        get {
            return self._exportLanguageToSpanTag;
        }
        set {
            self._exportLanguageToSpanTag = newValue;
        }
    }

    // Field of fontEmbeddingMode. Container class for pdf save options.
    private var _fontEmbeddingMode : FontEmbeddingMode? = nil;

    public var fontEmbeddingMode : FontEmbeddingMode? {
        get {
            return self._fontEmbeddingMode;
        }
        set {
            self._fontEmbeddingMode = newValue;
        }
    }

    // Field of headerFooterBookmarksExportMode. Container class for pdf save options.
    private var _headerFooterBookmarksExportMode : HeaderFooterBookmarksExportMode? = nil;

    public var headerFooterBookmarksExportMode : HeaderFooterBookmarksExportMode? {
        get {
            return self._headerFooterBookmarksExportMode;
        }
        set {
            self._headerFooterBookmarksExportMode = newValue;
        }
    }

    // Field of imageColorSpaceExportMode. Container class for pdf save options.
    private var _imageColorSpaceExportMode : ImageColorSpaceExportMode? = nil;

    public var imageColorSpaceExportMode : ImageColorSpaceExportMode? {
        get {
            return self._imageColorSpaceExportMode;
        }
        set {
            self._imageColorSpaceExportMode = newValue;
        }
    }

    // Field of imageCompression. Container class for pdf save options.
    private var _imageCompression : String? = nil;

    public var imageCompression : String? {
        get {
            return self._imageCompression;
        }
        set {
            self._imageCompression = newValue;
        }
    }

    // Field of interpolateImages. Container class for pdf save options.
    private var _interpolateImages : Bool? = nil;

    public var interpolateImages : Bool? {
        get {
            return self._interpolateImages;
        }
        set {
            self._interpolateImages = newValue;
        }
    }

    // Field of openHyperlinksInNewWindow. Container class for pdf save options.
    private var _openHyperlinksInNewWindow : Bool? = nil;

    public var openHyperlinksInNewWindow : Bool? {
        get {
            return self._openHyperlinksInNewWindow;
        }
        set {
            self._openHyperlinksInNewWindow = newValue;
        }
    }

    // Field of outlineOptions. Container class for pdf save options.
    private var _outlineOptions : OutlineOptionsData? = nil;

    public var outlineOptions : OutlineOptionsData? {
        get {
            return self._outlineOptions;
        }
        set {
            self._outlineOptions = newValue;
        }
    }

    // Field of pageMode. Container class for pdf save options.
    private var _pageMode : PageMode? = nil;

    public var pageMode : PageMode? {
        get {
            return self._pageMode;
        }
        set {
            self._pageMode = newValue;
        }
    }

    // Field of preblendImages. Container class for pdf save options.
    private var _preblendImages : Bool? = nil;

    public var preblendImages : Bool? {
        get {
            return self._preblendImages;
        }
        set {
            self._preblendImages = newValue;
        }
    }

    // Field of preserveFormFields. Container class for pdf save options.
    private var _preserveFormFields : Bool? = nil;

    public var preserveFormFields : Bool? {
        get {
            return self._preserveFormFields;
        }
        set {
            self._preserveFormFields = newValue;
        }
    }

    // Field of saveFormat. Container class for pdf save options.
    private final let _saveFormat : String? = "pdf";

    override public var saveFormat : String? {
        get {
            return self._saveFormat;
        }
    }

    // Field of textCompression. Container class for pdf save options.
    private var _textCompression : TextCompression? = nil;

    public var textCompression : TextCompression? {
        get {
            return self._textCompression;
        }
        set {
            self._textCompression = newValue;
        }
    }

    // Field of useBookFoldPrintingSettings. Container class for pdf save options.
    private var _useBookFoldPrintingSettings : Bool? = nil;

    public var useBookFoldPrintingSettings : Bool? {
        get {
            return self._useBookFoldPrintingSettings;
        }
        set {
            self._useBookFoldPrintingSettings = newValue;
        }
    }

    // Field of useCoreFonts. Container class for pdf save options.
    private var _useCoreFonts : Bool? = nil;

    public var useCoreFonts : Bool? {
        get {
            return self._useCoreFonts;
        }
        set {
            self._useCoreFonts = newValue;
        }
    }

    // Field of zoomBehavior. Container class for pdf save options.
    private var _zoomBehavior : ZoomBehavior? = nil;

    public var zoomBehavior : ZoomBehavior? {
        get {
            return self._zoomBehavior;
        }
        set {
            self._zoomBehavior = newValue;
        }
    }

    // Field of zoomFactor. Container class for pdf save options.
    private var _zoomFactor : Int? = nil;

    public var zoomFactor : Int? {
        get {
            return self._zoomFactor;
        }
        set {
            self._zoomFactor = newValue;
        }
    }

    private enum CodingKeys: String, CodingKey {
        case cacheBackgroundGraphics = "CacheBackgroundGraphics";
        case compliance = "Compliance";
        case createNoteHyperlinks = "CreateNoteHyperlinks";
        case customPropertiesExport = "CustomPropertiesExport";
        case digitalSignatureDetails = "DigitalSignatureDetails";
        case displayDocTitle = "DisplayDocTitle";
        case downsampleOptions = "DownsampleOptions";
        case embedAttachments = "EmbedAttachments";
        case embedFullFonts = "EmbedFullFonts";
        case encryptionDetails = "EncryptionDetails";
        case exportDocumentStructure = "ExportDocumentStructure";
        case exportLanguageToSpanTag = "ExportLanguageToSpanTag";
        case fontEmbeddingMode = "FontEmbeddingMode";
        case headerFooterBookmarksExportMode = "HeaderFooterBookmarksExportMode";
        case imageColorSpaceExportMode = "ImageColorSpaceExportMode";
        case imageCompression = "ImageCompression";
        case interpolateImages = "InterpolateImages";
        case openHyperlinksInNewWindow = "OpenHyperlinksInNewWindow";
        case outlineOptions = "OutlineOptions";
        case pageMode = "PageMode";
        case preblendImages = "PreblendImages";
        case preserveFormFields = "PreserveFormFields";
        case textCompression = "TextCompression";
        case useBookFoldPrintingSettings = "UseBookFoldPrintingSettings";
        case useCoreFonts = "UseCoreFonts";
        case zoomBehavior = "ZoomBehavior";
        case zoomFactor = "ZoomFactor";
        case invalidCodingKey;
    }

    public override init() {
        super.init();
    }

    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder);
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.cacheBackgroundGraphics = try container.decodeIfPresent(Bool.self, forKey: .cacheBackgroundGraphics);
        self.compliance = try container.decodeIfPresent(Compliance.self, forKey: .compliance);
        self.createNoteHyperlinks = try container.decodeIfPresent(Bool.self, forKey: .createNoteHyperlinks);
        self.customPropertiesExport = try container.decodeIfPresent(CustomPropertiesExport.self, forKey: .customPropertiesExport);
        self.digitalSignatureDetails = try container.decodeIfPresent(PdfDigitalSignatureDetailsData.self, forKey: .digitalSignatureDetails);
        self.displayDocTitle = try container.decodeIfPresent(Bool.self, forKey: .displayDocTitle);
        self.downsampleOptions = try container.decodeIfPresent(DownsampleOptionsData.self, forKey: .downsampleOptions);
        self.embedAttachments = try container.decodeIfPresent(Bool.self, forKey: .embedAttachments);
        self.embedFullFonts = try container.decodeIfPresent(Bool.self, forKey: .embedFullFonts);
        self.encryptionDetails = try container.decodeIfPresent(PdfEncryptionDetailsData.self, forKey: .encryptionDetails);
        self.exportDocumentStructure = try container.decodeIfPresent(Bool.self, forKey: .exportDocumentStructure);
        self.exportLanguageToSpanTag = try container.decodeIfPresent(Bool.self, forKey: .exportLanguageToSpanTag);
        self.fontEmbeddingMode = try container.decodeIfPresent(FontEmbeddingMode.self, forKey: .fontEmbeddingMode);
        self.headerFooterBookmarksExportMode = try container.decodeIfPresent(HeaderFooterBookmarksExportMode.self, forKey: .headerFooterBookmarksExportMode);
        self.imageColorSpaceExportMode = try container.decodeIfPresent(ImageColorSpaceExportMode.self, forKey: .imageColorSpaceExportMode);
        self.imageCompression = try container.decodeIfPresent(String.self, forKey: .imageCompression);
        self.interpolateImages = try container.decodeIfPresent(Bool.self, forKey: .interpolateImages);
        self.openHyperlinksInNewWindow = try container.decodeIfPresent(Bool.self, forKey: .openHyperlinksInNewWindow);
        self.outlineOptions = try container.decodeIfPresent(OutlineOptionsData.self, forKey: .outlineOptions);
        self.pageMode = try container.decodeIfPresent(PageMode.self, forKey: .pageMode);
        self.preblendImages = try container.decodeIfPresent(Bool.self, forKey: .preblendImages);
        self.preserveFormFields = try container.decodeIfPresent(Bool.self, forKey: .preserveFormFields);
        self.textCompression = try container.decodeIfPresent(TextCompression.self, forKey: .textCompression);
        self.useBookFoldPrintingSettings = try container.decodeIfPresent(Bool.self, forKey: .useBookFoldPrintingSettings);
        self.useCoreFonts = try container.decodeIfPresent(Bool.self, forKey: .useCoreFonts);
        self.zoomBehavior = try container.decodeIfPresent(ZoomBehavior.self, forKey: .zoomBehavior);
        self.zoomFactor = try container.decodeIfPresent(Int.self, forKey: .zoomFactor);
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder);
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.cacheBackgroundGraphics != nil) {
            try container.encode(self.cacheBackgroundGraphics, forKey: .cacheBackgroundGraphics);
        }
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
        if (self.embedAttachments != nil) {
            try container.encode(self.embedAttachments, forKey: .embedAttachments);
        }
        if (self.embedFullFonts != nil) {
            try container.encode(self.embedFullFonts, forKey: .embedFullFonts);
        }
        if (self.encryptionDetails != nil) {
            try container.encode(self.encryptionDetails, forKey: .encryptionDetails);
        }
        if (self.exportDocumentStructure != nil) {
            try container.encode(self.exportDocumentStructure, forKey: .exportDocumentStructure);
        }
        if (self.exportLanguageToSpanTag != nil) {
            try container.encode(self.exportLanguageToSpanTag, forKey: .exportLanguageToSpanTag);
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
        if (self.interpolateImages != nil) {
            try container.encode(self.interpolateImages, forKey: .interpolateImages);
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

    public override func collectFilesContent(_ resultFilesContent : inout [FileReference]) {
    }

    // Sets cacheBackgroundGraphics. Gets or sets a value determining whether or not to cache graphics placed in document's background.
    public func setCacheBackgroundGraphics(cacheBackgroundGraphics : Bool?) -> PdfSaveOptionsData {
        self.cacheBackgroundGraphics = cacheBackgroundGraphics;
        return self;
    }

    // Gets cacheBackgroundGraphics. Gets or sets a value determining whether or not to cache graphics placed in document's background.
    public func getCacheBackgroundGraphics() -> Bool? {
        return self.cacheBackgroundGraphics;
    }


    // Sets compliance. Gets or sets the PDF standards compliance level for output documents.
    public func setCompliance(compliance : Compliance?) -> PdfSaveOptionsData {
        self.compliance = compliance;
        return self;
    }

    // Gets compliance. Gets or sets the PDF standards compliance level for output documents.
    public func getCompliance() -> Compliance? {
        return self.compliance;
    }


    // Sets createNoteHyperlinks. Gets or sets a value indicating whether to convert footnote/endnote references in main text story into active hyperlinks. When clicked the hyperlink will lead to the corresponding footnote/endnote. The default value is false.
    public func setCreateNoteHyperlinks(createNoteHyperlinks : Bool?) -> PdfSaveOptionsData {
        self.createNoteHyperlinks = createNoteHyperlinks;
        return self;
    }

    // Gets createNoteHyperlinks. Gets or sets a value indicating whether to convert footnote/endnote references in main text story into active hyperlinks. When clicked the hyperlink will lead to the corresponding footnote/endnote. The default value is false.
    public func getCreateNoteHyperlinks() -> Bool? {
        return self.createNoteHyperlinks;
    }


    // Sets customPropertiesExport. Gets or sets the option that controls the way CustomDocumentProperties are exported to PDF file. The default value is None.
    public func setCustomPropertiesExport(customPropertiesExport : CustomPropertiesExport?) -> PdfSaveOptionsData {
        self.customPropertiesExport = customPropertiesExport;
        return self;
    }

    // Gets customPropertiesExport. Gets or sets the option that controls the way CustomDocumentProperties are exported to PDF file. The default value is None.
    public func getCustomPropertiesExport() -> CustomPropertiesExport? {
        return self.customPropertiesExport;
    }


    // Sets digitalSignatureDetails. Gets or sets the details for signing the output PDF document.
    public func setDigitalSignatureDetails(digitalSignatureDetails : PdfDigitalSignatureDetailsData?) -> PdfSaveOptionsData {
        self.digitalSignatureDetails = digitalSignatureDetails;
        return self;
    }

    // Gets digitalSignatureDetails. Gets or sets the details for signing the output PDF document.
    public func getDigitalSignatureDetails() -> PdfDigitalSignatureDetailsData? {
        return self.digitalSignatureDetails;
    }


    // Sets displayDocTitle. Gets or sets a value indicating whether the window’s title bar should display the document title taken from the Title entry of the document information dictionary.
    public func setDisplayDocTitle(displayDocTitle : Bool?) -> PdfSaveOptionsData {
        self.displayDocTitle = displayDocTitle;
        return self;
    }

    // Gets displayDocTitle. Gets or sets a value indicating whether the window’s title bar should display the document title taken from the Title entry of the document information dictionary.
    public func getDisplayDocTitle() -> Bool? {
        return self.displayDocTitle;
    }


    // Sets downsampleOptions. Gets or sets the downsample options.
    public func setDownsampleOptions(downsampleOptions : DownsampleOptionsData?) -> PdfSaveOptionsData {
        self.downsampleOptions = downsampleOptions;
        return self;
    }

    // Gets downsampleOptions. Gets or sets the downsample options.
    public func getDownsampleOptions() -> DownsampleOptionsData? {
        return self.downsampleOptions;
    }


    // Sets embedAttachments. Gets or sets a value determining whether or not to embed attachments to the PDF document.
    public func setEmbedAttachments(embedAttachments : Bool?) -> PdfSaveOptionsData {
        self.embedAttachments = embedAttachments;
        return self;
    }

    // Gets embedAttachments. Gets or sets a value determining whether or not to embed attachments to the PDF document.
    public func getEmbedAttachments() -> Bool? {
        return self.embedAttachments;
    }


    // Sets embedFullFonts. Gets or sets a value indicating whether fonts are embedded into the resulting PDF documents.
    public func setEmbedFullFonts(embedFullFonts : Bool?) -> PdfSaveOptionsData {
        self.embedFullFonts = embedFullFonts;
        return self;
    }

    // Gets embedFullFonts. Gets or sets a value indicating whether fonts are embedded into the resulting PDF documents.
    public func getEmbedFullFonts() -> Bool? {
        return self.embedFullFonts;
    }


    // Sets encryptionDetails. Gets or sets the details for encrypting the output PDF document.
    public func setEncryptionDetails(encryptionDetails : PdfEncryptionDetailsData?) -> PdfSaveOptionsData {
        self.encryptionDetails = encryptionDetails;
        return self;
    }

    // Gets encryptionDetails. Gets or sets the details for encrypting the output PDF document.
    public func getEncryptionDetails() -> PdfEncryptionDetailsData? {
        return self.encryptionDetails;
    }


    // Sets exportDocumentStructure. Gets or sets a value indicating whether to export document structure.
    public func setExportDocumentStructure(exportDocumentStructure : Bool?) -> PdfSaveOptionsData {
        self.exportDocumentStructure = exportDocumentStructure;
        return self;
    }

    // Gets exportDocumentStructure. Gets or sets a value indicating whether to export document structure.
    public func getExportDocumentStructure() -> Bool? {
        return self.exportDocumentStructure;
    }


    // Sets exportLanguageToSpanTag. Gets or sets a value determining whether or not to create a "Span" tag in the document structure to export the text language.
    public func setExportLanguageToSpanTag(exportLanguageToSpanTag : Bool?) -> PdfSaveOptionsData {
        self.exportLanguageToSpanTag = exportLanguageToSpanTag;
        return self;
    }

    // Gets exportLanguageToSpanTag. Gets or sets a value determining whether or not to create a "Span" tag in the document structure to export the text language.
    public func getExportLanguageToSpanTag() -> Bool? {
        return self.exportLanguageToSpanTag;
    }


    // Sets fontEmbeddingMode. Gets or sets the font embedding mode.
    public func setFontEmbeddingMode(fontEmbeddingMode : FontEmbeddingMode?) -> PdfSaveOptionsData {
        self.fontEmbeddingMode = fontEmbeddingMode;
        return self;
    }

    // Gets fontEmbeddingMode. Gets or sets the font embedding mode.
    public func getFontEmbeddingMode() -> FontEmbeddingMode? {
        return self.fontEmbeddingMode;
    }


    // Sets headerFooterBookmarksExportMode. Gets or sets the option that controls how bookmarks in headers/footers are exported. The default value is Aspose.Words.Saving.HeaderFooterBookmarksExportMode.All.
    public func setHeaderFooterBookmarksExportMode(headerFooterBookmarksExportMode : HeaderFooterBookmarksExportMode?) -> PdfSaveOptionsData {
        self.headerFooterBookmarksExportMode = headerFooterBookmarksExportMode;
        return self;
    }

    // Gets headerFooterBookmarksExportMode. Gets or sets the option that controls how bookmarks in headers/footers are exported. The default value is Aspose.Words.Saving.HeaderFooterBookmarksExportMode.All.
    public func getHeaderFooterBookmarksExportMode() -> HeaderFooterBookmarksExportMode? {
        return self.headerFooterBookmarksExportMode;
    }


    // Sets imageColorSpaceExportMode. Gets or sets the option that controls how the color space will be selected for the images in PDF document.
    public func setImageColorSpaceExportMode(imageColorSpaceExportMode : ImageColorSpaceExportMode?) -> PdfSaveOptionsData {
        self.imageColorSpaceExportMode = imageColorSpaceExportMode;
        return self;
    }

    // Gets imageColorSpaceExportMode. Gets or sets the option that controls how the color space will be selected for the images in PDF document.
    public func getImageColorSpaceExportMode() -> ImageColorSpaceExportMode? {
        return self.imageColorSpaceExportMode;
    }


    // Sets imageCompression. Gets or sets the compression type to be used for all images in the document.
    public func setImageCompression(imageCompression : String?) -> PdfSaveOptionsData {
        self.imageCompression = imageCompression;
        return self;
    }

    // Gets imageCompression. Gets or sets the compression type to be used for all images in the document.
    public func getImageCompression() -> String? {
        return self.imageCompression;
    }


    // Sets interpolateImages. Gets or sets a value indicating whether image interpolation shall be performed by a conforming reader. When false is specified, the flag is not written to the output document and the default behavior of reader is used instead.
    public func setInterpolateImages(interpolateImages : Bool?) -> PdfSaveOptionsData {
        self.interpolateImages = interpolateImages;
        return self;
    }

    // Gets interpolateImages. Gets or sets a value indicating whether image interpolation shall be performed by a conforming reader. When false is specified, the flag is not written to the output document and the default behavior of reader is used instead.
    public func getInterpolateImages() -> Bool? {
        return self.interpolateImages;
    }


    // Sets openHyperlinksInNewWindow. Gets or sets a value indicating whether hyperlinks in the output Pdf document are forced to be opened in a new window (or tab) of a browser.
    public func setOpenHyperlinksInNewWindow(openHyperlinksInNewWindow : Bool?) -> PdfSaveOptionsData {
        self.openHyperlinksInNewWindow = openHyperlinksInNewWindow;
        return self;
    }

    // Gets openHyperlinksInNewWindow. Gets or sets a value indicating whether hyperlinks in the output Pdf document are forced to be opened in a new window (or tab) of a browser.
    public func getOpenHyperlinksInNewWindow() -> Bool? {
        return self.openHyperlinksInNewWindow;
    }


    // Sets outlineOptions. Gets or sets the outline options.
    public func setOutlineOptions(outlineOptions : OutlineOptionsData?) -> PdfSaveOptionsData {
        self.outlineOptions = outlineOptions;
        return self;
    }

    // Gets outlineOptions. Gets or sets the outline options.
    public func getOutlineOptions() -> OutlineOptionsData? {
        return self.outlineOptions;
    }


    // Sets pageMode. Gets or sets the option that controls how the PDF document should be displayed when opened in the PDF reader.
    public func setPageMode(pageMode : PageMode?) -> PdfSaveOptionsData {
        self.pageMode = pageMode;
        return self;
    }

    // Gets pageMode. Gets or sets the option that controls how the PDF document should be displayed when opened in the PDF reader.
    public func getPageMode() -> PageMode? {
        return self.pageMode;
    }


    // Sets preblendImages. Gets or sets a value indicating whether to preblend transparent images with black background color.
    public func setPreblendImages(preblendImages : Bool?) -> PdfSaveOptionsData {
        self.preblendImages = preblendImages;
        return self;
    }

    // Gets preblendImages. Gets or sets a value indicating whether to preblend transparent images with black background color.
    public func getPreblendImages() -> Bool? {
        return self.preblendImages;
    }


    // Sets preserveFormFields. Gets or sets a value indicating whether to preserve Microsoft Word form fields as form fields in PDF or convert them to text.
    public func setPreserveFormFields(preserveFormFields : Bool?) -> PdfSaveOptionsData {
        self.preserveFormFields = preserveFormFields;
        return self;
    }

    // Gets preserveFormFields. Gets or sets a value indicating whether to preserve Microsoft Word form fields as form fields in PDF or convert them to text.
    public func getPreserveFormFields() -> Bool? {
        return self.preserveFormFields;
    }


    // Sets textCompression. Gets or sets the compression type to be used for all textual content in the document.
    public func setTextCompression(textCompression : TextCompression?) -> PdfSaveOptionsData {
        self.textCompression = textCompression;
        return self;
    }

    // Gets textCompression. Gets or sets the compression type to be used for all textual content in the document.
    public func getTextCompression() -> TextCompression? {
        return self.textCompression;
    }


    // Sets useBookFoldPrintingSettings. Gets or sets a value indicating whether the document should be saved using a booklet printing layout.
    public func setUseBookFoldPrintingSettings(useBookFoldPrintingSettings : Bool?) -> PdfSaveOptionsData {
        self.useBookFoldPrintingSettings = useBookFoldPrintingSettings;
        return self;
    }

    // Gets useBookFoldPrintingSettings. Gets or sets a value indicating whether the document should be saved using a booklet printing layout.
    public func getUseBookFoldPrintingSettings() -> Bool? {
        return self.useBookFoldPrintingSettings;
    }


    // Sets useCoreFonts. Gets or sets a value indicating whether to substitute TrueType fonts Arial, Times New Roman, Courier New and Symbol with core PDF Type 1 fonts.
    public func setUseCoreFonts(useCoreFonts : Bool?) -> PdfSaveOptionsData {
        self.useCoreFonts = useCoreFonts;
        return self;
    }

    // Gets useCoreFonts. Gets or sets a value indicating whether to substitute TrueType fonts Arial, Times New Roman, Courier New and Symbol with core PDF Type 1 fonts.
    public func getUseCoreFonts() -> Bool? {
        return self.useCoreFonts;
    }


    // Sets zoomBehavior. Gets or sets the option that controls what type of zoom should be applied when a document is opened with a PDF viewer.
    public func setZoomBehavior(zoomBehavior : ZoomBehavior?) -> PdfSaveOptionsData {
        self.zoomBehavior = zoomBehavior;
        return self;
    }

    // Gets zoomBehavior. Gets or sets the option that controls what type of zoom should be applied when a document is opened with a PDF viewer.
    public func getZoomBehavior() -> ZoomBehavior? {
        return self.zoomBehavior;
    }


    // Sets zoomFactor. Gets or sets the zoom factor (in percentages) for a document.
    public func setZoomFactor(zoomFactor : Int?) -> PdfSaveOptionsData {
        self.zoomFactor = zoomFactor;
        return self;
    }

    // Gets zoomFactor. Gets or sets the zoom factor (in percentages) for a document.
    public func getZoomFactor() -> Int? {
        return self.zoomFactor;
    }
}
