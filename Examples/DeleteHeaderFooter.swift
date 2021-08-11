let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let deleteRequest = DeleteHeaderFooterRequest(name: "Sample.docx", sectionPath: "", index: 0);
_ = try api.deleteHeaderFooter(request: deleteRequest);