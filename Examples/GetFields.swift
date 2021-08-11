let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let request = GetFieldsRequest(name: "Sample.docx");
_ = try api.getFields(request: request);