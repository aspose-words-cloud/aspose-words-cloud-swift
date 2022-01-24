/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="FilesUploadResult.swift">
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

// File upload result.
@available(macOS 10.12, iOS 10.3, watchOS 3.3, tvOS 12.0, *)
public class FilesUploadResult : Codable, WordsApiModel {
    // Field of errors. File upload result.
    private var _errors : [InternalError]?;

    public var errors : [InternalError]? {
        get {
            return self._errors;
        }
        set {
            self._errors = newValue;
        }
    }

    // Field of uploaded. File upload result.
    private var _uploaded : [String]?;

    public var uploaded : [String]? {
        get {
            return self._uploaded;
        }
        set {
            self._uploaded = newValue;
        }
    }

    private enum CodingKeys: String, CodingKey {
        case errors = "Errors";
        case uploaded = "Uploaded";
        case invalidCodingKey;
    }

    public init() {
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.errors = try container.decodeIfPresent([InternalError].self, forKey: .errors);
        self.uploaded = try container.decodeIfPresent([String].self, forKey: .uploaded);
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.errors != nil) {
            try container.encode(self.errors, forKey: .errors);
        }
        if (self.uploaded != nil) {
            try container.encode(self.uploaded, forKey: .uploaded);
        }
    }

    // Sets errors. List of errors.
    public func setErrors(errors : [InternalError]?) -> FilesUploadResult {
        self.errors = errors;
        return self;
    }

    // Gets errors. List of errors.
    public func getErrors() -> [InternalError]? {
        return self.errors;
    }


    // Sets uploaded. List of uploaded file names.
    public func setUploaded(uploaded : [String]?) -> FilesUploadResult {
        self.uploaded = uploaded;
        return self;
    }

    // Gets uploaded. List of uploaded file names.
    public func getUploaded() -> [String]? {
        return self.uploaded;
    }
}
