/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="TabStopsResponse.swift">
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

// The REST response with an array of tab stops.
@available(macOS 10.12, iOS 10.3, watchOS 3.3, tvOS 12.0, *)
public class TabStopsResponse : WordsResponse {
    // Field of tabStops. The REST response with an array of tab stops.
    private var _tabStops : [TabStop]? = nil;

    public var tabStops : [TabStop]? {
        get {
            return self._tabStops;
        }
        set {
            self._tabStops = newValue;
        }
    }

    private enum CodingKeys: String, CodingKey {
        case tabStops = "TabStops";
        case invalidCodingKey;
    }

    public override init() {
        super.init();
    }

    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder);
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.tabStops = try container.decodeIfPresent([TabStop].self, forKey: .tabStops);
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder);
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.tabStops != nil) {
            try container.encode(self.tabStops, forKey: .tabStops);
        }
    }

    public override func collectFilesContent(_ resultFilesContent : inout [FileContent]) {
        super.collectFilesContent(resultFilesContent);
        if (self.tabStops != nil)
        {
            for element in self.tabStops! {
                element.collectFilesContent(&resultFilesContent);
            }
        }

    }

    // Sets tabStops. Gets or sets the array of tab stops.
    public func setTabStops(tabStops : [TabStop]?) -> TabStopsResponse {
        self.tabStops = tabStops;
        return self;
    }

    // Gets tabStops. Gets or sets the array of tab stops.
    public func getTabStops() -> [TabStop]? {
        return self.tabStops;
    }
}
