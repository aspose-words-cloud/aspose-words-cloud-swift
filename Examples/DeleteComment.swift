let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let deleteRequest = DeleteCommentRequest(name: "Sample.docx", commentIndex: 0);
_ = try api.deleteComment(request: deleteRequest);