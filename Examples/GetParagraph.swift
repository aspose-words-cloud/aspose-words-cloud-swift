let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let request = GetParagraphRequest(name: "Sample.docx", index: 0);
_ = try api.getParagraph(request: request);