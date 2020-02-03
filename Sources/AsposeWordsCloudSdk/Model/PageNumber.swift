/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="PageNumber.swift">
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

public class PageNumber : Decodable {
        
    // Gets or sets page number format, e.g. \&quot;{PAGE} of {NUMPAGES}\&quot;.
    private let format : String?;
    // Gets or sets text alignment, possible values are left, right, center or justify.
    private let alignment : String?;
    // Gets or sets a value indicating whether if true the page number is added at the top of the page, else at the bottom.
    private let isTop : Bool;
    // Gets or sets a value indicating whether if true the page number is added on first page too.
    private let setPageNumberOnFirstPage : Bool;
        
    public init(format : String? = nil, alignment : String? = nil, isTop : Bool, setPageNumberOnFirstPage : Bool) {
        self.format = format;
        self.alignment = alignment;
        self.isTop = isTop;
        self.setPageNumberOnFirstPage = setPageNumberOnFirstPage;
    }
        
    public func getFormat() -> String? {
        return self.format;
    }
    public func getAlignment() -> String? {
        return self.alignment;
    }
    public func getIsTop() -> Bool {
        return self.isTop;
    }
    public func getSetPageNumberOnFirstPage() -> Bool {
        return self.setPageNumberOnFirstPage;
    }
}
