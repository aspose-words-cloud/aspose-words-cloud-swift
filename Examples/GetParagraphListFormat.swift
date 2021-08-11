let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let request = GetParagraphListFormatRequest(name: "Sample.docx", index: 0);
_ = try api.getParagraphListFormat(request: request);