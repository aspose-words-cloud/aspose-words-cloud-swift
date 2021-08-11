let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let splitRequest = SplitDocumentRequest(name: "Sample.docx", format: "text", destFileName: "/TestSplitDocument.text", from: 1, to: 2);
_ = try api.splitDocument(request: splitRequest);