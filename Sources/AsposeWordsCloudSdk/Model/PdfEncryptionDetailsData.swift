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

public class PdfEncryptionDetailsData : Codable {
        
    // Gets or sets specifies the encryption algorithm to use.
    private var encryptionAlgorithm : String?;
    // Gets or sets specifies the owner password for the encrypted PDF document.
    private var ownerPassword : String?;
    // Gets or sets specifies the operations that are allowed to a user on an encrypted PDF document.
    private var permissions : String?;
    // Gets or sets specifies the user password required for opening the encrypted PDF document.
    private var userPassword : String?;
        
    private enum CodingKeys: String, CodingKey {
        case encryptionAlgorithm;
        case ownerPassword;
        case permissions;
        case userPassword;
        case invalidCodingKey;
    }
        
    public init() {
        
    }
    
    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self);
        
        self.encryptionAlgorithm = try container.decodeIfPresent(String.self, forKey: .encryptionAlgorithm);
        self.ownerPassword = try container.decodeIfPresent(String.self, forKey: .ownerPassword);
        self.permissions = try container.decodeIfPresent(String.self, forKey: .permissions);
        self.userPassword = try container.decodeIfPresent(String.self, forKey: .userPassword);
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.encryptionAlgorithm != nil) {
            try container.encode(self.encryptionAlgorithm, forKey: .encryptionAlgorithm);
        }
        if (self.ownerPassword != nil) {
            try container.encode(self.ownerPassword, forKey: .ownerPassword);
        }
        if (self.permissions != nil) {
            try container.encode(self.permissions, forKey: .permissions);
        }
        if (self.userPassword != nil) {
            try container.encode(self.userPassword, forKey: .userPassword);
        }
        
    }
        
    public func setEncryptionAlgorithm(encryptionAlgorithm : String?) {
        self.encryptionAlgorithm = encryptionAlgorithm;
    }
    
    public func getEncryptionAlgorithm() -> String? {
        return self.encryptionAlgorithm;
    }
    public func setOwnerPassword(ownerPassword : String?) {
        self.ownerPassword = ownerPassword;
    }
    
    public func getOwnerPassword() -> String? {
        return self.ownerPassword;
    }
    public func setPermissions(permissions : String?) {
        self.permissions = permissions;
    }
    
    public func getPermissions() -> String? {
        return self.permissions;
    }
    public func setUserPassword(userPassword : String?) {
        self.userPassword = userPassword;
    }
    
    public func getUserPassword() -> String? {
        return self.userPassword;
    }
}
