/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="HtmlFixedSaveOptionsData.swift">
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

public class HtmlFixedSaveOptionsData : FixedPageSaveOptionsData, WordsApiModel {
        
    // Gets or sets specifies prefix which is added to all class names in style.css file. Default value is \&quot;aw\&quot;.
    private var cssClassNamesPrefix : String?;
    // Gets or sets encoding.
    private var encoding : String?;
    // Gets or sets specifies whether the CSS (Cascading Style Sheet) should be embedded into Html document.
    private var exportEmbeddedCss : Bool?;
    // Gets or sets specifies whether fonts should be embedded into Html document in Base64 format.
    private var exportEmbeddedFonts : Bool?;
    // Gets or sets specifies whether images should be embedded into Html document in Base64 format.
    private var exportEmbeddedImages : Bool?;
    // Gets or sets indication of whether form fields are exported as interactive items (as &#39;input&#39; tag) rather than converted to text or graphics.
    private var exportFormFields : Bool?;
    // Gets or sets specifies export format of fonts.
    private var fontFormat : String?;
    // Gets or sets specifies the horizontal alignment of pages in an HTML document. Default value is HtmlFixedHorizontalPageAlignment.Center.
    private var pageHorizontalAlignment : String?;
    // Gets or sets specifies the margins around pages in an HTML document. The margins value is measured in points and should be equal to or greater than 0. Default value is 10 points.
    private var pageMargins : Double?;
    // Gets or sets specifies the physical folder where resources are saved when exporting a document.
    private var resourcesFolder : String?;
    // Gets or sets specifies the name of the folder used to construct resource URIs.
    private var resourcesFolderAlias : String?;
    // Gets or sets flag indicates whether \&quot;@font-face\&quot; CSS rules should be placed into a separate file \&quot;fontFaces.css\&quot; when a document is being saved with external stylesheet (that is, when Aspose.Words.Saving.HtmlFixedSaveOptions.ExportEmbeddedCss is false). Default value is false, all CSS rules are written into single file \&quot;styles.css\&quot;.
    private var saveFontFaceCssSeparately : Bool?;
    // Gets or sets specifies whether border around pages should be shown.
    private var showPageBorder : Bool?;
        
    private enum CodingKeys: String, CodingKey {
        case cssClassNamesPrefix;
        case encoding;
        case exportEmbeddedCss;
        case exportEmbeddedFonts;
        case exportEmbeddedImages;
        case exportFormFields;
        case fontFormat;
        case pageHorizontalAlignment;
        case pageMargins;
        case resourcesFolder;
        case resourcesFolderAlias;
        case saveFontFaceCssSeparately;
        case showPageBorder;
        case invalidCodingKey;
    }
        
