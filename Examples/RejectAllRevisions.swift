let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let rejectRequest = RejectAllRevisionsRequest(name: "Sample.docx");
_ = try api.rejectAllRevisions(request: rejectRequest);