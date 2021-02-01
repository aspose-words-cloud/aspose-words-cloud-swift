import AsposeWordsCloud

import XCTest
@testable import AsposeWordsCloud

class ExamplesTests : XCTestCase
{
    static var allTests = [
        ("acceptAllRevisions", acceptAllRevisions),
        ("acceptAllRevisionsOnline", acceptAllRevisionsOnline)
    ];

    private var config : Configuration?;

    override func setUp() {
        if (self.config == nil) {
            let baseFolder = URL(fileURLWithPath: #file)
                .deletingLastPathComponent()
                .deletingLastPathComponent()
                .deletingLastPathComponent();

            let credsUrl = baseFolder
                .appendingPathComponent("Settings", isDirectory: true)
                .appendingPathComponent("servercreds.json", isDirectory: false);

            do {
                let credsData = try Data(contentsOf: credsUrl);
                self.config = try ObjectSerializer.deserialize(type: Configuration.self, from: credsData);
            }
            catch {
                XCTFail("File servercreds.json not found in Settings folder of project root.");
            }

            let filesPath = baseFolder
                .appendingPathComponent("ExamplesData", isDirectory: true);

        }
    }

    func acceptAllRevisions() throws
    {
        let api = WordsAPI(configuration: config);
        let fileName  = "test_doc.docx";

        // Upload original document to cloud storage.
        let uploadFileRequest = UploadFileRequest(fileContent: InputStream(url: FileManager.currentDirectoryPath.appendingPathComponent(fileName, isDirectory: false))!, path: fileName);
        try api.uploadFile(request: uploadFileRequest);

        // Calls AcceptAllRevisions method for document in cloud.
        let request = AcceptAllRevisionsRequest(name: fileName);
        try api.acceptAllRevisions(request: request);
    }

    func acceptAllRevisionsOnline() throws
    {
        let api = WordsAPI(configuration: config);
        let fileName  = "test_doc.docx";

        // Calls AcceptAllRevisionsOnline method for document in cloud.
        let request = AcceptAllRevisionsOnlineRequest(document: InputStream(url: FileManager.currentDirectoryPath.appendingPathComponent(fileName, isDirectory: false))!);
        let acceptAllRevisionsOnlineResult = try api.acceptAllRevisionsOnline(request: request);
        await File('test_result.docx').writeAsBytes(
            acceptAllRevisionsOnlineResult.document.buffer.asUint8List(acceptAllRevisionsOnlineResult.document.offsetInBytes, acceptAllRevisionsOnlineResult.document.lengthInBytes)
        );
    }
}