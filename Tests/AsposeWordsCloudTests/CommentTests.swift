/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="CommentTests.swift">
 *   Copyright (c) 2022 Aspose.Words for Cloud
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
@available(macOS 10.12, iOS 10.3, watchOS 3.3, tvOS 12.0, *)
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
        ("testDeleteCommentOnline", testDeleteCommentOnline),
        ("testDeleteComments", testDeleteComments),
        ("testDeleteCommentsOnline", testDeleteCommentsOnline)
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
      let requestDocument = InputStream(url: self.getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false))!;
      let request = GetCommentOnlineRequest(document: requestDocument, commentIndex: 0);
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
      let requestDocument = InputStream(url: self.getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false))!;
      let request = GetCommentsOnlineRequest(document: requestDocument);
      _ = try super.getApi().getCommentsOnline(request: request);
    }

    // Test for adding comment.
    func testInsertComment() throws {
      let remoteFileName = "TestInsertComment.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let requestCommentRangeStartNode = NodeLink()
        .setNodeId(nodeId: "0.3.0.3");
      let requestCommentRangeStart = DocumentPosition()
        .setNode(node: requestCommentRangeStartNode)
        .setOffset(offset: 0);
      let requestCommentRangeEndNode = NodeLink()
        .setNodeId(nodeId: "0.3.0.3");
      let requestCommentRangeEnd = DocumentPosition()
        .setNode(node: requestCommentRangeEndNode)
        .setOffset(offset: 0);
      let requestComment = CommentInsert()
        .setAuthor(author: "Imran Anwar")
        .setInitial(initial: "IA")
        .setRangeEnd(rangeEnd: requestCommentRangeEnd)
        .setRangeStart(rangeStart: requestCommentRangeStart)
        .setText(text: "A new Comment");
      let request = InsertCommentRequest(name: remoteFileName, comment: requestComment as! CommentInsert, folder: remoteDataFolder);
      let actual = try super.getApi().insertComment(request: request);
      XCTAssertNotNil(actual.getComment());
      XCTAssertEqual(actual.getComment()!.getText(), "A new Comment" + "\r\n");
      XCTAssertNotNil(actual.getComment()!.getRangeStart());
      XCTAssertNotNil(actual.getComment()!.getRangeStart()!.getNode());
      XCTAssertEqual(actual.getComment()!.getRangeStart()!.getNode()!.getNodeId(), "0.3.0.4");
    }

    // Test for adding comment online.
    func testInsertCommentOnline() throws {
      let requestDocument = InputStream(url: self.getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false))!;
      let requestCommentRangeStartNode = NodeLink()
        .setNodeId(nodeId: "0.3.0.3");
      let requestCommentRangeStart = DocumentPosition()
        .setNode(node: requestCommentRangeStartNode)
        .setOffset(offset: 0);
      let requestCommentRangeEndNode = NodeLink()
        .setNodeId(nodeId: "0.3.0.3");
      let requestCommentRangeEnd = DocumentPosition()
        .setNode(node: requestCommentRangeEndNode)
        .setOffset(offset: 0);
      let requestComment = CommentInsert()
        .setAuthor(author: "Imran Anwar")
        .setInitial(initial: "IA")
        .setRangeEnd(rangeEnd: requestCommentRangeEnd)
        .setRangeStart(rangeStart: requestCommentRangeStart)
        .setText(text: "A new Comment");
      let request = InsertCommentOnlineRequest(document: requestDocument, comment: requestComment as! CommentInsert);
      _ = try super.getApi().insertCommentOnline(request: request);
    }

    // Test for updating comment.
    func testUpdateComment() throws {
      let remoteFileName = "TestUpdateComment.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let requestCommentRangeStartNode = NodeLink()
        .setNodeId(nodeId: "0.3.0");
      let requestCommentRangeStart = DocumentPosition()
        .setNode(node: requestCommentRangeStartNode)
        .setOffset(offset: 0);
      let requestCommentRangeEndNode = NodeLink()
        .setNodeId(nodeId: "0.3.0");
      let requestCommentRangeEnd = DocumentPosition()
        .setNode(node: requestCommentRangeEndNode)
        .setOffset(offset: 0);
      let requestComment = CommentUpdate()
        .setAuthor(author: "Imran Anwar")
        .setInitial(initial: "IA")
        .setRangeEnd(rangeEnd: requestCommentRangeEnd)
        .setRangeStart(rangeStart: requestCommentRangeStart)
        .setText(text: "A new Comment");
      let request = UpdateCommentRequest(name: remoteFileName, commentIndex: 0, comment: requestComment as! CommentUpdate, folder: remoteDataFolder);
      let actual = try super.getApi().updateComment(request: request);
      XCTAssertNotNil(actual.getComment());
      XCTAssertEqual(actual.getComment()!.getText(), "A new Comment" + "\r\n");
      XCTAssertNotNil(actual.getComment()!.getRangeStart());
      XCTAssertNotNil(actual.getComment()!.getRangeStart()!.getNode());
      XCTAssertEqual(actual.getComment()!.getRangeStart()!.getNode()!.getNodeId(), "0.3.0.1");
    }

    // Test for updating comment online.
    func testUpdateCommentOnline() throws {
      let requestDocument = InputStream(url: self.getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false))!;
      let requestCommentRangeStartNode = NodeLink()
        .setNodeId(nodeId: "0.3.0");
      let requestCommentRangeStart = DocumentPosition()
        .setNode(node: requestCommentRangeStartNode)
        .setOffset(offset: 0);
      let requestCommentRangeEndNode = NodeLink()
        .setNodeId(nodeId: "0.3.0");
      let requestCommentRangeEnd = DocumentPosition()
        .setNode(node: requestCommentRangeEndNode)
        .setOffset(offset: 0);
      let requestComment = CommentUpdate()
        .setAuthor(author: "Imran Anwar")
        .setInitial(initial: "IA")
        .setRangeEnd(rangeEnd: requestCommentRangeEnd)
        .setRangeStart(rangeStart: requestCommentRangeStart)
        .setText(text: "A new Comment");
      let request = UpdateCommentOnlineRequest(document: requestDocument, commentIndex: 0, comment: requestComment as! CommentUpdate);
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
      let requestDocument = InputStream(url: self.getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false))!;
      let request = DeleteCommentOnlineRequest(document: requestDocument, commentIndex: 0);
      _ = try super.getApi().deleteCommentOnline(request: request);
    }

    // A test for DeleteComments.
    func testDeleteComments() throws {
      let remoteFileName = "TestDeleteComment.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = DeleteCommentsRequest(name: remoteFileName, folder: remoteDataFolder, destFileName: BaseTestContext.getRemoteTestOut() + "/" + remoteFileName);
      try super.getApi().deleteComments(request: request);
    }

    // A test for DeleteComments online.
    func testDeleteCommentsOnline() throws {
      let requestDocument = InputStream(url: self.getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false))!;
      let request = DeleteCommentsOnlineRequest(document: requestDocument);
      _ = try super.getApi().deleteCommentsOnline(request: request);
    }
}
