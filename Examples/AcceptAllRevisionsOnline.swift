let currentDir = ...
let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let fileName  = "test_doc.docx";

// Calls AcceptAllRevisionsOnline method for document in cloud.
let request = AcceptAllRevisionsOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent(fileName, isDirectory: false))!);
let acceptAllRevisionsOnlineResult = try api.acceptAllRevisionsOnline(request: request);
try acceptAllRevisionsOnlineResult.getDocument()?.write(to: currentDir!.appendingPathComponent("test_result.docx", isDirectory: false));