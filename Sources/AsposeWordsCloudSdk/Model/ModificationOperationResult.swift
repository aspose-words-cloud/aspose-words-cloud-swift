/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="ModificationOperationResult.swift">
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

public class ModificationOperationResult : Decodable {
        
    // Gets or sets link to the source document (source for the modification operation).
    private let source : FileLink?;
    // Gets or sets link to the dest document (result of the modification operation).
    private let dest : FileLink?;
        
    private enum CodingKeys: String, CodingKey { case source, dest }
        
    public init(source : FileLink? = nil, dest : FileLink? = nil) {
        self.source = source;
        self.dest = dest;
    }
    
    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self);
        
        if let source = try container.decodeIfPresent(FileLink.self, forKey: .source) {
            self.source = source;
        }
        if let dest = try container.decodeIfPresent(FileLink.self, forKey: .dest) {
            self.dest = dest;
        }

    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.source != nil) {
            try container.encode(self.source, forKey: .source);
        }
        if (self.dest != nil) {
            try container.encode(self.dest, forKey: .dest);
        }
        
        
    }
        
    public func getSource() -> FileLink? {
        return self.source;
    }
    public func getDest() -> FileLink? {
        return self.dest;
    }
}
