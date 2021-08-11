let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let remoteFileName = "Sample.docx";

let rejectRequest = RejectAllRevisionsRequest(name: remoteFileName, destFileName: remoteFileName);
_ = try api.rejectAllRevisions(request: rejectRequest);