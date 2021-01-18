/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="CommentTests.swift">
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

// Example of how to get comments from document.
class CommentTests: BaseTestContext {
    static var allTests = [
        ("testGetComment", testGetComment),
        ("testGetCommentOnline", testGetCommentOnline),
        ("testGetComments", testGetComments),
        ("testGetCommentsOnline", testGetCommentsOnline),
        ("testInsertComment", testInsertComment),
        ("testInsertCommentOnline", testInsertCommentOnline),
        ("testUpdateComment", testUpdateComment),
        ("testUpdateCommentOnline", testUpdateCommentOnline),
        ("testDeleteComment", testDeleteComment),
        ("testDeleteCommentOnline", testDeleteCommentOnline)
    ];

    let remoteDataFolder = BaseTestContext.getRemoteTestDataFolder() + "/Comments";
    let localFile = "Common/test_multi_pages.docx";

    // Test for getting comment by specified comment's index.
    func testGetComment() throws {
      let remoteFileName = "TestGetComment.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = GetCommentRequest(name: remoteFileName, commentIndex: 0, folder: remoteDataFolder);
      let actual = try super.getApi().getComment(request: request);
      XCTAssertNotNil(actual.getComment());
      XCTAssertEqual(actual.getComment()!.getText(), "Comment 1" + "\r\n\r\n");
    }

