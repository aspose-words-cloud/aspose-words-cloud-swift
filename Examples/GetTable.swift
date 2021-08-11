let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let request = GetTableRequest(name: "Sample.docx", index: 1);
_ = try api.getTable(request: request);