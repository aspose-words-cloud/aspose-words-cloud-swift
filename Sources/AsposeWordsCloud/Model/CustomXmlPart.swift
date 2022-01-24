/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="CustomXmlPart.swift">
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

// DTO container with a CustomXmlPart.
@available(macOS 10.12, iOS 10.3, watchOS 3.3, tvOS 12.0, *)
public class CustomXmlPart : CustomXmlPartLink {
    // Field of data. DTO container with a CustomXmlPart.
    private var _data : String? = nil;

    public var data : String? {
        get {
            return self._data;
        }
        set {
            self._data = newValue;
        }
    }

    // Field of id. DTO container with a CustomXmlPart.
    private var _id : String? = nil;

    public var id : String? {
        get {
            return self._id;
        }
        set {
            self._id = newValue;
        }
    }

    private enum CodingKeys: String, CodingKey {
        case data = "Data";
        case id = "Id";
        case invalidCodingKey;
    }

    public override init() {
        super.init();
    }

    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder);
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.data = try container.decodeIfPresent(String.self, forKey: .data);
        self.id = try container.decodeIfPresent(String.self, forKey: .id);
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder);
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.data != nil) {
            try container.encode(self.data, forKey: .data);
        }
        if (self.id != nil) {
            try container.encode(self.id, forKey: .id);
        }
    }

    // Sets data. Gets or sets the custom xml part data.
    public func setData(data : String?) -> CustomXmlPart {
        self.data = data;
        return self;
    }

    // Gets data. Gets or sets the custom xml part data.
    public func getData() -> String? {
        return self.data;
    }


    // Sets id. Gets or sets the custom xml part id.
    public func setId(id : String?) -> CustomXmlPart {
        self.id = id;
        return self;
    }

    // Gets id. Gets or sets the custom xml part id.
    public func getId() -> String? {
        return self.id;
    }
}
