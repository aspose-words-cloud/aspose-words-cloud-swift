/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="OfficeMathObject.swift">
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

public class OfficeMathObject : OfficeMathLink {
    // Gets or sets /sets Office Math display format type which represents whether an equation is displayed inline with the text or displayed on its own line.
    public enum DisplayType : Int, Codable
    { 
        // Enum value "display"
        case display
        
        // Enum value "inline"
        case inline
        
    }

    // Gets or sets /sets Office Math justification.
    public enum Justification : Int, Codable
    { 
        // Enum value "centerGroup"
        case centerGroup
        
        // Enum value "_default"
        case _default
        
        // Enum value "center"
        case center
        
        // Enum value "_left"
        case _left
        
        // Enum value "_right"
        case _right
        
        // Enum value "inline"
        case inline
        
    }

    // Gets or sets type Aspose.Words.Math.OfficeMath.MathObjectType of this Office Math object.
    public enum MathObjectType : Int, Codable
    { 
        // Enum value "omath"
        case omath
        
        // Enum value "omathpara"
        case omathpara
        
        // Enum value "accent"
        case accent
        
        // Enum value "bar"
        case bar
        
        // Enum value "borderBox"
        case borderBox
        
        // Enum value "box"
        case box
        
        // Enum value "delimiter"
        case delimiter
        
        // Enum value "degree"
        case degree
        
        // Enum value "argument"
        case argument
        
        // Enum value "array"
        case array
        
        // Enum value "fraction"
        case fraction
        
        // Enum value "denominator"
        case denominator
        
        // Enum value "numerator"
        case numerator
        
        // Enum value "function"
        case function
        
        // Enum value "functionName"
        case functionName
        
        // Enum value "groupCharacter"
        case groupCharacter
        
        // Enum value "limit"
        case limit
        
        // Enum value "lowerLimit"
        case lowerLimit
        
        // Enum value "upperLimit"
        case upperLimit
        
        // Enum value "matrix"
        case matrix
        
        // Enum value "matrixRow"
        case matrixRow
        
        // Enum value "nary"
        case nary
        
        // Enum value "phantom"
        case phantom
        
        // Enum value "radical"
        case radical
        
        // Enum value "subscriptPart"
        case subscriptPart
        
        // Enum value "superscriptPart"
        case superscriptPart
        
        // Enum value "preSubSuperscript"
        case preSubSuperscript
        
        // Enum value "_subscript"
        case _subscript
        
        // Enum value "subSuperscript"
        case subSuperscript
        
        // Enum value "supercript"
        case supercript
        
    }

        
    // Gets or sets content of footnote.
    private let content : StoryChildNodes?;
    // Gets or sets /sets Office Math display format type which represents whether an equation is displayed inline with the text or displayed on its own line.
    private let displayType : DisplayType?;
    // Gets or sets /sets Office Math justification.
    private let justification : Justification?;
    // Gets or sets type Aspose.Words.Math.OfficeMath.MathObjectType of this Office Math object.
    private let mathObjectType : MathObjectType?;
        
    private enum CodingKeys: String, CodingKey {
        case content;
        case displayType;
        case justification;
        case mathObjectType;
    }
        
    public init(content : StoryChildNodes? = nil, displayType : DisplayType? = nil, justification : Justification? = nil, mathObjectType : MathObjectType? = nil) {
        self.content = content;
        self.displayType = displayType;
        self.justification = justification;
        self.mathObjectType = mathObjectType;
    }
    
    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self);
        try super.init(from: try container.superDecoder());
        self.content = try container.decodeIfPresent(StoryChildNodes.self, forKey: .content);
        self.displayType = try container.decodeIfPresent(DisplayType.self, forKey: .displayType);
        self.justification = try container.decodeIfPresent(Justification.self, forKey: .justification);
        self.mathObjectType = try container.decodeIfPresent(MathObjectType.self, forKey: .mathObjectType);
    }

    public override func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.content != nil) {
            try container.encode(self.content, forKey: .content);
        }
        if (self.displayType != nil) {
            try container.encode(self.displayType, forKey: .displayType);
        }
        if (self.justification != nil) {
            try container.encode(self.justification, forKey: .justification);
        }
        if (self.mathObjectType != nil) {
            try container.encode(self.mathObjectType, forKey: .mathObjectType);
        }
        try super.encode(to: container.superEncoder());
    }
        
    public func getContent() -> StoryChildNodes? {
        return self.content;
    }
    public func getDisplayType() -> DisplayType? {
        return self.displayType;
    }
    public func getJustification() -> Justification? {
        return self.justification;
    }
    public func getMathObjectType() -> MathObjectType? {
        return self.mathObjectType;
    }
}
