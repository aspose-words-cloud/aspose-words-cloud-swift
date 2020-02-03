/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="FilesUploadResult.swift">
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

public class FilesUploadResult : Codable {
        
    // List of uploaded file names
    private let uploaded : [String]?;
    // List of errors.
    private let errors : [ModelError]?;
        
    private enum CodingKeys: String, CodingKey { case uploaded, errors }
        
    public init(uploaded : [String]? = nil, errors : [ModelError]? = nil) {
        self.uploaded = uploaded;
        self.errors = errors;
    }
    
    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self);
        
        if let uploaded = try container.decodeIfPresent([String].self, forKey: .uploaded) {
            self.uploaded = uploaded;
        }
        if let errors = try container.decodeIfPresent([ModelError].self, forKey: .errors) {
            self.errors = errors;
        }

    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.uploaded != nil) {
            try container.encode(self.uploaded, forKey: .uploaded);
        }
        if (self.errors != nil) {
            try container.encode(self.errors, forKey: .errors);
        }
        
        
    }
        
    public func getUploaded() -> [String]? {
        return self.uploaded;
    }
    public func getErrors() -> [ModelError]? {
        return self.errors;
    }
}
