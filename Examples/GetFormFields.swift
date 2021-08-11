let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let request = GetFormFieldsRequest(name: "Sample.docx");
_ = try api.getFormFields(request: request);