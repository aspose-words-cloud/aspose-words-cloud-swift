import XCTest
@testable import AsposeWordsCloudSdk

class DocumentTests: BaseTestContext {
    func testCreateDocument() throws {
        let req = CreateDocumentRequest(fileName: "TestCreateDocument.doc");
        let res = try super.getApi().createDocument(request: req);
        XCTAssert(!res.getRequestId().isEmpty);
    }
}
