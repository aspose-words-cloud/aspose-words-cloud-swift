let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let request = GetHeaderFootersRequest(name: "Sample.docx", sectionPath: "");
_ = try api.getHeaderFooters(request: request);