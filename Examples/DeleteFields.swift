let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let deleteRequest = DeleteFieldsRequest(name: "Sample.docx", nodePath: "");
_ = try api.deleteFields(request: deleteRequest);