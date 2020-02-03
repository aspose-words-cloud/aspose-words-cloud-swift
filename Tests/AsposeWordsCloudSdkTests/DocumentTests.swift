import XCTest
@testable import AsposeWordsCloudSdk

class DocumentTests: BaseTestContext {
    func testCreateDocument() throws {
        let fileName = "TestCreateDocument.doc";
        let req = CreateDocumentRequest(fileName: fileName);
        let res = try super.getApi().createDocument(request: req);
        XCTAssert(res.getDocument()?.getFileName() == fileName);
    }
    
    static var allTests = [
        ("testCreateDocument", testCreateDocument),
    ]
}
