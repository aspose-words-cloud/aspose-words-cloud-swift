let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let request = GetCommentRequest(name: "Sample.docx", commentIndex: 0);
_ = try api.getComment(request: request);