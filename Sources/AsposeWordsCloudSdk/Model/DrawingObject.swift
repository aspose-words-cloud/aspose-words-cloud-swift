/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="DrawingObject.swift">
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

public class DrawingObject : DrawingObjectLink {
    // Gets or sets specifies where the distance to the image is measured from.             
    public enum RelativeHorizontalPosition
    { 
        // Enum value "margin"
        case margin
        
        // Enum value "page"
        case page
        
        // Enum value "column"
        case column
        
        // Enum value "_default"
        case _default
        
        // Enum value "character"
        case character
        
        // Enum value "leftMargin"
        case leftMargin
        
        // Enum value "rightMargin"
        case rightMargin
        
        // Enum value "insideMargin"
        case insideMargin
        
        // Enum value "outsideMargin"
        case outsideMargin
        
    }

    // Gets or sets specifies where the distance to the image measured from.
    public enum RelativeVerticalPosition
    { 
        // Enum value "margin"
        case margin
        
        // Enum value "tableDefault"
        case tableDefault
        
        // Enum value "page"
        case page
        
        // Enum value "paragraph"
        case paragraph
        
        // Enum value "textFrameDefault"
        case textFrameDefault
        
        // Enum value "line"
        case line
        
        // Enum value "topMargin"
        case topMargin
        
        // Enum value "bottomMargin"
        case bottomMargin
        
        // Enum value "insideMargin"
        case insideMargin
        
        // Enum value "outsideMargin"
        case outsideMargin
        
    }

    // Gets or sets specifies how to wrap text around the image.
    public enum WrapType
    { 
        // Enum value "inline"
        case inline
        
        // Enum value "topBottom"
        case topBottom
        
        // Enum value "square"
        case square
        
        // Enum value "_none"
        case _none
        
        // Enum value "tight"
        case tight
        
        // Enum value "through"
        case through
        
    }

        
    // Gets or sets height of the drawing object in points.
    private let height : Double?;
    // Gets or sets link to image data. Can be null if shape does not have an image.
    private let imageDataLink : WordsApiLink?;
    // Gets or sets distance in points from the origin to the left side of the image.             
    private let _left : Double?;
    // Gets or sets link to ole object. Can be null if shape does not have ole data.
    private let oleDataLink : WordsApiLink?;
    // Gets or sets specifies where the distance to the image is measured from.             
    private let relativeHorizontalPosition : RelativeHorizontalPosition?;
    // Gets or sets specifies where the distance to the image measured from.
    private let relativeVerticalPosition : RelativeVerticalPosition?;
    // Gets or sets a list of links that originate from this .
    private let renderLinks : [WordsApiLink]?;
    // Gets or sets distance in points from the origin to the top side of the image.
    private let top : Double?;
    // Gets or sets width of the drawing objects in points.
    private let width : Double?;
    // Gets or sets specifies how to wrap text around the image.
    private let wrapType : WrapType?;
        
    private enum CodingKeys: String, CodingKey { case height, imageDataLink, _left, oleDataLink, relativeHorizontalPosition, relativeVerticalPosition, renderLinks, top, width, wrapType }
        
    public init(height : Double? = nil, imageDataLink : WordsApiLink? = nil, _left : Double? = nil, oleDataLink : WordsApiLink? = nil, relativeHorizontalPosition : RelativeHorizontalPosition? = nil, relativeVerticalPosition : RelativeVerticalPosition? = nil, renderLinks : [WordsApiLink]? = nil, top : Double? = nil, width : Double? = nil, wrapType : WrapType? = nil) {
        self.height = height;
        self.imageDataLink = imageDataLink;
        self._left = _left;
        self.oleDataLink = oleDataLink;
        self.relativeHorizontalPosition = relativeHorizontalPosition;
        self.relativeVerticalPosition = relativeVerticalPosition;
        self.renderLinks = renderLinks;
        self.top = top;
        self.width = width;
        self.wrapType = wrapType;
    }
    
    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self);
        try super.init(from: try container.superDecoder());
        self.height = try container.decodeIfPresent(Double.self, forKey: .height);
        self.imageDataLink = try container.decodeIfPresent(WordsApiLink.self, forKey: .imageDataLink);
        self._left = try container.decodeIfPresent(Double.self, forKey: ._left);
        self.oleDataLink = try container.decodeIfPresent(WordsApiLink.self, forKey: .oleDataLink);
        self.relativeHorizontalPosition = try container.decodeIfPresent(RelativeHorizontalPosition.self, forKey: .relativeHorizontalPosition);
        self.relativeVerticalPosition = try container.decodeIfPresent(RelativeVerticalPosition.self, forKey: .relativeVerticalPosition);
        self.renderLinks = try container.decodeIfPresent([WordsApiLink].self, forKey: .renderLinks);
        self.top = try container.decodeIfPresent(Double.self, forKey: .top);
        self.width = try container.decodeIfPresent(Double.self, forKey: .width);
        self.wrapType = try container.decodeIfPresent(WrapType.self, forKey: .wrapType);
    }

    public override func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.height != nil) {
            try container.encode(self.height, forKey: .height);
        }
        if (self.imageDataLink != nil) {
            try container.encode(self.imageDataLink, forKey: .imageDataLink);
        }
        if (self._left != nil) {
            try container.encode(self._left, forKey: ._left);
        }
        if (self.oleDataLink != nil) {
            try container.encode(self.oleDataLink, forKey: .oleDataLink);
        }
        if (self.relativeHorizontalPosition != nil) {
            try container.encode(self.relativeHorizontalPosition, forKey: .relativeHorizontalPosition);
        }
        if (self.relativeVerticalPosition != nil) {
            try container.encode(self.relativeVerticalPosition, forKey: .relativeVerticalPosition);
        }
        if (self.renderLinks != nil) {
            try container.encode(self.renderLinks, forKey: .renderLinks);
        }
        if (self.top != nil) {
            try container.encode(self.top, forKey: .top);
        }
        if (self.width != nil) {
            try container.encode(self.width, forKey: .width);
        }
        if (self.wrapType != nil) {
            try container.encode(self.wrapType, forKey: .wrapType);
        }
        try super.encode(to: container.superEncoder());
    }
        
    public func getHeight() -> Double? {
        return self.height;
    }
    public func getImageDataLink() -> WordsApiLink? {
        return self.imageDataLink;
    }
    public func getLeft() -> Double? {
        return self._left;
    }
    public func getOleDataLink() -> WordsApiLink? {
        return self.oleDataLink;
    }
    public func getRelativeHorizontalPosition() -> RelativeHorizontalPosition? {
        return self.relativeHorizontalPosition;
    }
    public func getRelativeVerticalPosition() -> RelativeVerticalPosition? {
        return self.relativeVerticalPosition;
    }
    public func getRenderLinks() -> [WordsApiLink]? {
        return self.renderLinks;
    }
    public func getTop() -> Double? {
        return self.top;
    }
    public func getWidth() -> Double? {
        return self.width;
    }
    public func getWrapType() -> WrapType? {
        return self.wrapType;
    }
}
