/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="XamlFlowSaveOptionsData.swift">
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

public class XamlFlowSaveOptionsData : SaveOptionsData {
        
    // Gets or sets specifies the physical folder where images are saved when exporting.
    private var imagesFolder : String?;
    // Gets or sets specifies the name of the folder used to construct image URIs.
    private var imagesFolderAlias : String?;
        
    private enum CodingKeys: String, CodingKey {
        case imagesFolder;
        case imagesFolderAlias;
        case invalidCodingKey;
    }
        
    public init() {
        super.init();
    }
    
    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self);
        try super.init(from: try container.superDecoder());
        self.imagesFolder = try container.decodeIfPresent(String.self, forKey: .imagesFolder);
        self.imagesFolderAlias = try container.decodeIfPresent(String.self, forKey: .imagesFolderAlias);
    }

    public override func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.imagesFolder != nil) {
            try container.encode(self.imagesFolder, forKey: .imagesFolder);
        }
        if (self.imagesFolderAlias != nil) {
            try container.encode(self.imagesFolderAlias, forKey: .imagesFolderAlias);
        }
        try super.encode(to: container.superEncoder());
    }
        
    public func setImagesFolder(imagesFolder : String?) {
        self.imagesFolder = imagesFolder;
    }
    
    public func getImagesFolder() -> String? {
        return self.imagesFolder;
    }
    public func setImagesFolderAlias(imagesFolderAlias : String?) {
        self.imagesFolderAlias = imagesFolderAlias;
    }
    
    public func getImagesFolderAlias() -> String? {
        return self.imagesFolderAlias;
    }
}
