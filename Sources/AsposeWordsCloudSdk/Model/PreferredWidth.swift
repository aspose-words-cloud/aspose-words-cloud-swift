/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="PreferredWidth.swift">
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

public class PreferredWidth : Decodable {
    // Gets or sets the unit of measure used for this preferred width value.
    public enum ModelType
    { 
        // Enum value "auto"
        case auto
        
        // Enum value "percent"
        case percent
        
        // Enum value "points"
        case points
        
    }

        
    // Gets or sets the unit of measure used for this preferred width value.
    private let type : ModelType;
    // Gets or sets the preferred width value. The unit of measure is specified in the  property.
    private let value : Double?;
        
    private enum CodingKeys: String, CodingKey { case type, value }
        
    public init(type : ModelType, value : Double? = nil) {
        self.type = type;
        self.value = value;
    }
    
    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self);
        
        self.type = try container.decode(ModelType.self, forKey: .type);
        if let value = try container.decodeIfPresent(Double.self, forKey: .value) {
            self.value = value;
        }

    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self);
        try container.encode(self.type, forKey: .type);
        if (self.value != nil) {
            try container.encode(self.value, forKey: .value);
        }
        
        
    }
        
    public func getType() -> ModelType {
        return self.type;
    }
    public func getValue() -> Double? {
        return self.value;
    }
}
