let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let request = GetRunFontRequest(name: "Sample.docx", paragraphPath: "paragraphs/0", index: 0);
_ = try api.getRunFont(request: request);