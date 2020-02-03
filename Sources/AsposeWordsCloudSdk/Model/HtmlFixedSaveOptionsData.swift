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

public class HtmlFixedSaveOptionsData : FixedPageSaveOptionsData {
        
    // Gets or sets specifies prefix which is added to all class names in style.css file. Default value is \&quot;aw\&quot;.
    private let cssClassNamesPrefix : String?;
    // Gets or sets encoding.
    private let encoding : String?;
    // Gets or sets specifies whether the CSS (Cascading Style Sheet) should be embedded into Html document.
    private let exportEmbeddedCss : Bool?;
    // Gets or sets specifies whether fonts should be embedded into Html document in Base64 format.
    private let exportEmbeddedFonts : Bool?;
    // Gets or sets specifies whether images should be embedded into Html document in Base64 format.
    private let exportEmbeddedImages : Bool?;
    // Gets or sets indication of whether form fields are exported as interactive items (as &#39;input&#39; tag) rather than converted to text or graphics.
    private let exportFormFields : Bool?;
    // Gets or sets specifies export format of fonts.
    private let fontFormat : String?;
    // Gets or sets specifies the horizontal alignment of pages in an HTML document. Default value is HtmlFixedHorizontalPageAlignment.Center.
    private let pageHorizontalAlignment : String?;
    // Gets or sets specifies the margins around pages in an HTML document. The margins value is measured in points and should be equal to or greater than 0. Default value is 10 points.
    private let pageMargins : Double?;
    // Gets or sets specifies the physical folder where resources are saved when exporting a document.
    private let resourcesFolder : String?;
    // Gets or sets specifies the name of the folder used to construct resource URIs.
    private let resourcesFolderAlias : String?;
    // Gets or sets flag indicates whether \&quot;@font-face\&quot; CSS rules should be placed into a separate file \&quot;fontFaces.css\&quot; when a document is being saved with external stylesheet (that is, when Aspose.Words.Saving.HtmlFixedSaveOptions.ExportEmbeddedCss is false). Default value is false, all CSS rules are written into single file \&quot;styles.css\&quot;.
    private let saveFontFaceCssSeparately : Bool?;
    // Gets or sets specifies whether border around pages should be shown.
    private let showPageBorder : Bool?;
        
    public init(cssClassNamesPrefix : String? = nil, encoding : String? = nil, exportEmbeddedCss : Bool? = nil, exportEmbeddedFonts : Bool? = nil, exportEmbeddedImages : Bool? = nil, exportFormFields : Bool? = nil, fontFormat : String? = nil, pageHorizontalAlignment : String? = nil, pageMargins : Double? = nil, resourcesFolder : String? = nil, resourcesFolderAlias : String? = nil, saveFontFaceCssSeparately : Bool? = nil, showPageBorder : Bool? = nil) {
        self.cssClassNamesPrefix = cssClassNamesPrefix;
        self.encoding = encoding;
        self.exportEmbeddedCss = exportEmbeddedCss;
        self.exportEmbeddedFonts = exportEmbeddedFonts;
        self.exportEmbeddedImages = exportEmbeddedImages;
        self.exportFormFields = exportFormFields;
        self.fontFormat = fontFormat;
        self.pageHorizontalAlignment = pageHorizontalAlignment;
        self.pageMargins = pageMargins;
        self.resourcesFolder = resourcesFolder;
        self.resourcesFolderAlias = resourcesFolderAlias;
        self.saveFontFaceCssSeparately = saveFontFaceCssSeparately;
        self.showPageBorder = showPageBorder;
    }
        
    public func getCssClassNamesPrefix() -> String? {
        return self.cssClassNamesPrefix;
    }
    public func getEncoding() -> String? {
        return self.encoding;
    }
    public func getExportEmbeddedCss() -> Bool? {
        return self.exportEmbeddedCss;
    }
    public func getExportEmbeddedFonts() -> Bool? {
        return self.exportEmbeddedFonts;
    }
    public func getExportEmbeddedImages() -> Bool? {
        return self.exportEmbeddedImages;
    }
    public func getExportFormFields() -> Bool? {
        return self.exportFormFields;
    }
    public func getFontFormat() -> String? {
        return self.fontFormat;
    }
    public func getPageHorizontalAlignment() -> String? {
        return self.pageHorizontalAlignment;
    }
    public func getPageMargins() -> Double? {
        return self.pageMargins;
    }
    public func getResourcesFolder() -> String? {
        return self.resourcesFolder;
    }
    public func getResourcesFolderAlias() -> String? {
        return self.resourcesFolderAlias;
    }
    public func getSaveFontFaceCssSeparately() -> Bool? {
        return self.saveFontFaceCssSeparately;
    }
    public func getShowPageBorder() -> Bool? {
        return self.showPageBorder;
    }
}
