let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let request = GetRunRequest(name: "Sample.docx", paragraphPath: "paragraphs/0", index: 0);
_ = try api.getRun(request: request);