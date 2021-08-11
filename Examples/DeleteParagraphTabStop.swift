let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let deleteRequest = DeleteParagraphTabStopRequest(name: "Sample.docx", position: 72.0, index: 0);
_ = try api.deleteParagraphTabStop(request: deleteRequest);