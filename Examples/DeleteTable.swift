let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let deleteRequest = DeleteTableRequest(name: "Sample.docx", index: 1);
_ = try api.deleteTable(request: deleteRequest);