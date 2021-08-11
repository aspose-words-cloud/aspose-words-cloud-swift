let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let request = GetTablePropertiesRequest(name: "Sample.docx", index: 1);
_ = try api.getTableProperties(request: request);