    // Test for getting comment by specified comment's index online.
    func testGetCommentOnline() throws {
      let request = GetCommentOnlineRequest(document: InputStream(url: self.getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false))!, commentIndex: 0);
      _ = try super.getApi().getCommentOnline(request: request);
    }

    // Test for getting all comments from document.
    func testGetComments() throws {
      let remoteFileName = "TestGetComments.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = GetCommentsRequest(name: remoteFileName, folder: remoteDataFolder);
      let actual = try super.getApi().getComments(request: request);
      XCTAssertNotNil(actual.getComments());
      XCTAssertNotNil(actual.getComments()!.getCommentList());
      XCTAssertEqual(actual.getComments()!.getCommentList()!.count, 1);
      XCTAssertEqual(actual.getComments()!.getCommentList()![0].getText(), "Comment 1" + "\r\n\r\n");
    }

    // Test for getting all comments from document online.
    func testGetCommentsOnline() throws {
      let request = GetCommentsOnlineRequest(document: InputStream(url: self.getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false))!);
      _ = try super.getApi().getCommentsOnline(request: request);
    }

    // Test for adding comment.
    func testInsertComment() throws {
      let remoteFileName = "TestInsertComment.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let requestCommentRangeStartNode = NodeLink();
      requestCommentRangeStartNode.setNodeId(nodeId: "0.3.0.3");

      let requestCommentRangeStart = DocumentPosition();
      requestCommentRangeStart.setNode(node: requestCommentRangeStartNode);
      requestCommentRangeStart.setOffset(offset: 0);

      let requestCommentRangeEndNode = NodeLink();
      requestCommentRangeEndNode.setNodeId(nodeId: "0.3.0.3");

      let requestCommentRangeEnd = DocumentPosition();
      requestCommentRangeEnd.setNode(node: requestCommentRangeEndNode);
      requestCommentRangeEnd.setOffset(offset: 0);

      let requestComment = CommentInsert();
      requestComment.setRangeStart(rangeStart: requestCommentRangeStart);
      requestComment.setRangeEnd(rangeEnd: requestCommentRangeEnd);
      requestComment.setInitial(initial: "IA");
      requestComment.setAuthor(author: "Imran Anwar");
      requestComment.setText(text: "A new Comment");


      let request = InsertCommentRequest(name: remoteFileName, comment: requestComment, folder: remoteDataFolder);
      let actual = try super.getApi().insertComment(request: request);
      XCTAssertNotNil(actual.getComment());
      XCTAssertEqual(actual.getComment()!.getText(), "A new Comment" + "\r\n");
      XCTAssertNotNil(actual.getComment()!.getRangeStart());
      XCTAssertNotNil(actual.getComment()!.getRangeStart()!.getNode());
      XCTAssertEqual(actual.getComment()!.getRangeStart()!.getNode()!.getNodeId(), "0.3.0.4");
    }

    // Test for adding comment online.
    func testInsertCommentOnline() throws {
      let requestCommentRangeStartNode = NodeLink();
      requestCommentRangeStartNode.setNodeId(nodeId: "0.3.0.3");

      let requestCommentRangeStart = DocumentPosition();
      requestCommentRangeStart.setNode(node: requestCommentRangeStartNode);
      requestCommentRangeStart.setOffset(offset: 0);

      let requestCommentRangeEndNode = NodeLink();
      requestCommentRangeEndNode.setNodeId(nodeId: "0.3.0.3");

      let requestCommentRangeEnd = DocumentPosition();
      requestCommentRangeEnd.setNode(node: requestCommentRangeEndNode);
      requestCommentRangeEnd.setOffset(offset: 0);

      let requestComment = CommentInsert();
      requestComment.setRangeStart(rangeStart: requestCommentRangeStart);
      requestComment.setRangeEnd(rangeEnd: requestCommentRangeEnd);
      requestComment.setInitial(initial: "IA");
      requestComment.setAuthor(author: "Imran Anwar");
      requestComment.setText(text: "A new Comment");


      let request = InsertCommentOnlineRequest(document: InputStream(url: self.getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false))!, comment: requestComment);
      _ = try super.getApi().insertCommentOnline(request: request);
    }

    // Test for updating comment.
    func testUpdateComment() throws {
      let remoteFileName = "TestUpdateComment.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let requestCommentRangeStartNode = NodeLink();
      requestCommentRangeStartNode.setNodeId(nodeId: "0.3.0");

      let requestCommentRangeStart = DocumentPosition();
      requestCommentRangeStart.setNode(node: requestCommentRangeStartNode);
      requestCommentRangeStart.setOffset(offset: 0);

      let requestCommentRangeEndNode = NodeLink();
      requestCommentRangeEndNode.setNodeId(nodeId: "0.3.0");

      let requestCommentRangeEnd = DocumentPosition();
      requestCommentRangeEnd.setNode(node: requestCommentRangeEndNode);
      requestCommentRangeEnd.setOffset(offset: 0);

      let requestComment = CommentUpdate();
      requestComment.setRangeStart(rangeStart: requestCommentRangeStart);
      requestComment.setRangeEnd(rangeEnd: requestCommentRangeEnd);
      requestComment.setInitial(initial: "IA");
      requestComment.setAuthor(author: "Imran Anwar");
      requestComment.setText(text: "A new Comment");


      let request = UpdateCommentRequest(name: remoteFileName, commentIndex: 0, comment: requestComment, folder: remoteDataFolder);
      let actual = try super.getApi().updateComment(request: request);
      XCTAssertNotNil(actual.getComment());
      XCTAssertEqual(actual.getComment()!.getText(), "A new Comment" + "\r\n");
      XCTAssertNotNil(actual.getComment()!.getRangeStart());
      XCTAssertNotNil(actual.getComment()!.getRangeStart()!.getNode());
      XCTAssertEqual(actual.getComment()!.getRangeStart()!.getNode()!.getNodeId(), "0.3.0.1");
    }

    // Test for updating comment online.
    func testUpdateCommentOnline() throws {
      let requestCommentRangeStartNode = NodeLink();
      requestCommentRangeStartNode.setNodeId(nodeId: "0.3.0");

      let requestCommentRangeStart = DocumentPosition();
      requestCommentRangeStart.setNode(node: requestCommentRangeStartNode);
      requestCommentRangeStart.setOffset(offset: 0);

      let requestCommentRangeEndNode = NodeLink();
      requestCommentRangeEndNode.setNodeId(nodeId: "0.3.0");

      let requestCommentRangeEnd = DocumentPosition();
      requestCommentRangeEnd.setNode(node: requestCommentRangeEndNode);
      requestCommentRangeEnd.setOffset(offset: 0);

      let requestComment = CommentUpdate();
      requestComment.setRangeStart(rangeStart: requestCommentRangeStart);
      requestComment.setRangeEnd(rangeEnd: requestCommentRangeEnd);
      requestComment.setInitial(initial: "IA");
      requestComment.setAuthor(author: "Imran Anwar");
      requestComment.setText(text: "A new Comment");


      let request = UpdateCommentOnlineRequest(document: InputStream(url: self.getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false))!, commentIndex: 0, comment: requestComment);
      _ = try super.getApi().updateCommentOnline(request: request);
    }

    // A test for DeleteComment.
    func testDeleteComment() throws {
      let remoteFileName = "TestDeleteComment.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = DeleteCommentRequest(name: remoteFileName, commentIndex: 0, folder: remoteDataFolder, destFileName: BaseTestContext.getRemoteTestOut() + "/" + remoteFileName);
      try super.getApi().deleteComment(request: request);
    }

    // A test for DeleteComment online.
    func testDeleteCommentOnline() throws {
      let request = DeleteCommentOnlineRequest(document: InputStream(url: self.getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false))!, commentIndex: 0);
      _ = try super.getApi().deleteCommentOnline(request: request);
    }
}
