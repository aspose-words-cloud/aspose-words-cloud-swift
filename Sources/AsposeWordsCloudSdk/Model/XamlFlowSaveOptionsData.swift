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
    private let imagesFolder : String?;
    // Gets or sets specifies the name of the folder used to construct image URIs.
    private let imagesFolderAlias : String?;
        
    public init(imagesFolder : String? = nil, imagesFolderAlias : String? = nil) {
        self.imagesFolder = imagesFolder;
        self.imagesFolderAlias = imagesFolderAlias;
    }
        
    public func getXamlFlowSaveOptionsData() -> String? {
        return self.imagesFolder;
    }
    public func getXamlFlowSaveOptionsData() -> String? {
        return self.imagesFolderAlias;
    }
}
