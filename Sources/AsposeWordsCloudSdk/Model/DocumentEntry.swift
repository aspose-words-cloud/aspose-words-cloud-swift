/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="DocumentEntry.swift">
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

public class DocumentEntry : Codable {
        
    // Gets or sets path to document to append at the server.
    private let href : String?;
    // Gets or sets defines which formatting will be used: appended or destination document.Can be KeepSourceFormatting or UseDestinationStyles.
    private let importFormatMode : String?;
        
    private enum CodingKeys: String, CodingKey { case href, importFormatMode }
        
    public init(href : String? = nil, importFormatMode : String? = nil) {
        self.href = href;
        self.importFormatMode = importFormatMode;
    }
    
    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self);
        
        if let href = try container.decodeIfPresent(String.self, forKey: .href) {
            self.href = href;
        }
        if let importFormatMode = try container.decodeIfPresent(String.self, forKey: .importFormatMode) {
            self.importFormatMode = importFormatMode;
        }

    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.href != nil) {
            try container.encode(self.href, forKey: .href);
        }
        if (self.importFormatMode != nil) {
            try container.encode(self.importFormatMode, forKey: .importFormatMode);
        }
        
        
    }
        
    public func getHref() -> String? {
        return self.href;
    }
    public func getImportFormatMode() -> String? {
        return self.importFormatMode;
    }
}
