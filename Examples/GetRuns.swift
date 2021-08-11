let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let request = GetRunsRequest(name: "Sample.docx", paragraphPath: "sections/0/paragraphs/0");
_ = try api.getRuns(request: request);