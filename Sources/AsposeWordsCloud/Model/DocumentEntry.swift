/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="DocumentEntry.swift">
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

// Represents a document which will be appended to the original resource document.
@available(macOS 10.12, iOS 10.3, watchOS 3.3, tvOS 12.0, *)
public class DocumentEntry : Codable, WordsApiModel {
    // Field of encryptedPassword. Represents a document which will be appended to the original resource document.
    private var _encryptedPassword : String? = nil;

    public var encryptedPassword : String? {
        get {
            return self._encryptedPassword;
        }
        set {
            self._encryptedPassword = newValue;
        }
    }

    // Field of href. Represents a document which will be appended to the original resource document.
    private var _href : String? = nil;

    public var href : String? {
        get {
            return self._href;
        }
        set {
            self._href = newValue;
        }
    }

    // Field of importFormatMode. Represents a document which will be appended to the original resource document.
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
        case href = "Href";
        case importFormatMode = "ImportFormatMode";
        case invalidCodingKey;
    }

    public init() {
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.encryptedPassword = try container.decodeIfPresent(String.self, forKey: .encryptedPassword);
        self.href = try container.decodeIfPresent(String.self, forKey: .href);
        self.importFormatMode = try container.decodeIfPresent(String.self, forKey: .importFormatMode);
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.encryptedPassword != nil) {
            try container.encode(self.encryptedPassword, forKey: .encryptedPassword);
        }
        if (self.href != nil) {
            try container.encode(self.href, forKey: .href);
        }
        if (self.importFormatMode != nil) {
            try container.encode(self.importFormatMode, forKey: .importFormatMode);
        }
    }

    // Sets encryptedPassword. Gets or sets document password encrypted on API public key. The default value is null (the document has no password).
    public func setEncryptedPassword(encryptedPassword : String?) -> DocumentEntry {
        self.encryptedPassword = encryptedPassword;
        return self;
    }

    // Gets encryptedPassword. Gets or sets document password encrypted on API public key. The default value is null (the document has no password).
    public func getEncryptedPassword() -> String? {
        return self.encryptedPassword;
    }


    // Sets href. Gets or sets the path to document to append at the server.
    public func setHref(href : String?) -> DocumentEntry {
        self.href = href;
        return self;
    }

    // Gets href. Gets or sets the path to document to append at the server.
    public func getHref() -> String? {
        return self.href;
    }


    // Sets importFormatMode. Gets or sets the option that controls formatting will be used: appended or destination document. Can be KeepSourceFormatting or UseDestinationStyles.
    public func setImportFormatMode(importFormatMode : String?) -> DocumentEntry {
        self.importFormatMode = importFormatMode;
        return self;
    }

    // Gets importFormatMode. Gets or sets the option that controls formatting will be used: appended or destination document. Can be KeepSourceFormatting or UseDestinationStyles.
    public func getImportFormatMode() -> String? {
        return self.importFormatMode;
    }
}
