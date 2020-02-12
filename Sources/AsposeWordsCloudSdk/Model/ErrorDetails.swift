/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="ErrorDetails.swift">
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

// The error details
public class ErrorDetails : Codable, WordsApiModel {
    
    // Field of requestId. The request id.      
    private var requestId : String?;
    
    // Field of errorDateTime. Error datetime.      
    private var errorDateTime : Date?;
        
    private enum CodingKeys: String, CodingKey {
        case requestId;
        case errorDateTime;
        case invalidCodingKey;
    }
        
    public init() {
        
    }
    
    public required init(from decoder: Decoder) throws {
        
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.requestId = try container.decodeIfPresent(String.self, forKey: .requestId);
        self.errorDateTime = try container.decode(Date.self, forKey: .errorDateTime);
    }

    public func encode(to encoder: Encoder) throws {
        
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.requestId != nil) {
            try container.encode(self.requestId, forKey: .requestId);
        }
        if (self.errorDateTime == nil) {
            throw WordsApiError.requiredArgumentError(argumentName: "errorDateTime");
        }
        try container.encode(self.errorDateTime, forKey: .errorDateTime);
    }
    
    // Sets requestId. The request id.  
    public func setRequestId(requestId : String?) {
        self.requestId = requestId;
    }
    
    // Gets requestId. The request id.  
    public func getRequestId() -> String? {
        return self.requestId;
    }
    
    // Sets errorDateTime. Error datetime.  
    public func setErrorDateTime(errorDateTime : Date) {
        self.errorDateTime = errorDateTime;
    }
    
    // Gets errorDateTime. Error datetime.  
    public func getErrorDateTime() -> Date {
        return self.errorDateTime!;
    }
}
