/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="DrawingObject.swift">
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

// DTO container with a DrawingObject.
@available(macOS 10.12, iOS 10.3, watchOS 3.3, tvOS 12.0, *)
public class DrawingObject : DrawingObjectLink {
    // Gets or sets the relative horizontal position, from which the distance to the image is measured.
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

    // Gets or sets the relative vertical position, from which the distance to the image is measured.
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

    // Gets or sets the option that controls how to wrap text around the image.
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

    // Field of height. DTO container with a DrawingObject.
    private var _height : Double? = nil;

    public var height : Double? {
        get {
            return self._height;
        }
        set {
            self._height = newValue;
        }
    }

    // Field of imageDataLink. DTO container with a DrawingObject.
    private var _imageDataLink : WordsApiLink? = nil;

    public var imageDataLink : WordsApiLink? {
        get {
            return self._imageDataLink;
        }
        set {
            self._imageDataLink = newValue;
        }
    }

    // Field of _left. DTO container with a DrawingObject.
    private var __left : Double? = nil;

    public var _left : Double? {
        get {
            return self.__left;
        }
        set {
            self.__left = newValue;
        }
    }

    // Field of oleDataLink. DTO container with a DrawingObject.
    private var _oleDataLink : WordsApiLink? = nil;

    public var oleDataLink : WordsApiLink? {
        get {
            return self._oleDataLink;
        }
        set {
            self._oleDataLink = newValue;
        }
    }

    // Field of relativeHorizontalPosition. DTO container with a DrawingObject.
    private var _relativeHorizontalPosition : RelativeHorizontalPosition? = nil;

    public var relativeHorizontalPosition : RelativeHorizontalPosition? {
        get {
            return self._relativeHorizontalPosition;
        }
        set {
            self._relativeHorizontalPosition = newValue;
        }
    }

    // Field of relativeVerticalPosition. DTO container with a DrawingObject.
    private var _relativeVerticalPosition : RelativeVerticalPosition? = nil;

    public var relativeVerticalPosition : RelativeVerticalPosition? {
        get {
            return self._relativeVerticalPosition;
        }
        set {
            self._relativeVerticalPosition = newValue;
        }
    }

    // Field of renderLinks. DTO container with a DrawingObject.
    private var _renderLinks : [WordsApiLink]? = nil;

    public var renderLinks : [WordsApiLink]? {
        get {
            return self._renderLinks;
        }
        set {
            self._renderLinks = newValue;
        }
    }

    // Field of top. DTO container with a DrawingObject.
    private var _top : Double? = nil;

    public var top : Double? {
        get {
            return self._top;
        }
        set {
            self._top = newValue;
        }
    }

    // Field of width. DTO container with a DrawingObject.
    private var _width : Double? = nil;

    public var width : Double? {
        get {
            return self._width;
        }
        set {
            self._width = newValue;
        }
    }

    // Field of wrapType. DTO container with a DrawingObject.
    private var _wrapType : WrapType? = nil;

    public var wrapType : WrapType? {
        get {
            return self._wrapType;
        }
        set {
            self._wrapType = newValue;
        }
    }

    private enum CodingKeys: String, CodingKey {
        case height = "Height";
        case imageDataLink = "ImageDataLink";
        case _left = "Left";
        case oleDataLink = "OleDataLink";
        case relativeHorizontalPosition = "RelativeHorizontalPosition";
        case relativeVerticalPosition = "RelativeVerticalPosition";
        case renderLinks = "RenderLinks";
        case top = "Top";
        case width = "Width";
        case wrapType = "WrapType";
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

    public override func collectFilesContent(_ resultFilesContent : inout [FileContent]) {
        super.collectFilesContent(resultFilesContent);
        if (self.imageDataLink != nil)
        {
            self.imageDataLink!.collectFilesContent(&resultFilesContent);
        }


        if (self.oleDataLink != nil)
        {
            self.oleDataLink!.collectFilesContent(&resultFilesContent);
        }



        if (self.renderLinks != nil)
        {
            for element in self.renderLinks! {
                element.collectFilesContent(&resultFilesContent);
            }
        }




    }

