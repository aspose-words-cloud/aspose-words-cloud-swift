let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let request = GetCommentsRequest(name: "Sample.docx");
_ = try api.getComments(request: request);