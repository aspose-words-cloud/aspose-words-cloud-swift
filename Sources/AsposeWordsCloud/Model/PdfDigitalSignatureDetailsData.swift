/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="PdfDigitalSignatureDetailsData.swift">
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

// Container class for details of digital signature.
public class PdfDigitalSignatureDetailsData : Codable, WordsApiModel {
    // Field of certificateFilename. Container class for details of digital signature.
    private var certificateFilename : String?;

    // Field of hashAlgorithm. Container class for details of digital signature.
    private var hashAlgorithm : String?;

    // Field of location. Container class for details of digital signature.
    private var location : String?;

    // Field of reason. Container class for details of digital signature.
    private var reason : String?;

    // Field of signatureDate. Container class for details of digital signature.
    private var signatureDate : Date?;

    private enum CodingKeys: String, CodingKey {
        case certificateFilename = "CertificateFilename";
        case hashAlgorithm = "HashAlgorithm";
        case location = "Location";
        case reason = "Reason";
        case signatureDate = "SignatureDate";
        case invalidCodingKey;
    }

    public init() {
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.certificateFilename = try container.decodeIfPresent(String.self, forKey: .certificateFilename);
        self.hashAlgorithm = try container.decodeIfPresent(String.self, forKey: .hashAlgorithm);
        self.location = try container.decodeIfPresent(String.self, forKey: .location);
        self.reason = try container.decodeIfPresent(String.self, forKey: .reason);
        var raw_signatureDate = try container.decodeIfPresent(String.self, forKey: .signatureDate);
        if (raw_signatureDate != nil) {
            raw_signatureDate = raw_signatureDate!.replacingOccurrences(of: "\\.\\d+", with: "", options: .regularExpression);
            self.signatureDate = ObjectSerializer.customIso8601.date(from: raw_signatureDate!)!;
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

    // Sets certificateFilename. Gets or sets the certificate's filename using for signing.
    public func setCertificateFilename(certificateFilename : String?) {
        self.certificateFilename = certificateFilename;
    }

    // Gets certificateFilename. Gets or sets the certificate's filename using for signing.
    public func getCertificateFilename() -> String? {
        return self.certificateFilename;
    }

    // Sets hashAlgorithm. Gets or sets the hash algorithm.
    public func setHashAlgorithm(hashAlgorithm : String?) {
        self.hashAlgorithm = hashAlgorithm;
    }

    // Gets hashAlgorithm. Gets or sets the hash algorithm.
    public func getHashAlgorithm() -> String? {
        return self.hashAlgorithm;
    }

    // Sets location. Gets or sets the location of the signing.
    public func setLocation(location : String?) {
        self.location = location;
    }

    // Gets location. Gets or sets the location of the signing.
    public func getLocation() -> String? {
        return self.location;
    }

    // Sets reason. Gets or sets the reason for the signing.
    public func setReason(reason : String?) {
        self.reason = reason;
    }

    // Gets reason. Gets or sets the reason for the signing.
    public func getReason() -> String? {
        return self.reason;
    }

    // Sets signatureDate. Gets or sets the date of the signing.
    public func setSignatureDate(signatureDate : Date?) {
        self.signatureDate = signatureDate;
    }

    // Gets signatureDate. Gets or sets the date of the signing.
    public func getSignatureDate() -> Date? {
        return self.signatureDate;
    }
}
