/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="PdfDigitalSignatureDetailsData.swift">
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

public class PdfDigitalSignatureDetailsData : Codable {
        
    // Gets or sets certificate&#39;s filename using for signing.
    private let certificateFilename : String?;
    // Gets or sets hash algorithm.
    private let hashAlgorithm : String?;
    // Gets or sets location of the signing.
    private let location : String?;
    // Gets or sets reason for the signing.
    private let reason : String?;
    // Gets or sets date of the signing.
    private let signatureDate : Date?;
        
    private enum CodingKeys: String, CodingKey { case certificateFilename, hashAlgorithm, location, reason, signatureDate }
        
    public init(certificateFilename : String? = nil, hashAlgorithm : String? = nil, location : String? = nil, reason : String? = nil, signatureDate : Date? = nil) {
        self.certificateFilename = certificateFilename;
        self.hashAlgorithm = hashAlgorithm;
        self.location = location;
        self.reason = reason;
        self.signatureDate = signatureDate;
    }
    
    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self);
        
        if let certificateFilename = try container.decodeIfPresent(String.self, forKey: .certificateFilename) {
            self.certificateFilename = certificateFilename;
        }
        if let hashAlgorithm = try container.decodeIfPresent(String.self, forKey: .hashAlgorithm) {
            self.hashAlgorithm = hashAlgorithm;
        }
        if let location = try container.decodeIfPresent(String.self, forKey: .location) {
            self.location = location;
        }
        if let reason = try container.decodeIfPresent(String.self, forKey: .reason) {
            self.reason = reason;
        }
        if let signatureDate = try container.decodeIfPresent(Date.self, forKey: .signatureDate) {
            self.signatureDate = signatureDate;
        }

    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.certificateFilename != nil) {
            try container.encode(self.certificateFilename, forKey: .certificateFilename);
        }
        if (self.hashAlgorithm != nil) {
            try container.encode(self.hashAlgorithm, forKey: .hashAlgorithm);
        }
        if (self.location != nil) {
            try container.encode(self.location, forKey: .location);
        }
        if (self.reason != nil) {
            try container.encode(self.reason, forKey: .reason);
        }
        if (self.signatureDate != nil) {
            try container.encode(self.signatureDate, forKey: .signatureDate);
        }
        
        
    }
        
    public func getCertificateFilename() -> String? {
        return self.certificateFilename;
    }
    public func getHashAlgorithm() -> String? {
        return self.hashAlgorithm;
    }
    public func getLocation() -> String? {
        return self.location;
    }
    public func getReason() -> String? {
        return self.reason;
    }
    public func getSignatureDate() -> Date? {
        return self.signatureDate;
    }
}
