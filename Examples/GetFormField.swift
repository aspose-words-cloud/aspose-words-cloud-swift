let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let request = GetFormFieldRequest(name: "Sample.docx", index: 0);
_ = try api.getFormField(request: request);