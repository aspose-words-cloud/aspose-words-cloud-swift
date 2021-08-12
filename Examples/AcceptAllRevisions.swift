let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let acceptRequest = AcceptAllRevisionsRequest(name: "Sample.docx");
_ = try api.acceptAllRevisions(request: acceptRequest);