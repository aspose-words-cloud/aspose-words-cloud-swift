let currentDir = ...
let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let request = GetStyleFromDocumentElementOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!, styledNodePath: "paragraphs/1/paragraphFormat");
_ = try api.getStyleFromDocumentElementOnline(request: request);