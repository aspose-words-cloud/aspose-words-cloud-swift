/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="TiffSaveOptionsData.swift">
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

// Container class for tiff save options.
public class TiffSaveOptionsData : ImageSaveOptionsData {
    // Field of thresholdForFloydSteinbergDithering. Container class for tiff save options.
    private var thresholdForFloydSteinbergDithering : Int?;

    // Field of tiffBinarizationMethod. Container class for tiff save options.
    private var tiffBinarizationMethod : String?;

    // Field of tiffCompression. Container class for tiff save options.
    private var tiffCompression : String?;

    private enum CodingKeys: String, CodingKey {
        case thresholdForFloydSteinbergDithering;
        case tiffBinarizationMethod;
        case tiffCompression;
        case invalidCodingKey;
    }

    public override init() {
        super.init();
    }

    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder);
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.thresholdForFloydSteinbergDithering = try container.decodeIfPresent(Int.self, forKey: .thresholdForFloydSteinbergDithering);
        self.tiffBinarizationMethod = try container.decodeIfPresent(String.self, forKey: .tiffBinarizationMethod);
        self.tiffCompression = try container.decodeIfPresent(String.self, forKey: .tiffCompression);
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder);
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.thresholdForFloydSteinbergDithering != nil) {
            try container.encode(self.thresholdForFloydSteinbergDithering, forKey: .thresholdForFloydSteinbergDithering);
        }
        if (self.tiffBinarizationMethod != nil) {
            try container.encode(self.tiffBinarizationMethod, forKey: .tiffBinarizationMethod);
        }
        if (self.tiffCompression != nil) {
            try container.encode(self.tiffCompression, forKey: .tiffCompression);
        }
    }

    // Sets thresholdForFloydSteinbergDithering. Gets or sets the threshold that determines the value of the binarization error in the Floyd-Steinberg method. when ImageBinarizationMethod is ImageBinarizationMethod.FloydSteinbergDithering. Default value is 128.
    public func setThresholdForFloydSteinbergDithering(thresholdForFloydSteinbergDithering : Int?) {
        self.thresholdForFloydSteinbergDithering = thresholdForFloydSteinbergDithering;
    }

    // Gets thresholdForFloydSteinbergDithering. Gets or sets the threshold that determines the value of the binarization error in the Floyd-Steinberg method. when ImageBinarizationMethod is ImageBinarizationMethod.FloydSteinbergDithering. Default value is 128.
    public func getThresholdForFloydSteinbergDithering() -> Int? {
        return self.thresholdForFloydSteinbergDithering;
    }

    // Sets tiffBinarizationMethod. Gets or sets specifies method used while converting images to 1 bpp format.
    public func setTiffBinarizationMethod(tiffBinarizationMethod : String?) {
        self.tiffBinarizationMethod = tiffBinarizationMethod;
    }

    // Gets tiffBinarizationMethod. Gets or sets specifies method used while converting images to 1 bpp format.
    public func getTiffBinarizationMethod() -> String? {
        return self.tiffBinarizationMethod;
    }

    // Sets tiffCompression. Gets or sets type of compression.
    public func setTiffCompression(tiffCompression : String?) {
        self.tiffCompression = tiffCompression;
    }

    // Gets tiffCompression. Gets or sets type of compression.
    public func getTiffCompression() -> String? {
        return self.tiffCompression;
    }
}
