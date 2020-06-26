/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="CommentTests.swift">
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

// Example of how to get comments from document.
class CommentTests: BaseTestContext {
    static var allTests = [
        ("testGetComment", testGetComment),
        ("testGetComments", testGetComments),
        ("testInsertComment", testInsertComment),
        ("testUpdateComment", testUpdateComment),
        ("testDeleteComment", testDeleteComment)
    ];

    let remoteDataFolder = BaseTestContext.getRemoteTestDataFolder() + "/Comments";
    let localFile = "Common/test_multi_pages.docx";

    // Test for getting comment by specified comment's index.
    func testGetComment() throws {
      let remoteFileName = "TestGetComment.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = GetCommentRequest(name: remoteFileName, commentIndex: 0, folder: remoteDataFolder);
      _ = try super.getApi().getComment(request: request);
    }

    // Test for getting all comments from document.
    func testGetComments() throws {
      let remoteFileName = "TestGetComments.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = GetCommentsRequest(name: remoteFileName, folder: remoteDataFolder);
      _ = try super.getApi().getComments(request: request);
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
      _ = try super.getApi().insertComment(request: request);
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
      _ = try super.getApi().updateComment(request: request);
    }

    // A test for DeleteComment.
    func testDeleteComment() throws {
      let remoteFileName = "TestDeleteComment.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = DeleteCommentRequest(name: remoteFileName, commentIndex: 0, folder: remoteDataFolder, destFileName: BaseTestContext.getRemoteTestOut() + "/" + remoteFileName);
      try super.getApi().deleteComment(request: request);
    }
}
