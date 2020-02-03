/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="DocSaveOptionsData.swift">
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

public class DocSaveOptionsData : SaveOptionsData {
        
    // Gets or sets When false, small metafiles are not compressed for performance reason. Default value is true, all metafiles are compressed regardless of its size.
    private let alwaysCompressMetafiles : Bool?;
    // Gets or sets password.
    private let password : String?;
    // Gets or sets When false, PictureBullet data is not saved to output document. Default value is true.
    private let savePictureBullet : Bool?;
    // Gets or sets determine whether or not save RoutingSlip data saved to output document.
    private let saveRoutingSlip : Bool?;
        
    private enum CodingKeys: String, CodingKey {
        case alwaysCompressMetafiles;
        case password;
        case savePictureBullet;
        case saveRoutingSlip;
    }
        
    public init(alwaysCompressMetafiles : Bool? = nil, password : String? = nil, savePictureBullet : Bool? = nil, saveRoutingSlip : Bool? = nil) {
        self.alwaysCompressMetafiles = alwaysCompressMetafiles;
        self.password = password;
        self.savePictureBullet = savePictureBullet;
        self.saveRoutingSlip = saveRoutingSlip;
    }
    
    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self);
        try super.init(from: try container.superDecoder());
        self.alwaysCompressMetafiles = try container.decodeIfPresent(Bool.self, forKey: .alwaysCompressMetafiles);
        self.password = try container.decodeIfPresent(String.self, forKey: .password);
        self.savePictureBullet = try container.decodeIfPresent(Bool.self, forKey: .savePictureBullet);
        self.saveRoutingSlip = try container.decodeIfPresent(Bool.self, forKey: .saveRoutingSlip);
    }

    public override func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.alwaysCompressMetafiles != nil) {
            try container.encode(self.alwaysCompressMetafiles, forKey: .alwaysCompressMetafiles);
        }
        if (self.password != nil) {
            try container.encode(self.password, forKey: .password);
        }
        if (self.savePictureBullet != nil) {
            try container.encode(self.savePictureBullet, forKey: .savePictureBullet);
        }
        if (self.saveRoutingSlip != nil) {
            try container.encode(self.saveRoutingSlip, forKey: .saveRoutingSlip);
        }
        try super.encode(to: container.superEncoder());
    }
        
    public func getAlwaysCompressMetafiles() -> Bool? {
        return self.alwaysCompressMetafiles;
    }
    public func getPassword() -> String? {
        return self.password;
    }
    public func getSavePictureBullet() -> Bool? {
        return self.savePictureBullet;
    }
    public func getSaveRoutingSlip() -> Bool? {
        return self.saveRoutingSlip;
    }
}