/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="ApiError.swift">
 *   Copyright (c) 2020 Aspose.Words for Cloud
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

// Api error.
public class ApiError : Codable, WordsApiModel {
    
    // Field of code. Gets or sets api error code.      
    private var code : String?;
    
    // Field of message. Gets or sets error message.      
    private var message : String?;
    
    // Field of _description. Gets or sets error description.      
    private var _description : String?;
    
    // Field of dateTime. Gets or sets server datetime.      
    private var dateTime : Date?;
    
    // Field of innerError. Gets or sets inner error.      
    private var innerError : ApiError?;
        
    private enum CodingKeys: String, CodingKey {
        case code;
        case message;
        case _description;
        case dateTime;
        case innerError;
        case invalidCodingKey;
    }
        
    public init() {
        
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
    
    // Sets code. Gets or sets api error code.  
    public func setCode(code : String?) {
        self.code = code;
    }
    
    // Gets code. Gets or sets api error code.  
    public func getCode() -> String? {
        return self.code;
    }
    
    // Sets message. Gets or sets error message.  
    public func setMessage(message : String?) {
        self.message = message;
    }
    
    // Gets message. Gets or sets error message.  
    public func getMessage() -> String? {
        return self.message;
    }
    
    // Sets _description. Gets or sets error description.  
    public func setDescription(_description : String?) {
        self._description = _description;
    }
    
    // Gets _description. Gets or sets error description.  
    public func getDescription() -> String? {
        return self._description;
    }
    
    // Sets dateTime. Gets or sets server datetime.  
    public func setDateTime(dateTime : Date?) {
        self.dateTime = dateTime;
    }
    
    // Gets dateTime. Gets or sets server datetime.  
    public func getDateTime() -> Date? {
        return self.dateTime;
    }
    
    // Sets innerError. Gets or sets inner error.  
    public func setInnerError(innerError : ApiError?) {
        self.innerError = innerError;
    }
    
    // Gets innerError. Gets or sets inner error.  
    public func getInnerError() -> ApiError? {
        return self.innerError;
    }
}
