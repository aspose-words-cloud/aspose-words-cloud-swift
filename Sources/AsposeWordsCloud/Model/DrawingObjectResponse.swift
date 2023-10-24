/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="DrawingObjectResponse.swift">
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

// The REST response with a DrawingObject.
@available(macOS 10.12, iOS 10.3, watchOS 3.3, tvOS 12.0, *)
public class DrawingObjectResponse : WordsResponse {
    // Field of drawingObject. The REST response with a DrawingObject.
    private var _drawingObject : DrawingObject? = nil;

    public var drawingObject : DrawingObject? {
        get {
            return self._drawingObject;
        }
        set {
            self._drawingObject = newValue;
        }
    }

    private enum CodingKeys: String, CodingKey {
        case drawingObject = "DrawingObject";
        case invalidCodingKey;
    }

    public override init() {
        super.init();
    }

    public required init(from json: [String: Any]) throws {
        try super.init(from: json);
        if let raw_drawingObject = json["DrawingObject"] as? [String: Any] {
            self.drawingObject = try ObjectSerializer.deserialize(type: DrawingObject.self, from: raw_drawingObject);
        }

    }

    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder);
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.drawingObject = try container.decodeIfPresent(DrawingObject.self, forKey: .drawingObject);
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder);
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.drawingObject != nil) {
            try container.encode(self.drawingObject, forKey: .drawingObject);
        }
    }

    public override func collectFilesContent(_ resultFilesContent : inout [FileReference]) {
    }

    public override func validate() throws {
        super.validate();
        try self.drawingObject?.validate();

    }

    // Sets drawingObject. Gets or sets the DrawingObject.
    public func setDrawingObject(drawingObject : DrawingObject?) -> DrawingObjectResponse {
        self.drawingObject = drawingObject;
        return self;
    }

    // Gets drawingObject. Gets or sets the DrawingObject.
    public func getDrawingObject() -> DrawingObject? {
        return self.drawingObject;
    }
}
