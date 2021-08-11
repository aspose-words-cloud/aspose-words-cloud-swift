let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let request = GetParagraphTabStopsRequest(name: "Sample.docx", index: 0);
_ = try api.getParagraphTabStops(request: request);