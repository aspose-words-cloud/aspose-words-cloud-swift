let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let deleteRequest = DeleteOfficeMathObjectRequest(name: "Sample.docx", index: 0);
_ = try api.deleteOfficeMathObject(request: deleteRequest);