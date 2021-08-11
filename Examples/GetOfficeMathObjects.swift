let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let request = GetOfficeMathObjectsRequest(name: "Sample.docx");
_ = try api.getOfficeMathObjects(request: request);