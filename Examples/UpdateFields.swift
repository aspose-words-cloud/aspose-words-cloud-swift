let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let updateRequest = UpdateFieldsRequest(name: "Sample.docx");
_ = try api.updateFields(request: updateRequest);