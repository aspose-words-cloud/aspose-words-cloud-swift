/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="ProtectionRequest.swift">
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

public class ProtectionRequest : Decodable {
        
    // Gets or sets current password.
    private let password : String?;
    // Gets or sets new password.
    private let newPassword : String?;
    // Gets or sets new type of protection.
    private let protectionType : String?;
        
    public init(password : String? = nil, newPassword : String? = nil, protectionType : String? = nil) {
        self.password = password;
        self.newPassword = newPassword;
        self.protectionType = protectionType;
    }
        
    public func getPassword() -> String? {
        return self.password;
    }
    public func getNewPassword() -> String? {
        return self.newPassword;
    }
    public func getProtectionType() -> String? {
        return self.protectionType;
    }
}
