let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let deleteRequest = DeleteHeadersFootersRequest(name: "Sample.docx", sectionPath: "");
_ = try api.deleteHeadersFooters(request: deleteRequest);