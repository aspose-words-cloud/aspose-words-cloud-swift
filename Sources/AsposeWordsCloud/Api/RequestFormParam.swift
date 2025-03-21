/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="RequestFormParam.swift">
 *   Copyright (c) 2025 Aspose.Words for Cloud
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

// Represent struct for using as form param in request
public struct RequestFormParam {
    private let name : String?;
    private let filename : String?;
    private let body : Data;
    private let contentType : String;

    public init(name : String?, body : Data, contentType : String) {
        self.name = name;
        self.filename = nil;
        self.body = body;
        self.contentType = contentType;
    }

    public init(name : String?, filename : String?, body : Data, contentType : String) {
        self.name = name;
        self.filename = filename;
        self.body = body;
        self.contentType = contentType;
    }

    public func getName() -> String? {
        return self.name;
    }

    public func getFilename() -> String? {
        return self.filename;
    }

    public func getBody() -> Data {
        return self.body;
    }

    public func getContentType() -> String {
        return self.contentType;
    }
}
