let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let deleteRequest = DeleteFieldRequest(name: "Sample.docx", index: 0);
_ = try api.deleteField(request: deleteRequest);