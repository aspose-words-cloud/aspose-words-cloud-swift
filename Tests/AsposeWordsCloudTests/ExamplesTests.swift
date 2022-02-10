import AsposeWordsCloud

import XCTest
@testable import AsposeWordsCloud
@available(macOS 10.12, iOS 10.3, watchOS 3.3, tvOS 12.0, *)
class ExamplesTests : XCTestCase
{
    static var allTests = [
        ("testAcceptAllRevisions", testAcceptAllRevisions),
        ("testAcceptAllRevisionsOnline", testAcceptAllRevisionsOnline)
    ];

    private var configuration : Configuration?;

    private var currentDir : URL?;

    override func setUp() {
        if (self.configuration == nil) {
            let baseFolder = URL(fileURLWithPath: #file)
                .deletingLastPathComponent()
                .deletingLastPathComponent()
                .deletingLastPathComponent();

            let credsUrl = baseFolder
                .appendingPathComponent("Settings", isDirectory: true)
                .appendingPathComponent("servercreds.json", isDirectory: false);

            do {
                let credsData = try Data(contentsOf: credsUrl);
                self.configuration = try ObjectSerializer.deserialize(type: Configuration.self, from: credsData);
            }
            catch {
                XCTFail("File servercreds.json not found in Settings folder of project root.");
            }

            currentDir = baseFolder
                .appendingPathComponent("ExamplesData", isDirectory: true);

            do {
                let api = try WordsAPI(configuration: configuration!);
                _ = try api.uploadFile(request: UploadFileRequest(fileContent: InputStream(url: currentDir!.appendingPathComponent("test_doc.docx", isDirectory: false))!, path: "test_doc.docx"));
            }
            catch {
                XCTFail("Failed to upload example documents.");
            }
        }
    }

    func testAcceptAllRevisions() throws
    {
        let config = configuration!;
        let api = try WordsAPI(configuration: config);
        let fileName = "test_doc.docx";

        // Upload original document to cloud storage.
        let myVar1 = InputStream(url: currentDir!.appendingPathComponent(fileName, isDirectory: false))!;
        let myVar2 = fileName;
        let uploadFileRequest = UploadFileRequest(fileContent: myVar1, path: myVar2);
        _ = try api.uploadFile(request: uploadFileRequest);

        // Calls AcceptAllRevisions method for document in cloud.
        let myVar3 = fileName;
        let request = AcceptAllRevisionsRequest(name: myVar3);
        _ = try api.acceptAllRevisions(request: request);
    }

    func testAcceptAllRevisionsOnline() throws
    {
        let config = configuration!;
        let api = try WordsAPI(configuration: config);
        let fileName = "test_doc.docx";

        // Calls AcceptAllRevisionsOnline method for document in cloud.
        let requestDocument = InputStream(url: currentDir!.appendingPathComponent(fileName, isDirectory: false))!;
        let request = AcceptAllRevisionsOnlineRequest(document: requestDocument);
        let acceptAllRevisionsOnlineResult = try api.acceptAllRevisionsOnline(request: request);
        try acceptAllRevisionsOnlineResult.getDocument()?first?.value.write(to: currentDir!.appendingPathComponent("test_result.docx", isDirectory: false));
    }
}