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
        
    public func getDrawingObject() -> Double? {
        return self.height;
    }
    public func getDrawingObject() -> WordsApiLink? {
        return self.imageDataLink;
    }
    public func getDrawingObject() -> Double? {
        return self._left;
    }
    public func getDrawingObject() -> WordsApiLink? {
        return self.oleDataLink;
    }
    public func getDrawingObject() -> RelativeHorizontalPosition? {
        return self.relativeHorizontalPosition;
    }
    public func getDrawingObject() -> RelativeVerticalPosition? {
        return self.relativeVerticalPosition;
    }
    public func getDrawingObject() -> [WordsApiLink]? {
        return self.renderLinks;
    }
    public func getDrawingObject() -> Double? {
        return self.top;
    }
    public func getDrawingObject() -> Double? {
        return self.width;
    }
    public func getDrawingObject() -> WrapType? {
        return self.wrapType;
    }
}
