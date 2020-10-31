/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="StylesTests.swift">
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

import XCTest
@testable import AsposeWordsCloud

// Example of how to work with styles.
class StylesTests: BaseTestContext {
    static var allTests = [
        ("testGetStyles", testGetStyles),
        ("testGetStyle", testGetStyle),
        ("testUpdateStyle", testUpdateStyle),
        ("testInsertStyle", testInsertStyle),
        ("testCopyStyle", testCopyStyle),
        ("testGetStyleFromDocumentElement", testGetStyleFromDocumentElement),
        ("testApplyStyleToDocumentElement", testApplyStyleToDocumentElement)
    ];

    let remoteDataFolder = BaseTestContext.getRemoteTestDataFolder() + "/DocumentElements/Styles";
    let localFile = "DocumentElements/Styles/GetStyles.docx";

    // Test for getting styles from document.
    func testGetStyles() throws {
      let remoteFileName = "TestGetStyles.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = GetStylesRequest(name: remoteFileName, folder: remoteDataFolder);
      let actual = try super.getApi().getStyles(request: request);
      assert(actual.getStyles() != nil);
      assert(22 == actual.getStyles()!.count);
      assert( (actual.getStyles()![0].getName() ?? "").hasPrefix("Default Paragraph Font") == true);
    }

    // Test for getting style from document.
    func testGetStyle() throws {
      let remoteFileName = "TestGetStyle.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = GetStyleRequest(name: remoteFileName, styleName: "Heading 1", folder: remoteDataFolder);
      let actual = try super.getApi().getStyle(request: request);
      assert(actual.getStyle() != nil);
      assert( (actual.getStyle()!.getName() ?? "").hasPrefix("Heading 1") == true);
    }

    // Test for updating style from document.
    func testUpdateStyle() throws {
      let remoteFileName = "TestUpdateStyle.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let requestStyleUpdate = StyleUpdate();
      requestStyleUpdate.setName(name: "My Style");


      let request = UpdateStyleRequest(name: remoteFileName, styleUpdate: requestStyleUpdate, styleName: "Heading 1", folder: remoteDataFolder);
      let actual = try super.getApi().updateStyle(request: request);
      assert(actual.getStyle() != nil);
      assert( (actual.getStyle()!.getName() ?? "").hasPrefix("My Style") == true);
    }

    // Test for inserting style from document.
    func testInsertStyle() throws {
      let remoteFileName = "TestInsertStyle.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let requestStyleInsert = StyleInsert();
      requestStyleInsert.setStyleName(styleName: "My Style");
      requestStyleInsert.setStyleType(styleType: StyleInsert.StyleType.paragraph);


      let request = InsertStyleRequest(name: remoteFileName, styleInsert: requestStyleInsert, folder: remoteDataFolder);
      let actual = try super.getApi().insertStyle(request: request);
      assert(actual.getStyle() != nil);
      assert( (actual.getStyle()!.getName() ?? "").hasPrefix("My Style") == true);
    }

    // Test for coping style from document.
    func testCopyStyle() throws {
      let remoteFileName = "TestCopyStyle.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let requestStyleCopy = StyleCopy();
      requestStyleCopy.setStyleName(styleName: "Heading 1");


      let request = CopyStyleRequest(name: remoteFileName, styleCopy: requestStyleCopy, folder: remoteDataFolder);
      let actual = try super.getApi().copyStyle(request: request);
      assert(actual.getStyle() != nil);
      assert( (actual.getStyle()!.getName() ?? "").hasPrefix("Heading 1_0") == true);
    }

    // Test for getting style from document element.
    func testGetStyleFromDocumentElement() throws {
      let remoteFileName = "TestGetStyleFromDocumentElement.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = GetStyleFromDocumentElementRequest(name: remoteFileName, styledNodePath: "paragraphs/1/paragraphFormat", folder: remoteDataFolder);
      let actual = try super.getApi().getStyleFromDocumentElement(request: request);
      assert(actual.getStyle() != nil);
      assert( (actual.getStyle()!.getName() ?? "").hasPrefix("TOC 1") == true);
    }

    // Test for applying style to document element.
    func testApplyStyleToDocumentElement() throws {
      let remoteFileName = "TestApplyStyleToDocumentElement.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let requestStyleApply = StyleApply();
      requestStyleApply.setStyleName(styleName: "Heading 1");


      let request = ApplyStyleToDocumentElementRequest(name: remoteFileName, styleApply: requestStyleApply, styledNodePath: "paragraphs/1/paragraphFormat", folder: remoteDataFolder);
      _ = try super.getApi().applyStyleToDocumentElement(request: request);
    }
}
