let currentDir = ...
let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let deleteRequest = DeleteParagraphListFormatOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("/ParagraphDeleteListFormat.doc", isDirectory: false))!, index: 0, nodePath: "");
_ = try api.deleteParagraphListFormatOnline(request: deleteRequest);