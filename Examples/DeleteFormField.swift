let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let deleteRequest = DeleteFormFieldRequest(name: "Sample.docx", index: 0);
_ = try api.deleteFormField(request: deleteRequest);