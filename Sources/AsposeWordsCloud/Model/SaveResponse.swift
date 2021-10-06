/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="SaveResponse.swift">
 *   Copyright (c) 2021 Aspose.Words for Cloud
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

// The REST response with a save result.
@available(macOS 10.12, iOS 10.3, watchOS 3.3, tvOS 12.0, *)
public class SaveResponse : WordsResponse {
    // Field of saveResult. The REST response with a save result.
    public var saveResult : SaveResult?;

    private enum CodingKeys: String, CodingKey {
        case saveResult = "SaveResult";
        case invalidCodingKey;
    }

    public override init() {
        super.init();
    }

    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder);
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.saveResult = try container.decodeIfPresent(SaveResult.self, forKey: .saveResult);
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder);
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.saveResult != nil) {
            try container.encode(self.saveResult, forKey: .saveResult);
        }
    }

    // Sets saveResult. Gets or sets the save result.
    public func setSaveResult(saveResult : SaveResult?) -> SaveResponse {
        self.saveResult = saveResult;
        return self;
    }

    // Gets saveResult. Gets or sets the save result.
    public func getSaveResult() -> SaveResult? {
        return self.saveResult;
    }
}
