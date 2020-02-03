/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="PdfEncryptionDetailsData.swift">
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

public class PdfEncryptionDetailsData : Decodable {
        
    // Gets or sets specifies the encryption algorithm to use.
    private let encryptionAlgorithm : String?;
    // Gets or sets specifies the owner password for the encrypted PDF document.
    private let ownerPassword : String?;
    // Gets or sets specifies the operations that are allowed to a user on an encrypted PDF document.
    private let permissions : String?;
    // Gets or sets specifies the user password required for opening the encrypted PDF document.
    private let userPassword : String?;
        
    public init(encryptionAlgorithm : String? = nil, ownerPassword : String? = nil, permissions : String? = nil, userPassword : String? = nil) {
        self.encryptionAlgorithm = encryptionAlgorithm;
        self.ownerPassword = ownerPassword;
        self.permissions = permissions;
        self.userPassword = userPassword;
    }
        
    public func getEncryptionAlgorithm() -> String? {
        return self.encryptionAlgorithm;
    }
    public func getOwnerPassword() -> String? {
        return self.ownerPassword;
    }
    public func getPermissions() -> String? {
        return self.permissions;
    }
    public func getUserPassword() -> String? {
        return self.userPassword;
    }
}
