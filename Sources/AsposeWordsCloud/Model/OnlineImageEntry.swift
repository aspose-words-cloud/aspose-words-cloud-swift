/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="OnlineImageEntry.swift">
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

// Represents a image which will be appended to the original resource image or document.
@available(macOS 10.12, iOS 10.3, watchOS 3.3, tvOS 12.0, *)
public class OnlineImageEntry : Codable, WordsApiModel {
    // Field of file. Represents a image which will be appended to the original resource image or document.
    private var _file : FileContent? = nil;

    public var file : FileContent? {
        get {
            return self._file;
        }
        set {
            self._file = newValue;
        }
    }

    private enum CodingKeys: String, CodingKey {
        case file = "File";
        case invalidCodingKey;
    }

    public init() {
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.file = try container.decodeIfPresent(FileContent.self, forKey: .file);
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.file != nil) {
            try container.encode(self.file, forKey: .file);
        }
    }

    public func collectFilesContent(resultFilesContent : [FileContent]) {
        if (self.file != nil)
        {
            self.file!.collectFilesContent(resultFilesContent: resultFilesContent);
        }

    }

    // Sets file. Gets or sets the path to entry to append at the server.
    public func setFile(file : FileContent?) -> OnlineImageEntry {
        self.file = file;
        return self;
    }

    // Gets file. Gets or sets the path to entry to append at the server.
    public func getFile() -> FileContent? {
        return self.file;
    }
}