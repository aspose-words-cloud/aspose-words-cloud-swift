let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let request = GetStyleFromDocumentElementRequest(name: "Sample.docx", styledNodePath: "paragraphs/1/paragraphFormat");
_ = try api.getStyleFromDocumentElement(request: request);