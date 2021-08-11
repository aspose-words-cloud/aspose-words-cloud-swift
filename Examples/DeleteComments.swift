let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let remoteFileName = "Sample.docx";

let deleteRequest = DeleteCommentsRequest(name: remoteFileName, destFileName: remoteFileName);
_ = try api.deleteComments(request: deleteRequest);