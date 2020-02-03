/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="XamlFixedSaveOptionsData.swift">
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

public class XamlFixedSaveOptionsData : FixedPageSaveOptionsData {
        
    // Gets or sets specifies the physical folder where resources (images and fonts) are saved when exporting a document to fixed page Xaml format. Default is null.
    private let resourcesFolder : String?;
    // Gets or sets specifies the name of the folder used to construct image URIs written into an fixed page Xaml document. Default is null.
    private let resourcesFolderAlias : String?;
        
    private enum CodingKeys: String, CodingKey {
        case resourcesFolder;
        case resourcesFolderAlias;
    }
        
    public init(resourcesFolder : String? = nil, resourcesFolderAlias : String? = nil) {
        self.resourcesFolder = resourcesFolder;
        self.resourcesFolderAlias = resourcesFolderAlias;
    }
    
    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self);
        try super.init(from: try container.superDecoder());
        self.resourcesFolder = try container.decodeIfPresent(String.self, forKey: .resourcesFolder);
        self.resourcesFolderAlias = try container.decodeIfPresent(String.self, forKey: .resourcesFolderAlias);
    }

    public override func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.resourcesFolder != nil) {
            try container.encode(self.resourcesFolder, forKey: .resourcesFolder);
        }
        if (self.resourcesFolderAlias != nil) {
            try container.encode(self.resourcesFolderAlias, forKey: .resourcesFolderAlias);
        }
        try super.encode(to: container.superEncoder());
    }
        
    public func getResourcesFolder() -> String? {
        return self.resourcesFolder;
    }
    public func getResourcesFolderAlias() -> String? {
        return self.resourcesFolderAlias;
    }
}