    public override init() {
        super.init();
    }
    
    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder);
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.cssClassNamesPrefix = try container.decodeIfPresent(String.self, forKey: .cssClassNamesPrefix);
        self.encoding = try container.decodeIfPresent(String.self, forKey: .encoding);
        self.exportEmbeddedCss = try container.decodeIfPresent(Bool.self, forKey: .exportEmbeddedCss);
        self.exportEmbeddedFonts = try container.decodeIfPresent(Bool.self, forKey: .exportEmbeddedFonts);
        self.exportEmbeddedImages = try container.decodeIfPresent(Bool.self, forKey: .exportEmbeddedImages);
        self.exportFormFields = try container.decodeIfPresent(Bool.self, forKey: .exportFormFields);
        self.fontFormat = try container.decodeIfPresent(String.self, forKey: .fontFormat);
        self.pageHorizontalAlignment = try container.decodeIfPresent(String.self, forKey: .pageHorizontalAlignment);
        self.pageMargins = try container.decodeIfPresent(Double.self, forKey: .pageMargins);
        self.resourcesFolder = try container.decodeIfPresent(String.self, forKey: .resourcesFolder);
        self.resourcesFolderAlias = try container.decodeIfPresent(String.self, forKey: .resourcesFolderAlias);
        self.saveFontFaceCssSeparately = try container.decodeIfPresent(Bool.self, forKey: .saveFontFaceCssSeparately);
        self.showPageBorder = try container.decodeIfPresent(Bool.self, forKey: .showPageBorder);
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder);
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.cssClassNamesPrefix != nil) {
            try container.encode(self.cssClassNamesPrefix, forKey: .cssClassNamesPrefix);
        }
        if (self.encoding != nil) {
            try container.encode(self.encoding, forKey: .encoding);
        }
        if (self.exportEmbeddedCss != nil) {
            try container.encode(self.exportEmbeddedCss, forKey: .exportEmbeddedCss);
        }
        if (self.exportEmbeddedFonts != nil) {
            try container.encode(self.exportEmbeddedFonts, forKey: .exportEmbeddedFonts);
        }
        if (self.exportEmbeddedImages != nil) {
            try container.encode(self.exportEmbeddedImages, forKey: .exportEmbeddedImages);
        }
        if (self.exportFormFields != nil) {
            try container.encode(self.exportFormFields, forKey: .exportFormFields);
        }
        if (self.fontFormat != nil) {
            try container.encode(self.fontFormat, forKey: .fontFormat);
        }
        if (self.pageHorizontalAlignment != nil) {
            try container.encode(self.pageHorizontalAlignment, forKey: .pageHorizontalAlignment);
        }
        if (self.pageMargins != nil) {
            try container.encode(self.pageMargins, forKey: .pageMargins);
        }
        if (self.resourcesFolder != nil) {
            try container.encode(self.resourcesFolder, forKey: .resourcesFolder);
        }
        if (self.resourcesFolderAlias != nil) {
            try container.encode(self.resourcesFolderAlias, forKey: .resourcesFolderAlias);
        }
        if (self.saveFontFaceCssSeparately != nil) {
            try container.encode(self.saveFontFaceCssSeparately, forKey: .saveFontFaceCssSeparately);
        }
        if (self.showPageBorder != nil) {
            try container.encode(self.showPageBorder, forKey: .showPageBorder);
        }
    }
        
    public func setCssClassNamesPrefix(cssClassNamesPrefix : String?) {
        self.cssClassNamesPrefix = cssClassNamesPrefix;
    }
    
    public func getCssClassNamesPrefix() -> String? {
        return self.cssClassNamesPrefix;
    }
    public func setEncoding(encoding : String?) {
        self.encoding = encoding;
    }
    
    public func getEncoding() -> String? {
        return self.encoding;
    }
    public func setExportEmbeddedCss(exportEmbeddedCss : Bool?) {
        self.exportEmbeddedCss = exportEmbeddedCss;
    }
    
    public func getExportEmbeddedCss() -> Bool? {
        return self.exportEmbeddedCss;
    }
    public func setExportEmbeddedFonts(exportEmbeddedFonts : Bool?) {
        self.exportEmbeddedFonts = exportEmbeddedFonts;
    }
    
    public func getExportEmbeddedFonts() -> Bool? {
        return self.exportEmbeddedFonts;
    }
    public func setExportEmbeddedImages(exportEmbeddedImages : Bool?) {
        self.exportEmbeddedImages = exportEmbeddedImages;
    }
    
    public func getExportEmbeddedImages() -> Bool? {
        return self.exportEmbeddedImages;
    }
    public func setExportFormFields(exportFormFields : Bool?) {
        self.exportFormFields = exportFormFields;
    }
    
    public func getExportFormFields() -> Bool? {
        return self.exportFormFields;
    }
    public func setFontFormat(fontFormat : String?) {
        self.fontFormat = fontFormat;
    }
    
    public func getFontFormat() -> String? {
        return self.fontFormat;
    }
    public func setPageHorizontalAlignment(pageHorizontalAlignment : String?) {
        self.pageHorizontalAlignment = pageHorizontalAlignment;
    }
    
    public func getPageHorizontalAlignment() -> String? {
        return self.pageHorizontalAlignment;
    }
    public func setPageMargins(pageMargins : Double?) {
        self.pageMargins = pageMargins;
    }
    
    public func getPageMargins() -> Double? {
        return self.pageMargins;
    }
    public func setResourcesFolder(resourcesFolder : String?) {
        self.resourcesFolder = resourcesFolder;
    }
    
    public func getResourcesFolder() -> String? {
        return self.resourcesFolder;
    }
    public func setResourcesFolderAlias(resourcesFolderAlias : String?) {
        self.resourcesFolderAlias = resourcesFolderAlias;
    }
    
    public func getResourcesFolderAlias() -> String? {
        return self.resourcesFolderAlias;
    }
    public func setSaveFontFaceCssSeparately(saveFontFaceCssSeparately : Bool?) {
        self.saveFontFaceCssSeparately = saveFontFaceCssSeparately;
    }
    
    public func getSaveFontFaceCssSeparately() -> Bool? {
        return self.saveFontFaceCssSeparately;
    }
    public func setShowPageBorder(showPageBorder : Bool?) {
        self.showPageBorder = showPageBorder;
    }
    
    public func getShowPageBorder() -> Bool? {
        return self.showPageBorder;
    }
}
