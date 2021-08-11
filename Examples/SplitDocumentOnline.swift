let currentDir = ...
let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let splitRequest = SplitDocumentOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!, format: "text", destFileName: "/TestSplitDocument.text", from: 1, to: 2);
_ = try api.splitDocumentOnline(request: splitRequest);