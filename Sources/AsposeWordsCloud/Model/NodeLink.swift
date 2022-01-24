/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="NodeLink.swift">
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

// Reference to node.
@available(macOS 10.12, iOS 10.3, watchOS 3.3, tvOS 12.0, *)
public class NodeLink : LinkElement {
    // Field of nodeId. Reference to node.
    private var _nodeId : String?;

    public var : String? {
        get {
            return self._nodeId;
        }
        set {
            self._nodeId = newValue;
        }
    }

    private enum CodingKeys: String, CodingKey {
        case nodeId = "NodeId";
        case invalidCodingKey;
    }

    public override init() {
        super.init();
    }

    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder);
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.nodeId = try container.decodeIfPresent(String.self, forKey: .nodeId);
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder);
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.nodeId != nil) {
            try container.encode(self.nodeId, forKey: .nodeId);
        }
    }

    // Sets nodeId. Gets or sets the node id.
    public func setNodeId(nodeId : String?) -> NodeLink {
        self.nodeId = nodeId;
        return self;
    }

    // Gets nodeId. Gets or sets the node id.
    public func getNodeId() -> String? {
        return self.nodeId;
    }
}
