/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="Runs.swift">
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

// DTO container with a collection of runs.
@available(macOS 10.12, iOS 10.3, watchOS 3.3, tvOS 12.0, *)
public class Runs : LinkElement {
    // Field of list. DTO container with a collection of runs.
    private var _list : [Run]? = nil;

    public var list : [Run]? {
        get {
            return self._list;
        }
        set {
            self._list = newValue;
        }
    }

    private enum CodingKeys: String, CodingKey {
        case list = "List";
        case invalidCodingKey;
    }

    public override init() {
        super.init();
    }

    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder);
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.list = try container.decodeIfPresent([Run].self, forKey: .list);
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder);
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.list != nil) {
            try container.encode(self.list, forKey: .list);
        }
    }

    public override func collectFilesContent(_ resultFilesContent : inout [FileContent]) {
        super.collectFilesContent(resultFilesContent);
        if (self.list != nil)
        {
            for element in self.list! {
                element.collectFilesContent(&resultFilesContent);
            }
        }

    }

    // Sets list. Gets or sets the collection of runs.
    public func setList(list : [Run]?) -> Runs {
        self.list = list;
        return self;
    }

    // Gets list. Gets or sets the collection of runs.
    public func getList() -> [Run]? {
        return self.list;
    }
}
