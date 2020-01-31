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

public class ApiError : Decodable {
        
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
        
    public init(code : String? = nil, message : String? = nil, _description : String? = nil, dateTime : Date? = nil, innerError : ApiError? = nil) {
        self.code = code;
        self.message = message;
        self._description = _description;
        self.dateTime = dateTime;
        self.innerError = innerError;
    }
        
    public func getApiError() -> String? {
        return self.code;
    }
    public func getApiError() -> String? {
        return self.message;
    }
    public func getApiError() -> String? {
        return self._description;
    }
    public func getApiError() -> Date? {
        return self.dateTime;
    }
    public func getApiError() -> ApiError? {
        return self.innerError;
    }
}
