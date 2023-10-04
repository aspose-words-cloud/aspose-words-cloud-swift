/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="SplitDocumentResponse.swift">
 *   Copyright (c) 2023 Aspose.Words for Cloud
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

// The REST response with a result of document splitting.
// This response should be returned by the service when handling: POST /{name}/split.
@available(macOS 10.12, iOS 10.3, watchOS 3.3, tvOS 12.0, *)
public class SplitDocumentResponse : WordsResponse {
    // Field of splitResult. The REST response with a result of document splitting. This response should be returned by the service when handling: POST /{name}/split.
    private var _splitResult : SplitDocumentResult? = nil;

    public var splitResult : SplitDocumentResult? {
        get {
            return self._splitResult;
        }
        set {
            self._splitResult = newValue;
        }
    }

    private enum CodingKeys: String, CodingKey {
        case splitResult = "SplitResult";
        case invalidCodingKey;
    }

    public override init() {
        super.init();
    }

    public required init(from json: [String: Any]) throws {
        try super.init(from: json);
        if let raw_splitResult = json["SplitResult"] as? [String: Any] {
            self.splitResult = try ObjectSerializer.deserialize(type: SplitDocumentResult.self, from: raw_splitResult);
        }

    }

    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder);
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.splitResult = try container.decodeIfPresent(SplitDocumentResult.self, forKey: .splitResult);
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder);
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.splitResult != nil) {
            try container.encode(self.splitResult, forKey: .splitResult);
        }
    }

    public override func collectFilesContent(_ resultFilesContent : inout [FileReference]) {
    }

    // Sets splitResult. Gets or sets the result of document splitting.
    public func setSplitResult(splitResult : SplitDocumentResult?) -> SplitDocumentResponse {
        self.splitResult = splitResult;
        return self;
    }

    // Gets splitResult. Gets or sets the result of document splitting.
    public func getSplitResult() -> SplitDocumentResult? {
        return self.splitResult;
    }
}
