let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let requestDocument = InputStream(url: URL(string: "Sample.docx"))!;
let updateRequest = UpdateFieldsOnlineRequest(document: requestDocument);
_ = try api.updateFieldsOnline(request: updateRequest);