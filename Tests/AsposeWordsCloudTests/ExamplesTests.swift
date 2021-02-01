import AsposeWordsCloud

import XCTest
@testable import AsposeWordsCloud

class ExamplesTests : XCTestCase
{
    static var allTests = [
        ("acceptAllRevisions", acceptAllRevisions),
        ("acceptAllRevisionsOnline", acceptAllRevisionsOnline)
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

        }
    }

    func acceptAllRevisions() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let fileName  = "test_doc.docx";

        // Upload original document to cloud storage.
        let uploadFileRequest = UploadFileRequest(fileContent: InputStream(url: currentDir!.appendingPathComponent(fileName, isDirectory: false))!, path: fileName);
        try api.uploadFile(request: uploadFileRequest);

        // Calls AcceptAllRevisions method for document in cloud.
        let request = AcceptAllRevisionsRequest(name: fileName);
        try api.acceptAllRevisions(request: request);
    }

    func acceptAllRevisionsOnline() throws
    {
        let config = configuration!;
        let api = WordsAPI(configuration: config);
        let fileName  = "test_doc.docx";

        // Calls AcceptAllRevisionsOnline method for document in cloud.
        let request = AcceptAllRevisionsOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent(fileName, isDirectory: false))!);
        let acceptAllRevisionsOnlineResult = try api.acceptAllRevisionsOnline(request: request);
        acceptAllRevisionsOnlineResult.getDocument()?.write(to: currentDir!.appendingPathComponent("test_result.docx", isDirectory: false));
    }
}