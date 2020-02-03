/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="FixedPageSaveOptionsData.swift">
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

public class FixedPageSaveOptionsData : SaveOptionsData {
        
    // Gets or sets a value determining how colors are rendered. { Normal | Grayscale}.
    private let colorMode : String?;
    // Gets or sets determines the quality of the JPEG images inside PDF document.
    private let jpegQuality : Int?;
    // Gets or sets allows to specify metafile rendering options.
    private let metafileRenderingOptions : MetafileRenderingOptionsData?;
    // Gets or sets indicates the symbol set that is used to represent numbers while rendering to fixed page formats.
    private let numeralFormat : String?;
    // Gets or sets flag indicates whether it is required to optimize output of XPS. If this flag is set redundant nested canvases and empty canvases are removed, also neighbor glyphs with the same formatting are concatenated. Note: The accuracy of the content display may be affected if this property is set to true.  Default is false.
    private let optimizeOutput : Bool?;
    // Gets or sets determines number of pages to render.
    private let pageCount : Int?;
    // Gets or sets determines 0-based index of the first page to render.
    private let pageIndex : Int?;
        
    private enum CodingKeys: String, CodingKey { case colorMode, jpegQuality, metafileRenderingOptions, numeralFormat, optimizeOutput, pageCount, pageIndex }
        
    public init(colorMode : String? = nil, jpegQuality : Int? = nil, metafileRenderingOptions : MetafileRenderingOptionsData? = nil, numeralFormat : String? = nil, optimizeOutput : Bool? = nil, pageCount : Int? = nil, pageIndex : Int? = nil) {
        self.colorMode = colorMode;
        self.jpegQuality = jpegQuality;
        self.metafileRenderingOptions = metafileRenderingOptions;
        self.numeralFormat = numeralFormat;
        self.optimizeOutput = optimizeOutput;
        self.pageCount = pageCount;
        self.pageIndex = pageIndex;
    }
    
    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self);
        try super.init(from: try container.superDecoder());
        if let colorMode = try container.decodeIfPresent(String.self, forKey: .colorMode) {
            self.colorMode = colorMode;
        }
        if let jpegQuality = try container.decodeIfPresent(Int.self, forKey: .jpegQuality) {
            self.jpegQuality = jpegQuality;
        }
        if let metafileRenderingOptions = try container.decodeIfPresent(MetafileRenderingOptionsData.self, forKey: .metafileRenderingOptions) {
            self.metafileRenderingOptions = metafileRenderingOptions;
        }
        if let numeralFormat = try container.decodeIfPresent(String.self, forKey: .numeralFormat) {
            self.numeralFormat = numeralFormat;
        }
        if let optimizeOutput = try container.decodeIfPresent(Bool.self, forKey: .optimizeOutput) {
            self.optimizeOutput = optimizeOutput;
        }
        if let pageCount = try container.decodeIfPresent(Int.self, forKey: .pageCount) {
            self.pageCount = pageCount;
        }
        if let pageIndex = try container.decodeIfPresent(Int.self, forKey: .pageIndex) {
            self.pageIndex = pageIndex;
        }

    }

    public override func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.colorMode != nil) {
            try container.encode(self.colorMode, forKey: .colorMode);
        }
        if (self.jpegQuality != nil) {
            try container.encode(self.jpegQuality, forKey: .jpegQuality);
        }
        if (self.metafileRenderingOptions != nil) {
            try container.encode(self.metafileRenderingOptions, forKey: .metafileRenderingOptions);
        }
        if (self.numeralFormat != nil) {
            try container.encode(self.numeralFormat, forKey: .numeralFormat);
        }
        if (self.optimizeOutput != nil) {
            try container.encode(self.optimizeOutput, forKey: .optimizeOutput);
        }
        if (self.pageCount != nil) {
            try container.encode(self.pageCount, forKey: .pageCount);
        }
        if (self.pageIndex != nil) {
            try container.encode(self.pageIndex, forKey: .pageIndex);
        }
        
        try super.encode(to: container.superEncoder());
    }
        
    public func getColorMode() -> String? {
        return self.colorMode;
    }
    public func getJpegQuality() -> Int? {
        return self.jpegQuality;
    }
    public func getMetafileRenderingOptions() -> MetafileRenderingOptionsData? {
        return self.metafileRenderingOptions;
    }
    public func getNumeralFormat() -> String? {
        return self.numeralFormat;
    }
    public func getOptimizeOutput() -> Bool? {
        return self.optimizeOutput;
    }
    public func getPageCount() -> Int? {
        return self.pageCount;
    }
    public func getPageIndex() -> Int? {
        return self.pageIndex;
    }
}
