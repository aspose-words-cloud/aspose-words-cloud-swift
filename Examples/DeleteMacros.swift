let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let deleteRequest = DeleteMacrosRequest(name: "Sample.docx");
_ = try api.deleteMacros(request: deleteRequest);