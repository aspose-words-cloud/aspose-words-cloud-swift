/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="TextSaveOptionsData.swift">
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

// Container class for text save options.
@available(macOS 10.12, iOS 10.3, watchOS 3.3, tvOS 12.0, *)
public class TextSaveOptionsData : TxtSaveOptionsBaseData {
    // Field of addBidiMarks. Container class for text save options.
    private var _addBidiMarks : Bool? = nil;

    public var addBidiMarks : Bool? {
        get {
            return self._addBidiMarks;
        }
        set {
            self._addBidiMarks = newValue;
        }
    }

    // Field of maxCharactersPerLine. Container class for text save options.
    private var _maxCharactersPerLine : Int? = nil;

    public var maxCharactersPerLine : Int? {
        get {
            return self._maxCharactersPerLine;
        }
        set {
            self._maxCharactersPerLine = newValue;
        }
    }

    // Field of preserveTableLayout. Container class for text save options.
    private var _preserveTableLayout : Bool? = nil;

    public var preserveTableLayout : Bool? {
        get {
            return self._preserveTableLayout;
        }
        set {
            self._preserveTableLayout = newValue;
        }
    }

    // Field of simplifyListLabels. Container class for text save options.
    private var _simplifyListLabels : Bool? = nil;

    public var simplifyListLabels : Bool? {
        get {
            return self._simplifyListLabels;
        }
        set {
            self._simplifyListLabels = newValue;
        }
    }

    // Field of saveFormat. Container class for text save options.
    private final let _saveFormat : String? = "txt";

    override public var saveFormat : String? {
        get {
            return self._saveFormat;
        }
    }

    private enum CodingKeys: String, CodingKey {
        case addBidiMarks = "AddBidiMarks";
        case maxCharactersPerLine = "MaxCharactersPerLine";
        case preserveTableLayout = "PreserveTableLayout";
        case simplifyListLabels = "SimplifyListLabels";
        case invalidCodingKey;
    }

    public override init() {
        super.init();
    }

    public required init(from json: [String: Any]) throws {
        try super.init(from: json);
        self.addBidiMarks = json["AddBidiMarks"] as? Bool;
        self.maxCharactersPerLine = json["MaxCharactersPerLine"] as? Int;
        self.preserveTableLayout = json["PreserveTableLayout"] as? Bool;
        self.simplifyListLabels = json["SimplifyListLabels"] as? Bool;
    }

    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder);
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.addBidiMarks = try container.decodeIfPresent(Bool.self, forKey: .addBidiMarks);
        self.maxCharactersPerLine = try container.decodeIfPresent(Int.self, forKey: .maxCharactersPerLine);
        self.preserveTableLayout = try container.decodeIfPresent(Bool.self, forKey: .preserveTableLayout);
        self.simplifyListLabels = try container.decodeIfPresent(Bool.self, forKey: .simplifyListLabels);
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder);
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.addBidiMarks != nil) {
            try container.encode(self.addBidiMarks, forKey: .addBidiMarks);
        }
        if (self.maxCharactersPerLine != nil) {
            try container.encode(self.maxCharactersPerLine, forKey: .maxCharactersPerLine);
        }
        if (self.preserveTableLayout != nil) {
            try container.encode(self.preserveTableLayout, forKey: .preserveTableLayout);
        }
        if (self.simplifyListLabels != nil) {
            try container.encode(self.simplifyListLabels, forKey: .simplifyListLabels);
        }
    }

    public override func collectFilesContent(_ resultFilesContent : inout [FileReference]) {
    }

    public override func validate() throws {
        try super.validate();
        if (self.maxCharactersPerLine == nil)
        {
            throw WordsApiError.requiredParameterError(paramName: "maxCharactersPerLine");
        }
    }

    // Sets addBidiMarks. Gets or sets a value indicating whether to add bi-directional marks before each BiDi run when exporting in plain text format. The default value is true.
    public func setAddBidiMarks(addBidiMarks : Bool?) -> TextSaveOptionsData {
        self.addBidiMarks = addBidiMarks;
        return self;
    }

    // Gets addBidiMarks. Gets or sets a value indicating whether to add bi-directional marks before each BiDi run when exporting in plain text format. The default value is true.
    public func getAddBidiMarks() -> Bool? {
        return self.addBidiMarks;
    }


    // Sets maxCharactersPerLine. Gets or sets an integer value that specifies the maximum number of characters per one line. The default value is 0, that means no limit.
    public func setMaxCharactersPerLine(maxCharactersPerLine : Int?) -> TextSaveOptionsData {
        self.maxCharactersPerLine = maxCharactersPerLine;
        return self;
    }

    // Gets maxCharactersPerLine. Gets or sets an integer value that specifies the maximum number of characters per one line. The default value is 0, that means no limit.
    public func getMaxCharactersPerLine() -> Int? {
        return self.maxCharactersPerLine;
    }


    // Sets preserveTableLayout. Gets or sets a value indicating whether the program should attempt to preserve layout of tables when saving in the plain text format.
    public func setPreserveTableLayout(preserveTableLayout : Bool?) -> TextSaveOptionsData {
        self.preserveTableLayout = preserveTableLayout;
        return self;
    }

    // Gets preserveTableLayout. Gets or sets a value indicating whether the program should attempt to preserve layout of tables when saving in the plain text format.
    public func getPreserveTableLayout() -> Bool? {
        return self.preserveTableLayout;
    }


    // Sets simplifyListLabels. Gets or sets a value indicating whether the program should simplify list labels in case of complex label formatting not being adequately represented by plain text.
    public func setSimplifyListLabels(simplifyListLabels : Bool?) -> TextSaveOptionsData {
        self.simplifyListLabels = simplifyListLabels;
        return self;
    }

    // Gets simplifyListLabels. Gets or sets a value indicating whether the program should simplify list labels in case of complex label formatting not being adequately represented by plain text.
    public func getSimplifyListLabels() -> Bool? {
        return self.simplifyListLabels;
    }
}
