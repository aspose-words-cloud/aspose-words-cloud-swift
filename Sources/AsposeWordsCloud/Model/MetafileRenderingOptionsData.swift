/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="MetafileRenderingOptionsData.swift">
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

// Container class for options of metafile rendering.
public class MetafileRenderingOptionsData : Codable, WordsApiModel {
    // Field of emfPlusDualRenderingMode. Container class for options of metafile rendering.
    private var emfPlusDualRenderingMode : String?;

    // Field of emulateRasterOperations. Container class for options of metafile rendering.
    private var emulateRasterOperations : Bool?;

    // Field of renderingMode. Container class for options of metafile rendering.
    private var renderingMode : String?;

    // Field of scaleWmfFontsToMetafileSize. Container class for options of metafile rendering.
    private var scaleWmfFontsToMetafileSize : Bool?;

    // Field of useEmfEmbeddedToWmf. Container class for options of metafile rendering.
    private var useEmfEmbeddedToWmf : Bool?;

    private enum CodingKeys: String, CodingKey {
        case emfPlusDualRenderingMode = "EmfPlusDualRenderingMode";
        case emulateRasterOperations = "EmulateRasterOperations";
        case renderingMode = "RenderingMode";
        case scaleWmfFontsToMetafileSize = "ScaleWmfFontsToMetafileSize";
        case useEmfEmbeddedToWmf = "UseEmfEmbeddedToWmf";
        case invalidCodingKey;
    }

    public init() {
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.emfPlusDualRenderingMode = try container.decodeIfPresent(String.self, forKey: .emfPlusDualRenderingMode);
        self.emulateRasterOperations = try container.decodeIfPresent(Bool.self, forKey: .emulateRasterOperations);
        self.renderingMode = try container.decodeIfPresent(String.self, forKey: .renderingMode);
        self.scaleWmfFontsToMetafileSize = try container.decodeIfPresent(Bool.self, forKey: .scaleWmfFontsToMetafileSize);
        self.useEmfEmbeddedToWmf = try container.decodeIfPresent(Bool.self, forKey: .useEmfEmbeddedToWmf);
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
        if (self.scaleWmfFontsToMetafileSize != nil) {
            try container.encode(self.scaleWmfFontsToMetafileSize, forKey: .scaleWmfFontsToMetafileSize);
        }
        if (self.useEmfEmbeddedToWmf != nil) {
            try container.encode(self.useEmfEmbeddedToWmf, forKey: .useEmfEmbeddedToWmf);
        }
    }

    // Sets emfPlusDualRenderingMode. Gets or sets the option that controls how EMF+ Dual metafiles should be rendered.
    public func setEmfPlusDualRenderingMode(emfPlusDualRenderingMode : String?) {
        self.emfPlusDualRenderingMode = emfPlusDualRenderingMode;
    }

    // Gets emfPlusDualRenderingMode. Gets or sets the option that controls how EMF+ Dual metafiles should be rendered.
    public func getEmfPlusDualRenderingMode() -> String? {
        return self.emfPlusDualRenderingMode;
    }

    // Sets emulateRasterOperations. Gets or sets a value indicating whether the raster operations should be emulated.
    public func setEmulateRasterOperations(emulateRasterOperations : Bool?) {
        self.emulateRasterOperations = emulateRasterOperations;
    }

    // Gets emulateRasterOperations. Gets or sets a value indicating whether the raster operations should be emulated.
    public func getEmulateRasterOperations() -> Bool? {
        return self.emulateRasterOperations;
    }

    // Sets renderingMode. Gets or sets the option that controls how metafile images should be rendered.
    public func setRenderingMode(renderingMode : String?) {
        self.renderingMode = renderingMode;
    }

    // Gets renderingMode. Gets or sets the option that controls how metafile images should be rendered.
    public func getRenderingMode() -> String? {
        return self.renderingMode;
    }

    // Sets scaleWmfFontsToMetafileSize. Gets or sets a value indicating whether to scale fonts in WMF metafile according to metafile size on the page. The default value is true.
    public func setScaleWmfFontsToMetafileSize(scaleWmfFontsToMetafileSize : Bool?) {
        self.scaleWmfFontsToMetafileSize = scaleWmfFontsToMetafileSize;
    }

    // Gets scaleWmfFontsToMetafileSize. Gets or sets a value indicating whether to scale fonts in WMF metafile according to metafile size on the page. The default value is true.
    public func getScaleWmfFontsToMetafileSize() -> Bool? {
        return self.scaleWmfFontsToMetafileSize;
    }

    // Sets useEmfEmbeddedToWmf. Gets or sets the flag, that controls how WMF metafiles with embedded EMF metafiles should be rendered.
    public func setUseEmfEmbeddedToWmf(useEmfEmbeddedToWmf : Bool?) {
        self.useEmfEmbeddedToWmf = useEmfEmbeddedToWmf;
    }

    // Gets useEmfEmbeddedToWmf. Gets or sets the flag, that controls how WMF metafiles with embedded EMF metafiles should be rendered.
    public func getUseEmfEmbeddedToWmf() -> Bool? {
        return self.useEmfEmbeddedToWmf;
    }
}
