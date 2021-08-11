let currentDir = ...
let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let request = GetDocumentHyperlinkByIndexOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!, hyperlinkIndex: 0);
_ = try api.getDocumentHyperlinkByIndexOnline(request: request);