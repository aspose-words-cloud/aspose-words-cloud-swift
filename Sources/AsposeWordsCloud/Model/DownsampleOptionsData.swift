/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="DownsampleOptionsData.swift">
 *   Copyright (c) 2020 Aspose.Words for Cloud
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

// Container class for Downsample options.
public class DownsampleOptionsData : Codable, WordsApiModel {
    // Field of downsampleImages. Container class for Downsample options.
    private var downsampleImages : Bool?;

    // Field of resolution. Container class for Downsample options.
    private var resolution : Int?;

    // Field of resolutionThreshold. Container class for Downsample options.
    private var resolutionThreshold : Int?;

    private enum CodingKeys: String, CodingKey {
        case downsampleImages;
        case resolution;
        case resolutionThreshold;
        case invalidCodingKey;
    }

    public init() {
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.downsampleImages = try container.decodeIfPresent(Bool.self, forKey: .downsampleImages);
        self.resolution = try container.decodeIfPresent(Int.self, forKey: .resolution);
        self.resolutionThreshold = try container.decodeIfPresent(Int.self, forKey: .resolutionThreshold);
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.downsampleImages != nil) {
            try container.encode(self.downsampleImages, forKey: .downsampleImages);
        }
        if (self.resolution != nil) {
            try container.encode(self.resolution, forKey: .resolution);
        }
        if (self.resolutionThreshold != nil) {
            try container.encode(self.resolutionThreshold, forKey: .resolutionThreshold);
        }
    }

    // Sets downsampleImages. Gets or sets specifies whether images should be downsampled.
    public func setDownsampleImages(downsampleImages : Bool?) {
        self.downsampleImages = downsampleImages;
    }

    // Gets downsampleImages. Gets or sets specifies whether images should be downsampled.
    public func getDownsampleImages() -> Bool? {
        return self.downsampleImages;
    }

    // Sets resolution. Gets or sets specifies the resolution in pixels per inch which the images should be downsampled to.
    public func setResolution(resolution : Int?) {
        self.resolution = resolution;
    }

    // Gets resolution. Gets or sets specifies the resolution in pixels per inch which the images should be downsampled to.
    public func getResolution() -> Int? {
        return self.resolution;
    }

    // Sets resolutionThreshold. Gets or sets specifies the threshold resolution in pixels per inch. If resolution of an image in the document is less than threshold value, the downsampling algorithm will not be applied. A value of 0 means the threshold check is not used and all images that can be reduced in size are downsampled.
    public func setResolutionThreshold(resolutionThreshold : Int?) {
        self.resolutionThreshold = resolutionThreshold;
    }

    // Gets resolutionThreshold. Gets or sets specifies the threshold resolution in pixels per inch. If resolution of an image in the document is less than threshold value, the downsampling algorithm will not be applied. A value of 0 means the threshold check is not used and all images that can be reduced in size are downsampled.
    public func getResolutionThreshold() -> Int? {
        return self.resolutionThreshold;
    }
}
