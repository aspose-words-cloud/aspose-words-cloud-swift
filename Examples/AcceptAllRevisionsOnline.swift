let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsApi(config);
let fileName  = "test_doc.docx";

// Calls AcceptAllRevisionsOnline method for document in cloud.
let request = AcceptAllRevisionsOnlineRequest(document: InputStream(url: currentDirectoryPath.appendingPathComponent(fileName, isDirectory: false))!);
let acceptAllRevisionsOnlineResult = try api.acceptAllRevisionsOnline(request: request);
await File('test_result.docx').writeAsBytes(
    acceptAllRevisionsOnlineResult.document.buffer.asUint8List(acceptAllRevisionsOnlineResult.document.offsetInBytes, acceptAllRevisionsOnlineResult.document.lengthInBytes)
);