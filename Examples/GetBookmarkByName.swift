let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let request = GetBookmarkByNameRequest(name: "Sample.docx", bookmarkName: "aspose");
_ = try api.getBookmarkByName(request: request);