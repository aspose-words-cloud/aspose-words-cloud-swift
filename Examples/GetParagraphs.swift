let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let request = GetParagraphsRequest(name: "Sample.docx");
_ = try api.getParagraphs(request: request);