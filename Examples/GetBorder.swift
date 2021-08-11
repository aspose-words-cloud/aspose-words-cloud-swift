let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let request = GetBorderRequest(name: "Sample.docx", borderType: "left", nodePath: "tables/1/rows/0/cells/0");
_ = try api.getBorder(request: request);