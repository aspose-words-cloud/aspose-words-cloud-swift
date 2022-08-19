/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="ImageEntry.swift">
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
public class ImageEntry : Codable, WordsApiModel {
    // Field of href. Represents a image which will be appended to the original resource image or document.
    private var _href : String? = nil;

    public var href : String? {
        get {
            return self._href;
        }
        set {
            self._href = newValue;
        }
    }

    private enum CodingKeys: String, CodingKey {
        case href = "Href";
        case invalidCodingKey;
    }

    public init() {
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.href = try container.decodeIfPresent(String.self, forKey: .href);
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.href != nil) {
            try container.encode(self.href, forKey: .href);
        }
    }

    public func collectFilesContent(resultFilesContent : [FileContent]) {
    }

    // Sets href. Gets or sets the path to entry to append at the server.
    public func setHref(href : String?) -> ImageEntry {
        self.href = href;
        return self;
    }

    // Gets href. Gets or sets the path to entry to append at the server.
    public func getHref() -> String? {
        return self.href;
    }
}