    // Sets height. Gets or sets the height of the DrawingObject in points.
    public func setHeight(height : Double?) -> DrawingObject {
        self.height = height;
        return self;
    }

    // Gets height. Gets or sets the height of the DrawingObject in points.
    public func getHeight() -> Double? {
        return self.height;
    }


    // Sets imageDataLink. Gets or sets the link to image data. Can be null if shape does not have an image.
    public func setImageDataLink(imageDataLink : WordsApiLink?) -> DrawingObject {
        self.imageDataLink = imageDataLink;
        return self;
    }

    // Gets imageDataLink. Gets or sets the link to image data. Can be null if shape does not have an image.
    public func getImageDataLink() -> WordsApiLink? {
        return self.imageDataLink;
    }


    // Sets _left. Gets or sets the distance in points from the origin to the left side of the image.
    public func setLeft(_left : Double?) -> DrawingObject {
        self._left = _left;
        return self;
    }

    // Gets _left. Gets or sets the distance in points from the origin to the left side of the image.
    public func getLeft() -> Double? {
        return self._left;
    }


    // Sets oleDataLink. Gets or sets the link to OLE object. Can be null if shape does not have OLE data.
    public func setOleDataLink(oleDataLink : WordsApiLink?) -> DrawingObject {
        self.oleDataLink = oleDataLink;
        return self;
    }

    // Gets oleDataLink. Gets or sets the link to OLE object. Can be null if shape does not have OLE data.
    public func getOleDataLink() -> WordsApiLink? {
        return self.oleDataLink;
    }


    // Sets relativeHorizontalPosition. Gets or sets the relative horizontal position, from which the distance to the image is measured.
    public func setRelativeHorizontalPosition(relativeHorizontalPosition : RelativeHorizontalPosition?) -> DrawingObject {
        self.relativeHorizontalPosition = relativeHorizontalPosition;
        return self;
    }

    // Gets relativeHorizontalPosition. Gets or sets the relative horizontal position, from which the distance to the image is measured.
    public func getRelativeHorizontalPosition() -> RelativeHorizontalPosition? {
        return self.relativeHorizontalPosition;
    }


    // Sets relativeVerticalPosition. Gets or sets the relative vertical position, from which the distance to the image is measured.
    public func setRelativeVerticalPosition(relativeVerticalPosition : RelativeVerticalPosition?) -> DrawingObject {
        self.relativeVerticalPosition = relativeVerticalPosition;
        return self;
    }

    // Gets relativeVerticalPosition. Gets or sets the relative vertical position, from which the distance to the image is measured.
    public func getRelativeVerticalPosition() -> RelativeVerticalPosition? {
        return self.relativeVerticalPosition;
    }


    // Sets renderLinks. Gets or sets the list of links that originate from this DrawingObjectDto.
    public func setRenderLinks(renderLinks : [WordsApiLink]?) -> DrawingObject {
        self.renderLinks = renderLinks;
        return self;
    }

    // Gets renderLinks. Gets or sets the list of links that originate from this DrawingObjectDto.
    public func getRenderLinks() -> [WordsApiLink]? {
        return self.renderLinks;
    }


    // Sets top. Gets or sets the distance in points from the origin to the top side of the image.
    public func setTop(top : Double?) -> DrawingObject {
        self.top = top;
        return self;
    }

    // Gets top. Gets or sets the distance in points from the origin to the top side of the image.
    public func getTop() -> Double? {
        return self.top;
    }


    // Sets width. Gets or sets the width of the DrawingObjects in points.
    public func setWidth(width : Double?) -> DrawingObject {
        self.width = width;
        return self;
    }

    // Gets width. Gets or sets the width of the DrawingObjects in points.
    public func getWidth() -> Double? {
        return self.width;
    }


    // Sets wrapType. Gets or sets the option that controls how to wrap text around the image.
    public func setWrapType(wrapType : WrapType?) -> DrawingObject {
        self.wrapType = wrapType;
        return self;
    }

    // Gets wrapType. Gets or sets the option that controls how to wrap text around the image.
    public func getWrapType() -> WrapType? {
        return self.wrapType;
    }
}
