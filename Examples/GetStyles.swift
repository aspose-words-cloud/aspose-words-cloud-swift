let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let request = GetStylesRequest(name: "Sample.docx");
_ = try api.getStyles(request: request);