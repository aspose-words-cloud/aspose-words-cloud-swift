/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="SvgSaveOptionsData.swift">
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

// Container class for svg save options.
public class SvgSaveOptionsData : FixedPageSaveOptionsData {
    // Field of exportEmbeddedImages. Container class for svg save options.
    public var exportEmbeddedImages : Bool?;

    // Field of fitToViewPort. Container class for svg save options.
    public var fitToViewPort : Bool?;

    // Field of resourcesFolder. Container class for svg save options.
    public var resourcesFolder : String?;

    // Field of resourcesFolderAlias. Container class for svg save options.
    public var resourcesFolderAlias : String?;

    // Field of showPageBorder. Container class for svg save options.
    public var showPageBorder : Bool?;

    // Field of textOutputMode. Container class for svg save options.
    public var textOutputMode : String?;

    private enum CodingKeys: String, CodingKey {
        case exportEmbeddedImages = "ExportEmbeddedImages";
        case fitToViewPort = "FitToViewPort";
        case resourcesFolder = "ResourcesFolder";
        case resourcesFolderAlias = "ResourcesFolderAlias";
        case showPageBorder = "ShowPageBorder";
        case textOutputMode = "TextOutputMode";
        case invalidCodingKey;
    }

    public override init() {
        super.init();
    }

    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder);
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.exportEmbeddedImages = try container.decodeIfPresent(Bool.self, forKey: .exportEmbeddedImages);
        self.fitToViewPort = try container.decodeIfPresent(Bool.self, forKey: .fitToViewPort);
        self.resourcesFolder = try container.decodeIfPresent(String.self, forKey: .resourcesFolder);
        self.resourcesFolderAlias = try container.decodeIfPresent(String.self, forKey: .resourcesFolderAlias);
        self.showPageBorder = try container.decodeIfPresent(Bool.self, forKey: .showPageBorder);
        self.textOutputMode = try container.decodeIfPresent(String.self, forKey: .textOutputMode);
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder);
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.exportEmbeddedImages != nil) {
            try container.encode(self.exportEmbeddedImages, forKey: .exportEmbeddedImages);
        }
        if (self.fitToViewPort != nil) {
            try container.encode(self.fitToViewPort, forKey: .fitToViewPort);
        }
        if (self.resourcesFolder != nil) {
            try container.encode(self.resourcesFolder, forKey: .resourcesFolder);
        }
        if (self.resourcesFolderAlias != nil) {
            try container.encode(self.resourcesFolderAlias, forKey: .resourcesFolderAlias);
        }
        if (self.showPageBorder != nil) {
            try container.encode(self.showPageBorder, forKey: .showPageBorder);
        }
        if (self.textOutputMode != nil) {
            try container.encode(self.textOutputMode, forKey: .textOutputMode);
        }
    }

    // Sets exportEmbeddedImages. Gets or sets a value indicating whether images should be embedded into SVG document as base64.
    public func setExportEmbeddedImages(exportEmbeddedImages : Bool?) -> SvgSaveOptionsData {
        self.exportEmbeddedImages = exportEmbeddedImages;
        return self;
    }

    // Gets exportEmbeddedImages. Gets or sets a value indicating whether images should be embedded into SVG document as base64.
    public func getExportEmbeddedImages() -> Bool? {
        return self.exportEmbeddedImages;
    }

    // Sets fitToViewPort. Gets or sets a value indicating whether the output SVG should fill the available viewport area (browser window or container). When set to true width and height of output SVG are set to 100%.
    public func setFitToViewPort(fitToViewPort : Bool?) -> SvgSaveOptionsData {
        self.fitToViewPort = fitToViewPort;
        return self;
    }

    // Gets fitToViewPort. Gets or sets a value indicating whether the output SVG should fill the available viewport area (browser window or container). When set to true width and height of output SVG are set to 100%.
    public func getFitToViewPort() -> Bool? {
        return self.fitToViewPort;
    }

    // Sets resourcesFolder. Gets or sets the physical folder where resources (images) are saved when exporting.
    public func setResourcesFolder(resourcesFolder : String?) -> SvgSaveOptionsData {
        self.resourcesFolder = resourcesFolder;
        return self;
    }

    // Gets resourcesFolder. Gets or sets the physical folder where resources (images) are saved when exporting.
    public func getResourcesFolder() -> String? {
        return self.resourcesFolder;
    }

    // Sets resourcesFolderAlias. Gets or sets the name of the folder used to construct image URIs.
    public func setResourcesFolderAlias(resourcesFolderAlias : String?) -> SvgSaveOptionsData {
        self.resourcesFolderAlias = resourcesFolderAlias;
        return self;
    }

    // Gets resourcesFolderAlias. Gets or sets the name of the folder used to construct image URIs.
    public func getResourcesFolderAlias() -> String? {
        return self.resourcesFolderAlias;
    }

    // Sets showPageBorder. Gets or sets a value indicating whether to show or hide page stepper.
    public func setShowPageBorder(showPageBorder : Bool?) -> SvgSaveOptionsData {
        self.showPageBorder = showPageBorder;
        return self;
    }

    // Gets showPageBorder. Gets or sets a value indicating whether to show or hide page stepper.
    public func getShowPageBorder() -> Bool? {
        return self.showPageBorder;
    }

    // Sets textOutputMode. Gets or sets the option that controls how text should be rendered.
    public func setTextOutputMode(textOutputMode : String?) -> SvgSaveOptionsData {
        self.textOutputMode = textOutputMode;
        return self;
    }

    // Gets textOutputMode. Gets or sets the option that controls how text should be rendered.
    public func getTextOutputMode() -> String? {
        return self.textOutputMode;
    }
}
