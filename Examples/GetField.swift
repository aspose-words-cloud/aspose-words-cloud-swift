let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let request = GetFieldRequest(name: "Sample.docx", index: 0);
_ = try api.getField(request: request);