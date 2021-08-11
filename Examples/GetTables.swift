let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let request = GetTablesRequest(name: "Sample.docx");
_ = try api.getTables(request: request);