/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="CustomXmlPartsCollection.swift">
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

// The collection of CustomXmlPart.
@available(macOS 10.12, iOS 10.3, watchOS 3.3, tvOS 12.0, *)
public class CustomXmlPartsCollection : LinkElement {
    // Field of customXmlPartsList. The collection of CustomXmlPart.
    private var _customXmlPartsList : [CustomXmlPart]? = nil;

    public var customXmlPartsList : [CustomXmlPart]? {
        get {
            return self._customXmlPartsList;
        }
        set {
            self._customXmlPartsList = newValue;
        }
    }

    private enum CodingKeys: String, CodingKey {
        case customXmlPartsList = "CustomXmlPartsList";
        case invalidCodingKey;
    }

    public override init() {
        super.init();
    }

    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder);
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.customXmlPartsList = try container.decodeIfPresent([CustomXmlPart].self, forKey: .customXmlPartsList);
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder);
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.customXmlPartsList != nil) {
            try container.encode(self.customXmlPartsList, forKey: .customXmlPartsList);
        }
    }

    public override func collectFilesContent(resultFilesContent : [FileContent]) {
        super.collectFilesContent(resultFilesContent: resultFilesContent);
        if (self.customXmlPartsList != nil)
        {
            self.customXmlPartsList!.forEach {
                $0.collectFilesContent(resultFilesContent: resultFilesContent);
            }
        }

    }

    // Sets customXmlPartsList. Gets or sets the collection of CustomXmlPart.
    public func setCustomXmlPartsList(customXmlPartsList : [CustomXmlPart]?) -> CustomXmlPartsCollection {
        self.customXmlPartsList = customXmlPartsList;
        return self;
    }

    // Gets customXmlPartsList. Gets or sets the collection of CustomXmlPart.
    public func getCustomXmlPartsList() -> [CustomXmlPart]? {
        return self.customXmlPartsList;
    }
}
