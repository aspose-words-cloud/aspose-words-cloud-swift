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

public class PdfDigitalSignatureDetailsData : Decodable {
        
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
        
    public init(certificateFilename : String? = nil, hashAlgorithm : String? = nil, location : String? = nil, reason : String? = nil, signatureDate : Date? = nil) {
        self.certificateFilename = certificateFilename;
        self.hashAlgorithm = hashAlgorithm;
        self.location = location;
        self.reason = reason;
        self.signatureDate = signatureDate;
    }
        
    public func getPdfDigitalSignatureDetailsData() -> String? {
        return self.certificateFilename;
    }
    public func getPdfDigitalSignatureDetailsData() -> String? {
        return self.hashAlgorithm;
    }
    public func getPdfDigitalSignatureDetailsData() -> String? {
        return self.location;
    }
    public func getPdfDigitalSignatureDetailsData() -> String? {
        return self.reason;
    }
    public func getPdfDigitalSignatureDetailsData() -> Date? {
        return self.signatureDate;
    }
}
