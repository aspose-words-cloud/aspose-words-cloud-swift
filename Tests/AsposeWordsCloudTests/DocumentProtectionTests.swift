/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="DocumentProtectionTests.swift">
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

import XCTest
@testable import AsposeWordsCloud

// Example of how to set document protection.
@available(macOS 10.12, iOS 10.3, watchOS 3.3, tvOS 12.0, *)
class DocumentProtectionTests: BaseTestContext {
    static var allTests = [
        ("testProtectDocument", testProtectDocument),
        ("testProtectDocumentOnline", testProtectDocumentOnline),
        ("testGetDocumentProtection", testGetDocumentProtection),
        ("testGetDocumentProtectionOnline", testGetDocumentProtectionOnline),
        ("testDeleteUnprotectDocument", testDeleteUnprotectDocument),
        ("testDeleteUnprotectDocumentOnline", testDeleteUnprotectDocumentOnline)
    ];

    let remoteDataFolder = BaseTestContext.getRemoteTestDataFolder() + "/DocumentElements/DocumentProtection";
    let localFile = "Common/test_multi_pages.docx";

    // Test for setting document protection.
    func testProtectDocument() throws {
      let remoteFileName = "TestProtectDocument.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let requestProtectionRequest = ProtectionRequest()
        .setPassword(password: "123")
        .setProtectionType(protectionType: "ReadOnly");
      let request = ProtectDocumentRequest(name: remoteFileName, protectionRequest: requestProtectionRequest, folder: remoteDataFolder, destFileName: BaseTestContext.getRemoteTestOut() + "/" + remoteFileName);
      let actual = try super.getApi().protectDocument(request: request);
      XCTAssertNotNil(actual.getProtectionData());
      XCTAssertEqual(actual.getProtectionData()!.getProtectionType(), "ReadOnly");
    }

    // Test for setting document protection.
    func testProtectDocumentOnline() throws {
      let requestDocument = InputStream(url: self.getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false))!;
      let requestProtectionRequest = ProtectionRequest()
        .setNewPassword(newPassword: "123");
      let request = ProtectDocumentOnlineRequest(document: requestDocument, protectionRequest: requestProtectionRequest);
      _ = try super.getApi().protectDocumentOnline(request: request);
    }

    // Test for getting document protection.
    func testGetDocumentProtection() throws {
      let localFilePath = "DocumentActions/DocumentProtection/SampleProtectedBlankWordDocument.docx";
      let remoteFileName = "TestGetDocumentProtection.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFilePath, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = GetDocumentProtectionRequest(name: remoteFileName, folder: remoteDataFolder);
      _ = try super.getApi().getDocumentProtection(request: request);
    }

    // Test for getting document protection.
    func testGetDocumentProtectionOnline() throws {
      let requestDocument = InputStream(url: self.getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false))!;
      let request = GetDocumentProtectionOnlineRequest(document: requestDocument);
      _ = try super.getApi().getDocumentProtectionOnline(request: request);
    }

    // Test for deleting unprotect document.
    func testDeleteUnprotectDocument() throws {
      let localFilePath = "DocumentActions/DocumentProtection/SampleProtectedBlankWordDocument.docx";
      let remoteFileName = "TestDeleteUnprotectDocument.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFilePath, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let requestProtectionRequest = ProtectionRequest()
        .setPassword(password: "aspose");
      let request = UnprotectDocumentRequest(name: remoteFileName, protectionRequest: requestProtectionRequest, folder: remoteDataFolder);
      let actual = try super.getApi().unprotectDocument(request: request);
      XCTAssertNotNil(actual.getProtectionData());
      XCTAssertEqual(actual.getProtectionData()!.getProtectionType(), "NoProtection");
    }

    // Test for deleting unprotect document.
    func testDeleteUnprotectDocumentOnline() throws {
      let localFilePath = "DocumentActions/DocumentProtection/SampleProtectedBlankWordDocument.docx";

      let requestDocument = InputStream(url: self.getLocalTestDataFolder().appendingPathComponent(localFilePath, isDirectory: false))!;
      let requestProtectionRequest = ProtectionRequest()
        .setPassword(password: "aspose");
      let request = UnprotectDocumentOnlineRequest(document: requestDocument, protectionRequest: requestProtectionRequest);
      _ = try super.getApi().unprotectDocumentOnline(request: request);
    }
}
