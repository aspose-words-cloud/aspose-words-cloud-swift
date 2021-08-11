let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let request = GetDocumentWithFormatRequest(name: "Sample.docx", format: "text", outPath: "/TestGetDocumentWithFormatAndOutPath.text");
_ = try api.getDocumentWithFormat(request: request);