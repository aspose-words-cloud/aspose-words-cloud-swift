let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let remoteFileName = "Sample.docx";

let deleteRequest = DeleteCommentRequest(name: remoteFileName, commentIndex: 0, destFileName: remoteFileName);
_ = try api.deleteComment(request: deleteRequest);