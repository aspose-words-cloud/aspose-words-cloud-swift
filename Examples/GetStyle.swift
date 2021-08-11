let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let request = GetStyleRequest(name: "Sample.docx", styleName: "Heading 1");
_ = try api.getStyle(request: request);