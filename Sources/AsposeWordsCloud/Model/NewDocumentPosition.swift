/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="NewDocumentPosition.swift">
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

// DTO container with a new position in the document tree.
@available(macOS 10.12, iOS 10.3, watchOS 3.3, tvOS 12.0, *)
public class NewDocumentPosition : Codable, WordsApiModel {
    // Field of nodeId. DTO container with a new position in the document tree.
    private var _nodeId : String? = nil;

    public var nodeId : String? {
        get {
            return self._nodeId;
        }
        set {
            self._nodeId = newValue;
        }
    }

    // Field of offset. DTO container with a new position in the document tree.
    private var _offset : Int? = nil;

    public var offset : Int? {
        get {
            return self._offset;
        }
        set {
            self._offset = newValue;
        }
    }

    private enum CodingKeys: String, CodingKey {
        case nodeId = "NodeId";
        case offset = "Offset";
        case invalidCodingKey;
    }

    public init() {
    }

    public required init(from json: [String: Any]) throws {
        self.nodeId = json["NodeId"] as? String;
        self.offset = json["Offset"] as? Int;
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.nodeId = try container.decodeIfPresent(String.self, forKey: .nodeId);
        self.offset = try container.decodeIfPresent(Int.self, forKey: .offset);
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.nodeId != nil) {
            try container.encode(self.nodeId, forKey: .nodeId);
        }
        if (self.offset != nil) {
            try container.encode(self.offset, forKey: .offset);
        }
    }

    public func collectFilesContent(_ resultFilesContent : inout [FileReference]) {
    }

    public func validate() throws {
        if (self.nodeId == null)
        {
            throw WordsApiError.requiredParameterError(paramName: "nodeId");
        }
    }

    // Sets nodeId. Gets or sets the node id.
    public func setNodeId(nodeId : String?) -> NewDocumentPosition {
        self.nodeId = nodeId;
        return self;
    }

    // Gets nodeId. Gets or sets the node id.
    public func getNodeId() -> String? {
        return self.nodeId;
    }


    // Sets offset. Gets or sets the offset in the node.
    public func setOffset(offset : Int?) -> NewDocumentPosition {
        self.offset = offset;
        return self;
    }

    // Gets offset. Gets or sets the offset in the node.
    public func getOffset() -> Int? {
        return self.offset;
    }
}
