/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="ProtectionRequest.swift">
 *   Copyright (c) 2021 Aspose.Words for Cloud
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

// Request on changing of protection.
public class ProtectionRequest : Codable, WordsApiModel {
    // Field of newPassword. Request on changing of protection.
    private var newPassword : String?;

    // Field of password. Request on changing of protection.
    private var password : String?;

    // Field of protectionType. Request on changing of protection.
    private var protectionType : String?;

    private enum CodingKeys: String, CodingKey {
        case newPassword = "NewPassword";
        case password = "Password";
        case protectionType = "ProtectionType";
        case invalidCodingKey;
    }

    public init() {
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.newPassword = try container.decodeIfPresent(String.self, forKey: .newPassword);
        self.password = try container.decodeIfPresent(String.self, forKey: .password);
        self.protectionType = try container.decodeIfPresent(String.self, forKey: .protectionType);
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.newPassword != nil) {
            try container.encode(self.newPassword, forKey: .newPassword);
        }
        if (self.password != nil) {
            try container.encode(self.password, forKey: .password);
        }
        if (self.protectionType != nil) {
            try container.encode(self.protectionType, forKey: .protectionType);
        }
    }

    // Sets newPassword. Gets or sets the new password.
    public func setNewPassword(newPassword : String?) {
        self.newPassword = newPassword;
    }

    // Gets newPassword. Gets or sets the new password.
    public func getNewPassword() -> String? {
        return self.newPassword;
    }

    // Sets password. Gets or sets the current password.
    public func setPassword(password : String?) {
        self.password = password;
    }

    // Gets password. Gets or sets the current password.
    public func getPassword() -> String? {
        return self.password;
    }

    // Sets protectionType. Gets or sets the new type of protection.
    public func setProtectionType(protectionType : String?) {
        self.protectionType = protectionType;
    }

    // Gets protectionType. Gets or sets the new type of protection.
    public func getProtectionType() -> String? {
        return self.protectionType;
    }
}
