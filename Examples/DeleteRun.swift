let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let deleteRequest = DeleteRunRequest(name: "Sample.docx", paragraphPath: "paragraphs/1", index: 0);
_ = try api.deleteRun(request: deleteRequest);