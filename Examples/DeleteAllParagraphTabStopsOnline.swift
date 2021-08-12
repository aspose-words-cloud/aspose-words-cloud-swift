let currentDir = ...
let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let deleteRequest = DeleteAllParagraphTabStopsOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!, index: 0);
_ = try api.deleteAllParagraphTabStopsOnline(request: deleteRequest);