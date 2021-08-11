let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let request = GetParagraphFormatRequest(name: "Sample.docx", index: 0);
_ = try api.getParagraphFormat(request: request);