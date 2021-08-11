let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let deleteRequest = DeleteFootnoteRequest(name: "Sample.docx", index: 0);
_ = try api.deleteFootnote(request: deleteRequest);