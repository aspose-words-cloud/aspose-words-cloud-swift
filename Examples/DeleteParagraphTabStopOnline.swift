let currentDir = ...
let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let deleteRequest = DeleteParagraphTabStopOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("/ParagraphTabStops.docx", isDirectory: false))!, position: 72.0, index: 0, nodePath: "");
_ = try api.deleteParagraphTabStopOnline(request: deleteRequest);