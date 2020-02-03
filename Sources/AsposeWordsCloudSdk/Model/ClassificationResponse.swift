/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="ClassificationResponse.swift">
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

public class ClassificationResponse : WordsResponse {
        
    // Gets or sets best class name.
    private let bestClassName : String?;
    // Gets or sets best class probability.
    private let bestClassProbability : Double?;
    // Gets or sets array of best classes results.
    private let bestResults : [ClassificationResult]?;
        
    private enum CodingKeys: String, CodingKey { case bestClassName, bestClassProbability, bestResults }
        
    public init(bestClassName : String? = nil, bestClassProbability : Double? = nil, bestResults : [ClassificationResult]? = nil) {
        self.bestClassName = bestClassName;
        self.bestClassProbability = bestClassProbability;
        self.bestResults = bestResults;
    }
    
    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self);
        try super.init(from: try container.superDecoder());
        if let bestClassName = try container.decodeIfPresent(String.self, forKey: .bestClassName) {
            self.bestClassName = bestClassName;
        }
        if let bestClassProbability = try container.decodeIfPresent(Double.self, forKey: .bestClassProbability) {
            self.bestClassProbability = bestClassProbability;
        }
        if let bestResults = try container.decodeIfPresent([ClassificationResult].self, forKey: .bestResults) {
            self.bestResults = bestResults;
        }

    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.bestClassName != nil) {
            try container.encode(self.bestClassName, forKey: .bestClassName);
        }
        if (self.bestClassProbability != nil) {
            try container.encode(self.bestClassProbability, forKey: .bestClassProbability);
        }
        if (self.bestResults != nil) {
            try container.encode(self.bestResults, forKey: .bestResults);
        }
        
        try super.encode(to: container.superEncoder());
    }
        
    public func getBestClassName() -> String? {
        return self.bestClassName;
    }
    public func getBestClassProbability() -> Double? {
        return self.bestClassProbability;
    }
    public func getBestResults() -> [ClassificationResult]? {
        return self.bestResults;
    }
}
