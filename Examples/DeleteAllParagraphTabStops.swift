let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let deleteRequest = DeleteAllParagraphTabStopsRequest(name: "Sample.docx", index: 0);
_ = try api.deleteAllParagraphTabStops(request: deleteRequest);