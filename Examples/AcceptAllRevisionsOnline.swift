let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = try WordsAPI(configuration: config);
let fileName = "test_doc.docx";

// Calls AcceptAllRevisionsOnline method for document in cloud.
let requestDocument = InputStream(url: URL(string: fileName))!;
let request = AcceptAllRevisionsOnlineRequest(document: requestDocument);
let acceptAllRevisionsOnlineResult = try api.acceptAllRevisionsOnline(request: request);
try acceptAllRevisionsOnlineResult.getDocument()?.write(to: currentDir!.appendingPathComponent("test_result.docx", isDirectory: false));