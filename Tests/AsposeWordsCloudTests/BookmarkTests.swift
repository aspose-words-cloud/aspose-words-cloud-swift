/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="BookmarkTests.swift">
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

// Example of how to get all bookmarks from document.
class BookmarkTests: BaseTestContext {
    static var allTests = [
        ("testGetBookmarks", testGetBookmarks),
        ("testGetBookmarkByName", testGetBookmarkByName),
        ("testUpdateBookmark", testUpdateBookmark)
    ];

    let remoteDataFolder = BaseTestContext.getRemoteTestDataFolder() + "/DocumentElements/Bookmarks";
    let localFile = "Common/test_multi_pages.docx";

    // Test for getting bookmarks from document.
    func testGetBookmarks() throws {
      let remoteFileName = "TestGetDocumentBookmarks.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = GetBookmarksRequest(name: remoteFileName, folder: remoteDataFolder);
      let actual = try super.getApi().getBookmarks(request: request);
      assert(actual.getBookmarks() != nil);
      assert(3 == actual.getBookmarks()!.getBookmarkList()!.count);
      assert( (actual.getBookmarks()!.getBookmarkList()![1].getName() ?? "").hasPrefix("aspose") == true);
    }

    // Test for getting bookmark by specified name.
    func testGetBookmarkByName() throws {
      let remoteFileName = "TestGetDocumentBookmarkByName.docx";
      let bookmarkName = "aspose";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = GetBookmarkByNameRequest(name: remoteFileName, bookmarkName: bookmarkName, folder: remoteDataFolder);
      let actual = try super.getApi().getBookmarkByName(request: request);
      assert(actual.getBookmark() != nil);
      assert( (actual.getBookmark()!.getName() ?? "").hasPrefix(bookmarkName) == true);
    }

    // Test for updating existed bookmark.
    func testUpdateBookmark() throws {
      let remoteFileName = "TestUpdateDocumentBookmark.docx";
      let bookmarkName = "aspose";
      let bookmarkText = "This will be the text for Aspose";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let requestBookmarkData = BookmarkData();
      requestBookmarkData.setName(name: bookmarkName);
      requestBookmarkData.setText(text: bookmarkText);


      let request = UpdateBookmarkRequest(name: remoteFileName, bookmarkData: requestBookmarkData, bookmarkName: bookmarkName, folder: remoteDataFolder, destFileName: BaseTestContext.getRemoteTestOut() + "/" + remoteFileName);
      let actual = try super.getApi().updateBookmark(request: request);
      assert(actual.getBookmark() != nil);
      assert( (actual.getBookmark()!.getName() ?? "").hasPrefix(bookmarkName) == true);
      assert( (actual.getBookmark()!.getText() ?? "").hasPrefix(bookmarkText) == true);
    }
}
