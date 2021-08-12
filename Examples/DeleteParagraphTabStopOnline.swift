let currentDir = ...
let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let deleteRequest = DeleteParagraphTabStopOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!, position: 72.0, index: 0);
_ = try api.deleteParagraphTabStopOnline(request: deleteRequest);