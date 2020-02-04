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

public class DrawingObject : DrawingObjectLink, WordsApiModel {
    // Gets or sets specifies where the distance to the image is measured from.             
    public enum RelativeHorizontalPosition : String, Codable
    { 
        // Enum value "margin"
        case margin = "Margin"
        
        // Enum value "page"
        case page = "Page"
        
        // Enum value "column"
        case column = "Column"
        
        // Enum value "_default"
        case _default = "Default"
        
        // Enum value "character"
        case character = "Character"
        
        // Enum value "leftMargin"
        case leftMargin = "LeftMargin"
        
        // Enum value "rightMargin"
        case rightMargin = "RightMargin"
        
        // Enum value "insideMargin"
        case insideMargin = "InsideMargin"
        
        // Enum value "outsideMargin"
        case outsideMargin = "OutsideMargin"
        
    }

    // Gets or sets specifies where the distance to the image measured from.
    public enum RelativeVerticalPosition : String, Codable
    { 
        // Enum value "margin"
        case margin = "Margin"
        
        // Enum value "tableDefault"
        case tableDefault = "TableDefault"
        
        // Enum value "page"
        case page = "Page"
        
        // Enum value "paragraph"
        case paragraph = "Paragraph"
        
        // Enum value "textFrameDefault"
        case textFrameDefault = "TextFrameDefault"
        
        // Enum value "line"
        case line = "Line"
        
        // Enum value "topMargin"
        case topMargin = "TopMargin"
        
        // Enum value "bottomMargin"
        case bottomMargin = "BottomMargin"
        
        // Enum value "insideMargin"
        case insideMargin = "InsideMargin"
        
        // Enum value "outsideMargin"
        case outsideMargin = "OutsideMargin"
        
    }

    // Gets or sets specifies how to wrap text around the image.
    public enum WrapType : String, Codable
    { 
        // Enum value "inline"
        case inline = "Inline"
        
        // Enum value "topBottom"
        case topBottom = "TopBottom"
        
        // Enum value "square"
        case square = "Square"
        
        // Enum value "_none"
        case _none = "None"
        
        // Enum value "tight"
        case tight = "Tight"
        
        // Enum value "through"
        case through = "Through"
        
    }

        
    // Gets or sets height of the drawing object in points.
    private var height : Double?;
    // Gets or sets link to image data. Can be null if shape does not have an image.
    private var imageDataLink : WordsApiLink?;
    // Gets or sets distance in points from the origin to the left side of the image.             
    private var _left : Double?;
    // Gets or sets link to ole object. Can be null if shape does not have ole data.
    private var oleDataLink : WordsApiLink?;
    // Gets or sets specifies where the distance to the image is measured from.             
    private var relativeHorizontalPosition : RelativeHorizontalPosition?;
    // Gets or sets specifies where the distance to the image measured from.
    private var relativeVerticalPosition : RelativeVerticalPosition?;
    // Gets or sets a list of links that originate from this .
    private var renderLinks : [WordsApiLink]?;
    // Gets or sets distance in points from the origin to the top side of the image.
    private var top : Double?;
    // Gets or sets width of the drawing objects in points.
    private var width : Double?;
    // Gets or sets specifies how to wrap text around the image.
    private var wrapType : WrapType?;
        
    private enum CodingKeys: String, CodingKey {
        case height;
        case imageDataLink;
        case _left;
        case oleDataLink;
        case relativeHorizontalPosition;
        case relativeVerticalPosition;
        case renderLinks;
        case top;
        case width;
        case wrapType;
        case invalidCodingKey;
    }
        
    public override init() {
        super.init();
    }
    
    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder);
        let container = try decoder.container(keyedBy: CodingKeys.self);
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
        try super.encode(to: encoder);
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
    }
        
    public func setHeight(height : Double?) {
        self.height = height;
    }
    
    public func getHeight() -> Double? {
        return self.height;
    }
    public func setImageDataLink(imageDataLink : WordsApiLink?) {
        self.imageDataLink = imageDataLink;
    }
    
    public func getImageDataLink() -> WordsApiLink? {
        return self.imageDataLink;
    }
    public func setLeft(_left : Double?) {
        self._left = _left;
    }
    
    public func getLeft() -> Double? {
        return self._left;
    }
    public func setOleDataLink(oleDataLink : WordsApiLink?) {
        self.oleDataLink = oleDataLink;
    }
    
    public func getOleDataLink() -> WordsApiLink? {
        return self.oleDataLink;
    }
    public func setRelativeHorizontalPosition(relativeHorizontalPosition : RelativeHorizontalPosition?) {
        self.relativeHorizontalPosition = relativeHorizontalPosition;
    }
    
    public func getRelativeHorizontalPosition() -> RelativeHorizontalPosition? {
        return self.relativeHorizontalPosition;
    }
    public func setRelativeVerticalPosition(relativeVerticalPosition : RelativeVerticalPosition?) {
        self.relativeVerticalPosition = relativeVerticalPosition;
    }
    
    public func getRelativeVerticalPosition() -> RelativeVerticalPosition? {
        return self.relativeVerticalPosition;
    }
    public func setRenderLinks(renderLinks : [WordsApiLink]?) {
        self.renderLinks = renderLinks;
    }
    
    public func getRenderLinks() -> [WordsApiLink]? {
        return self.renderLinks;
    }
    public func setTop(top : Double?) {
        self.top = top;
    }
    
    public func getTop() -> Double? {
        return self.top;
    }
    public func setWidth(width : Double?) {
        self.width = width;
    }
    
    public func getWidth() -> Double? {
        return self.width;
    }
    public func setWrapType(wrapType : WrapType?) {
        self.wrapType = wrapType;
    }
    
    public func getWrapType() -> WrapType? {
        return self.wrapType;
    }
}
