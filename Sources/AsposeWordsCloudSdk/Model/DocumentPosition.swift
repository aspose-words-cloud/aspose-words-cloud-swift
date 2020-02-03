/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="DocumentPosition.swift">
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

public class DocumentPosition : Codable {
        
    // Gets or sets link to  node.
    private var node : NodeLink?;
    // Gets or sets offset into the node.
    private var offset : Int?;
        
    private enum CodingKeys: String, CodingKey {
        case node;
        case offset;
        case invalidCodingKey;
    }
        
    public init() {
        
    }
    
    public required init(from decoder: Decoder) throws {
        
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.node = try container.decodeIfPresent(NodeLink.self, forKey: .node);
        self.offset = try container.decodeIfPresent(Int.self, forKey: .offset);
    }

    public func encode(to encoder: Encoder) throws {
        
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.node != nil) {
            try container.encode(self.node, forKey: .node);
        }
        if (self.offset != nil) {
            try container.encode(self.offset, forKey: .offset);
        }
    }
        
    public func setNode(node : NodeLink?) {
        self.node = node;
    }
    
    public func getNode() -> NodeLink? {
        return self.node;
    }
    public func setOffset(offset : Int?) {
        self.offset = offset;
    }
    
    public func getOffset() -> Int? {
        return self.offset;
    }
}
