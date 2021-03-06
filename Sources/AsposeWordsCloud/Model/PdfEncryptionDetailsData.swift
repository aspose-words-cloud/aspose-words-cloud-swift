/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="PdfEncryptionDetailsData.swift">
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

// Container class for details of encryption.
public class PdfEncryptionDetailsData : Codable, WordsApiModel {
    // Field of encryptionAlgorithm. Container class for details of encryption.
    private var encryptionAlgorithm : String?;

    // Field of ownerPassword. Container class for details of encryption.
    private var ownerPassword : String?;

    // Field of permissions. Container class for details of encryption.
    private var permissions : String?;

    // Field of userPassword. Container class for details of encryption.
    private var userPassword : String?;

    private enum CodingKeys: String, CodingKey {
        case encryptionAlgorithm = "EncryptionAlgorithm";
        case ownerPassword = "OwnerPassword";
        case permissions = "Permissions";
        case userPassword = "UserPassword";
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

    // Sets encryptionAlgorithm. Gets or sets the encryption algorithm to use.
    public func setEncryptionAlgorithm(encryptionAlgorithm : String?) {
        self.encryptionAlgorithm = encryptionAlgorithm;
    }

    // Gets encryptionAlgorithm. Gets or sets the encryption algorithm to use.
    public func getEncryptionAlgorithm() -> String? {
        return self.encryptionAlgorithm;
    }

    // Sets ownerPassword. Gets or sets the owner password for the encrypted PDF document.
    public func setOwnerPassword(ownerPassword : String?) {
        self.ownerPassword = ownerPassword;
    }

    // Gets ownerPassword. Gets or sets the owner password for the encrypted PDF document.
    public func getOwnerPassword() -> String? {
        return self.ownerPassword;
    }

    // Sets permissions. Gets or sets the operations that are allowed to a user on the encrypted PDF document.
    public func setPermissions(permissions : String?) {
        self.permissions = permissions;
    }

    // Gets permissions. Gets or sets the operations that are allowed to a user on the encrypted PDF document.
    public func getPermissions() -> String? {
        return self.permissions;
    }

    // Sets userPassword. Gets or sets the user password required for opening the encrypted PDF document.
    public func setUserPassword(userPassword : String?) {
        self.userPassword = userPassword;
    }

    // Gets userPassword. Gets or sets the user password required for opening the encrypted PDF document.
    public func getUserPassword() -> String? {
        return self.userPassword;
    }
}
