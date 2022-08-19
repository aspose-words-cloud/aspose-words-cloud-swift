/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="OnlineDocumentEntryList.swift">
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

// Represents a list of documents which will be appended to the original resource document.
@available(macOS 10.12, iOS 10.3, watchOS 3.3, tvOS 12.0, *)
public class OnlineDocumentEntryList : BaseDocumentEntryList {
    // Field of onlineDocumentEntries. Represents a list of documents which will be appended to the original resource document.
    private var _onlineDocumentEntries : [OnlineDocumentEntry]? = nil;

    public var onlineDocumentEntries : [OnlineDocumentEntry]? {
        get {
            return self._onlineDocumentEntries;
        }
        set {
            self._onlineDocumentEntries = newValue;
        }
    }

    private enum CodingKeys: String, CodingKey {
        case onlineDocumentEntries = "OnlineDocumentEntries";
        case invalidCodingKey;
    }

    public override init() {
        super.init();
    }

    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder);
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.onlineDocumentEntries = try container.decodeIfPresent([OnlineDocumentEntry].self, forKey: .onlineDocumentEntries);
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder);
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.onlineDocumentEntries != nil) {
            try container.encode(self.onlineDocumentEntries, forKey: .onlineDocumentEntries);
        }
    }

    public override func collectFilesContent(resultFilesContent : [FileContent]) {
        super.collectFilesContent(resultFilesContent: resultFilesContent);
        if (self.onlineDocumentEntries != nil)
        {
            for element in self.onlineDocumentEntries! {
                element.collectFilesContent(resultFilesContent: resultFilesContent);
            }
        }

    }

    // Sets onlineDocumentEntries. Gets or sets the list of documents.
    public func setOnlineDocumentEntries(onlineDocumentEntries : [OnlineDocumentEntry]?) -> OnlineDocumentEntryList {
        self.onlineDocumentEntries = onlineDocumentEntries;
        return self;
    }

    // Gets onlineDocumentEntries. Gets or sets the list of documents.
    public func getOnlineDocumentEntries() -> [OnlineDocumentEntry]? {
        return self.onlineDocumentEntries;
    }
}
