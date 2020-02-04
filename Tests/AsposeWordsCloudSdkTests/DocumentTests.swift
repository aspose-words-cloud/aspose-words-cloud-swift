import XCTest
@testable import AsposeWordsCloudSdk

class DocumentTests: BaseTestContext {
    static var allTests = [
        ("testCreateDocument", testCreateDocument),
    ];
    
    func testCreateDocument() throws {
        let fileName = "TestCreateDocument.doc";
        let req = CreateDocumentRequest(fileName: fileName);
        let res = try super.getApi().createDocument(request: req);
        XCTAssert(res.getDocument()?.getFileName() == fileName);
    }
}
