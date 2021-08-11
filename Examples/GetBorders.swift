let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let request = GetBordersRequest(name: "Sample.docx", nodePath: "tables/1/rows/0/cells/0");
_ = try api.getBorders(request: request);