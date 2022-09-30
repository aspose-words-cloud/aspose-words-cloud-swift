/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="ClassificationResult.swift">
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

// Represents a single classification result.
@available(macOS 10.12, iOS 10.3, watchOS 3.3, tvOS 12.0, *)
public class ClassificationResult : Codable, WordsApiModel {
    // Field of className. Represents a single classification result.
    private var _className : String? = nil;

    public var className : String? {
        get {
            return self._className;
        }
        set {
            self._className = newValue;
        }
    }

    // Field of classProbability. Represents a single classification result.
    private var _classProbability : Double? = nil;

    public var classProbability : Double? {
        get {
            return self._classProbability;
        }
        set {
            self._classProbability = newValue;
        }
    }

    private enum CodingKeys: String, CodingKey {
        case className = "ClassName";
        case classProbability = "ClassProbability";
        case invalidCodingKey;
    }

    public init() {
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.className = try container.decodeIfPresent(String.self, forKey: .className);
        self.classProbability = try container.decodeIfPresent(Double.self, forKey: .classProbability);
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.className != nil) {
            try container.encode(self.className, forKey: .className);
        }
        if (self.classProbability != nil) {
            try container.encode(self.classProbability, forKey: .classProbability);
        }
    }

    public func collectFilesContent(_ resultFilesContent : inout [FileReference]) {
    }

    // Sets className. Gets or sets the name of the class.
    public func setClassName(className : String?) -> ClassificationResult {
        self.className = className;
        return self;
    }

    // Gets className. Gets or sets the name of the class.
    public func getClassName() -> String? {
        return self.className;
    }


    // Sets classProbability. Gets or sets the probability of class.
    public func setClassProbability(classProbability : Double?) -> ClassificationResult {
        self.classProbability = classProbability;
        return self;
    }

    // Gets classProbability. Gets or sets the probability of class.
    public func getClassProbability() -> Double? {
        return self.classProbability;
    }
}
