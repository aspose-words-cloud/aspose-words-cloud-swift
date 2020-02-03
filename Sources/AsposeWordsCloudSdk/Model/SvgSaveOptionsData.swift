/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="SvgSaveOptionsData.swift">
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

public class SvgSaveOptionsData : FixedPageSaveOptionsData {
        
    // Gets or sets specified whether images should be embedded into SVG document as base64.
    private let exportEmbeddedImages : Bool?;
    // Gets or sets specifies if the output SVG should fill the available viewport area (browser window or container). When set to true width and height of output SVG are set to 100%.
    private let fitToViewPort : Bool?;
    // Gets or sets specifies the physical folder where resources (images) are saved when exporting.
    private let resourcesFolder : String?;
    // Gets or sets specifies the name of the folder used to construct image URIs.
    private let resourcesFolderAlias : String?;
    // Gets or sets show/hide page stepper.
    private let showPageBorder : Bool?;
    // Gets or sets determines how text should be rendered.
    private let textOutputMode : String?;
        
    private enum CodingKeys: String, CodingKey {
        case exportEmbeddedImages;
        case fitToViewPort;
        case resourcesFolder;
        case resourcesFolderAlias;
        case showPageBorder;
        case textOutputMode;
    }
        
    public init(exportEmbeddedImages : Bool? = nil, fitToViewPort : Bool? = nil, resourcesFolder : String? = nil, resourcesFolderAlias : String? = nil, showPageBorder : Bool? = nil, textOutputMode : String? = nil) {
        self.exportEmbeddedImages = exportEmbeddedImages;
        self.fitToViewPort = fitToViewPort;
        self.resourcesFolder = resourcesFolder;
        self.resourcesFolderAlias = resourcesFolderAlias;
        self.showPageBorder = showPageBorder;
        self.textOutputMode = textOutputMode;
    }
    
    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self);
        try super.init(from: try container.superDecoder());
        self.exportEmbeddedImages = try container.decodeIfPresent(Bool.self, forKey: .exportEmbeddedImages);
        self.fitToViewPort = try container.decodeIfPresent(Bool.self, forKey: .fitToViewPort);
        self.resourcesFolder = try container.decodeIfPresent(String.self, forKey: .resourcesFolder);
        self.resourcesFolderAlias = try container.decodeIfPresent(String.self, forKey: .resourcesFolderAlias);
        self.showPageBorder = try container.decodeIfPresent(Bool.self, forKey: .showPageBorder);
        self.textOutputMode = try container.decodeIfPresent(String.self, forKey: .textOutputMode);
    }

    public override func encode(to encoder: Encoder) throws {
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
        try super.encode(to: container.superEncoder());
    }
        
    public func getExportEmbeddedImages() -> Bool? {
        return self.exportEmbeddedImages;
    }
    public func getFitToViewPort() -> Bool? {
        return self.fitToViewPort;
    }
    public func getResourcesFolder() -> String? {
        return self.resourcesFolder;
    }
    public func getResourcesFolderAlias() -> String? {
        return self.resourcesFolderAlias;
    }
    public func getShowPageBorder() -> Bool? {
        return self.showPageBorder;
    }
    public func getTextOutputMode() -> String? {
        return self.textOutputMode;
    }
}
