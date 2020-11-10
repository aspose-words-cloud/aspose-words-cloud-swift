/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="InternalError.swift">
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

// Error.
public class InternalError : Codable, WordsApiModel {
    // Field of code. Error.
    private var code : String?;

    // Field of description. Error.
    private var description : String?;

    // Field of innerError. Error.
    private var innerError : ErrorDetails?;

    // Field of message. Error.
    private var message : String?;

    private enum CodingKeys: String, CodingKey {
        case code = "Code";
        case description = "Description";
        case innerError = "InnerError";
        case message = "Message";
        case invalidCodingKey;
    }

    public init() {
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.code = try container.decodeIfPresent(String.self, forKey: .code);
        self.description = try container.decodeIfPresent(String.self, forKey: .description);
        self.innerError = try container.decodeIfPresent(ErrorDetails.self, forKey: .innerError);
        self.message = try container.decodeIfPresent(String.self, forKey: .message);
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.code != nil) {
            try container.encode(self.code, forKey: .code);
        }
        if (self.description != nil) {
            try container.encode(self.description, forKey: .description);
        }
        if (self.innerError != nil) {
            try container.encode(self.innerError, forKey: .innerError);
        }
        if (self.message != nil) {
            try container.encode(self.message, forKey: .message);
        }
    }

    // Sets code. Code.
    public func setCode(code : String?) {
        self.code = code;
    }

    // Gets code. Code.
    public func getCode() -> String? {
        return self.code;
    }

    // Sets description. Description.
    public func setDescription(description : String?) {
        self.description = description;
    }

    // Gets description. Description.
    public func getDescription() -> String? {
        return self.description;
    }

    // Sets innerError. Inner Error.
    public func setInnerError(innerError : ErrorDetails?) {
        self.innerError = innerError;
    }

    // Gets innerError. Inner Error.
    public func getInnerError() -> ErrorDetails? {
        return self.innerError;
    }

    // Sets message. Message.
    public func setMessage(message : String?) {
        self.message = message;
    }

    // Gets message. Message.
    public func getMessage() -> String? {
        return self.message;
    }
}
