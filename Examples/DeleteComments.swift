let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let deleteRequest = DeleteCommentsRequest(name: "Sample.docx");
_ = try api.deleteComments(request: deleteRequest);