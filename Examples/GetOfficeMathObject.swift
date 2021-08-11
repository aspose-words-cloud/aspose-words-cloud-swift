let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let request = GetOfficeMathObjectRequest(name: "Sample.docx", index: 0);
_ = try api.getOfficeMathObject(request: request);