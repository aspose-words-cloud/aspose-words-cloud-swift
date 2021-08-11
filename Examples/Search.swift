let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let searchRequest = SearchRequest(name: "Sample.docx", pattern: "aspose");
_ = try api.search(request: searchRequest);