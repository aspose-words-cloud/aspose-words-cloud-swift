/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="XamlFlowSaveOptionsData.swift">
 *   Copyright (c) 2022 Aspose.Words for Cloud
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

// Container class for xaml flow save options.
@available(macOS 10.12, iOS 10.3, watchOS 3.3, tvOS 12.0, *)
public class XamlFlowSaveOptionsData : SaveOptionsData {
    // Field of imagesFolder. Container class for xaml flow save options.
    private var _imagesFolder : String? = nil;

    public var imagesFolder : String? {
        get {
            return self._imagesFolder;
        }
        set {
            self._imagesFolder = newValue;
        }
    }

    // Field of imagesFolderAlias. Container class for xaml flow save options.
    private var _imagesFolderAlias : String? = nil;

    public var imagesFolderAlias : String? {
        get {
            return self._imagesFolderAlias;
        }
        set {
            self._imagesFolderAlias = newValue;
        }
    }

    // Field of saveFormat. Container class for xaml flow save options.
    private final let _saveFormat : String? = "xamlflow";

    override public var saveFormat : String? {
        get {
            return self._saveFormat;
        }
    }

    private enum CodingKeys: String, CodingKey {
        case imagesFolder = "ImagesFolder";
        case imagesFolderAlias = "ImagesFolderAlias";
        case invalidCodingKey;
    }

    public override init() {
        super.init();
    }

    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder);
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.imagesFolder = try container.decodeIfPresent(String.self, forKey: .imagesFolder);
        self.imagesFolderAlias = try container.decodeIfPresent(String.self, forKey: .imagesFolderAlias);
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder);
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.imagesFolder != nil) {
            try container.encode(self.imagesFolder, forKey: .imagesFolder);
        }
        if (self.imagesFolderAlias != nil) {
            try container.encode(self.imagesFolderAlias, forKey: .imagesFolderAlias);
        }
    }

    public override func collectFilesContent(resultFilesContent : [FileContent]) {
        super.collectFilesContent(resultFilesContent: resultFilesContent);
    }

    // Sets imagesFolder. Gets or sets the physical folder where images are saved when exporting.
    public func setImagesFolder(imagesFolder : String?) -> XamlFlowSaveOptionsData {
        self.imagesFolder = imagesFolder;
        return self;
    }

    // Gets imagesFolder. Gets or sets the physical folder where images are saved when exporting.
    public func getImagesFolder() -> String? {
        return self.imagesFolder;
    }


    // Sets imagesFolderAlias. Gets or sets the name of the folder used to construct image URIs.
    public func setImagesFolderAlias(imagesFolderAlias : String?) -> XamlFlowSaveOptionsData {
        self.imagesFolderAlias = imagesFolderAlias;
        return self;
    }

    // Gets imagesFolderAlias. Gets or sets the name of the folder used to construct image URIs.
    public func getImagesFolderAlias() -> String? {
        return self.imagesFolderAlias;
    }
}
