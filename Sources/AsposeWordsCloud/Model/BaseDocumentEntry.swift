/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="BaseDocumentEntry.swift">
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

// Represents a base document entry.
@available(macOS 10.12, iOS 10.3, watchOS 3.3, tvOS 12.0, *)
public class BaseDocumentEntry : Codable, WordsApiModel {
    // Field of encryptedPassword. Represents a base document entry.
    private var _encryptedPassword : String? = nil;

    public var encryptedPassword : String? {
        get {
            return self._encryptedPassword;
        }
        set {
            self._encryptedPassword = newValue;
        }
    }

    // Field of importFormatMode. Represents a base document entry.
    private var _importFormatMode : String? = nil;

    public var importFormatMode : String? {
        get {
            return self._importFormatMode;
        }
        set {
            self._importFormatMode = newValue;
        }
    }

    private enum CodingKeys: String, CodingKey {
        case encryptedPassword = "EncryptedPassword";
        case importFormatMode = "ImportFormatMode";
        case invalidCodingKey;
    }

    internal init() {
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.encryptedPassword = try container.decodeIfPresent(String.self, forKey: .encryptedPassword);
        self.importFormatMode = try container.decodeIfPresent(String.self, forKey: .importFormatMode);
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.encryptedPassword != nil) {
            try container.encode(self.encryptedPassword, forKey: .encryptedPassword);
        }
        if (self.importFormatMode != nil) {
            try container.encode(self.importFormatMode, forKey: .importFormatMode);
        }
    }

    public func collectFilesContent(_ resultFilesContent : inout [FileContent]) {
    }

    // Sets encryptedPassword. Gets or sets document password encrypted on API public key. The default value is null (the document has no password).
    public func setEncryptedPassword(encryptedPassword : String?) -> BaseDocumentEntry {
        self.encryptedPassword = encryptedPassword;
        return self;
    }

    // Gets encryptedPassword. Gets or sets document password encrypted on API public key. The default value is null (the document has no password).
    public func getEncryptedPassword() -> String? {
        return self.encryptedPassword;
    }


    // Sets importFormatMode. Gets or sets the option that controls formatting will be used: appended or destination document. Can be KeepSourceFormatting or UseDestinationStyles.
    public func setImportFormatMode(importFormatMode : String?) -> BaseDocumentEntry {
        self.importFormatMode = importFormatMode;
        return self;
    }

    // Gets importFormatMode. Gets or sets the option that controls formatting will be used: appended or destination document. Can be KeepSourceFormatting or UseDestinationStyles.
    public func getImportFormatMode() -> String? {
        return self.importFormatMode;
    }
}
