let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let request = GetHeaderFooterRequest(name: "Sample.docx", headerFooterIndex: 0);
_ = try api.getHeaderFooter(request: request);