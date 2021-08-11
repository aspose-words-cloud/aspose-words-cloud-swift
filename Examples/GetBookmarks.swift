let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let request = GetBookmarksRequest(name: "Sample.docx");
_ = try api.getBookmarks(request: request);