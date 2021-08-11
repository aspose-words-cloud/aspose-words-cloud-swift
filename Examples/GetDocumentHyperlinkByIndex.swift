let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let request = GetDocumentHyperlinkByIndexRequest(name: "Sample.docx", hyperlinkIndex: 0);
_ = try api.getDocumentHyperlinkByIndex(request: request);