/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="MetafileRenderingOptionsData.swift">
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

public class MetafileRenderingOptionsData : Codable {
        
    // Gets or sets determines how EMF+ Dual metafiles should be rendered.
    private let emfPlusDualRenderingMode : String?;
    // Gets or sets a value determining whether or not the raster operations should be emulated.             
    private let emulateRasterOperations : Bool?;
    // Gets or sets determines how metafile images should be rendered.
    private let renderingMode : String?;
    // Gets or sets determines how WMF metafiles with embedded EMF metafiles should be rendered.
    private let useEmfEmbeddedToWmf : Bool?;
    // Gets or sets a value determining whether or not to scale fonts in WMF metafile according to metafile size on the page. The default value is true.
    private let scaleWmfFontsToMetafileSize : Bool?;
        
    private enum CodingKeys: String, CodingKey {
        case emfPlusDualRenderingMode;
        case emulateRasterOperations;
        case renderingMode;
        case useEmfEmbeddedToWmf;
        case scaleWmfFontsToMetafileSize;
    }
        
    public init(emfPlusDualRenderingMode : String? = nil, emulateRasterOperations : Bool? = nil, renderingMode : String? = nil, useEmfEmbeddedToWmf : Bool? = nil, scaleWmfFontsToMetafileSize : Bool? = nil) {
        self.emfPlusDualRenderingMode = emfPlusDualRenderingMode;
        self.emulateRasterOperations = emulateRasterOperations;
        self.renderingMode = renderingMode;
        self.useEmfEmbeddedToWmf = useEmfEmbeddedToWmf;
        self.scaleWmfFontsToMetafileSize = scaleWmfFontsToMetafileSize;
    }
    
    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self);
        
        self.emfPlusDualRenderingMode = try container.decodeIfPresent(String.self, forKey: .emfPlusDualRenderingMode);
        self.emulateRasterOperations = try container.decodeIfPresent(Bool.self, forKey: .emulateRasterOperations);
        self.renderingMode = try container.decodeIfPresent(String.self, forKey: .renderingMode);
        self.useEmfEmbeddedToWmf = try container.decodeIfPresent(Bool.self, forKey: .useEmfEmbeddedToWmf);
        self.scaleWmfFontsToMetafileSize = try container.decodeIfPresent(Bool.self, forKey: .scaleWmfFontsToMetafileSize);
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.emfPlusDualRenderingMode != nil) {
            try container.encode(self.emfPlusDualRenderingMode, forKey: .emfPlusDualRenderingMode);
        }
        if (self.emulateRasterOperations != nil) {
            try container.encode(self.emulateRasterOperations, forKey: .emulateRasterOperations);
        }
        if (self.renderingMode != nil) {
            try container.encode(self.renderingMode, forKey: .renderingMode);
        }
        if (self.useEmfEmbeddedToWmf != nil) {
            try container.encode(self.useEmfEmbeddedToWmf, forKey: .useEmfEmbeddedToWmf);
        }
        if (self.scaleWmfFontsToMetafileSize != nil) {
            try container.encode(self.scaleWmfFontsToMetafileSize, forKey: .scaleWmfFontsToMetafileSize);
        }
        
    }
        
    public func getEmfPlusDualRenderingMode() -> String? {
        return self.emfPlusDualRenderingMode;
    }
    public func getEmulateRasterOperations() -> Bool? {
        return self.emulateRasterOperations;
    }
    public func getRenderingMode() -> String? {
        return self.renderingMode;
    }
    public func getUseEmfEmbeddedToWmf() -> Bool? {
        return self.useEmfEmbeddedToWmf;
    }
    public func getScaleWmfFontsToMetafileSize() -> Bool? {
        return self.scaleWmfFontsToMetafileSize;
    }
}
