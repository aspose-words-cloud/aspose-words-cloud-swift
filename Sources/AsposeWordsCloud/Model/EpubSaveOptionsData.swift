/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="EpubSaveOptionsData.swift">
 *   Copyright (c) 2025 Aspose.Words for Cloud
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

// Container class for epub save options.
public class EpubSaveOptionsData : HtmlSaveOptionsData {
    // Field of navigationMapLevel. Container class for epub save options.
    private var _navigationMapLevel : Int? = nil;

    public var navigationMapLevel : Int? {
        get {
            return self._navigationMapLevel;
        }
        set {
            self._navigationMapLevel = newValue;
        }
    }

    // Field of saveFormat. Container class for epub save options.
    private final let _saveFormat : String? = "epub";

    override public var saveFormat : String? {
        get {
            return self._saveFormat;
        }
    }

    private enum CodingKeys: String, CodingKey {
        case navigationMapLevel = "NavigationMapLevel";
        case invalidCodingKey;
    }

    public override init() {
        super.init();
    }

    public required init(from json: [String: Any]) throws {
        try super.init(from: json);
        self.navigationMapLevel = json["NavigationMapLevel"] as? Int;
    }

    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder);
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.navigationMapLevel = try container.decodeIfPresent(Int.self, forKey: .navigationMapLevel);
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder);
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.navigationMapLevel != nil) {
            try container.encode(self.navigationMapLevel, forKey: .navigationMapLevel);
        }
    }

    public override func collectFilesContent(_ resultFilesContent : inout [FileReference]) {
    }

    public override func validate() throws {
        try super.validate();
    }

    // Sets navigationMapLevel. Gets or sets the maximum level of headings populated to the navigation map when exporting.
    public func setNavigationMapLevel(navigationMapLevel : Int?) -> EpubSaveOptionsData {
        self.navigationMapLevel = navigationMapLevel;
        return self;
    }

    // Gets navigationMapLevel. Gets or sets the maximum level of headings populated to the navigation map when exporting.
    public func getNavigationMapLevel() -> Int? {
        return self.navigationMapLevel;
    }
}
