/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="ApiError.swift">
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

public class ApiError : Codable {
        
    // Gets or sets api error code.
    private let code : String?;
    // Gets or sets error message.
    private let message : String?;
    // Gets or sets error description.
    private let _description : String?;
    // Gets or sets server datetime.
    private let dateTime : Date?;
    // Gets or sets inner error.
    private let innerError : ApiError?;
        
    private enum CodingKeys: String, CodingKey { case code, message, _description, dateTime, innerError }
        
    public init(code : String? = nil, message : String? = nil, _description : String? = nil, dateTime : Date? = nil, innerError : ApiError? = nil) {
        self.code = code;
        self.message = message;
        self._description = _description;
        self.dateTime = dateTime;
        self.innerError = innerError;
    }
    
    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self);
        
        self.code = try container.decodeIfPresent(String.self, forKey: .code);
        self.message = try container.decodeIfPresent(String.self, forKey: .message);
        self._description = try container.decodeIfPresent(String.self, forKey: ._description);
        self.dateTime = try container.decodeIfPresent(Date.self, forKey: .dateTime);
        self.innerError = try container.decodeIfPresent(ApiError.self, forKey: .innerError);
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.code != nil) {
            try container.encode(self.code, forKey: .code);
        }
        if (self.message != nil) {
            try container.encode(self.message, forKey: .message);
        }
        if (self._description != nil) {
            try container.encode(self._description, forKey: ._description);
        }
        if (self.dateTime != nil) {
            try container.encode(self.dateTime, forKey: .dateTime);
        }
        if (self.innerError != nil) {
            try container.encode(self.innerError, forKey: .innerError);
        }
        
    }
        
    public func getCode() -> String? {
        return self.code;
    }
    public func getMessage() -> String? {
        return self.message;
    }
    public func getDescription() -> String? {
        return self._description;
    }
    public func getDateTime() -> Date? {
        return self.dateTime;
    }
    public func getInnerError() -> ApiError? {
        return self.innerError;
    }
}
