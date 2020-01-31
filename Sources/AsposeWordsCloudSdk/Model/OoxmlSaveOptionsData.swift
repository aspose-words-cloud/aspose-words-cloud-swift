/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="OoxmlSaveOptionsData.swift">
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

public class OoxmlSaveOptionsData : SaveOptionsData {
        
    // Gets or sets specifies the OOXML version for the output document.
    private let compliance : String?;
    // Gets or sets specifies a password to encrypt document using ECMA376 Standard encryption algorithm.
    private let password : String?;
    // Gets or sets specifies whether or not use pretty formats output.
    private let prettyFormat : Bool?;
        
    public init(compliance : String? = nil, password : String? = nil, prettyFormat : Bool? = nil) {
        self.compliance = compliance;
        self.password = password;
        self.prettyFormat = prettyFormat;
    }
        
    public func getOoxmlSaveOptionsData() -> String? {
        return self.compliance;
    }
    public func getOoxmlSaveOptionsData() -> String? {
        return self.password;
    }
    public func getOoxmlSaveOptionsData() -> Bool? {
        return self.prettyFormat;
    }
}
