let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let request = GetDocumentStatisticsRequest(name: "Sample.docx");
_ = try api.getDocumentStatistics(request: request);