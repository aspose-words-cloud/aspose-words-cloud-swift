let currentDir = ...
let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let request = GetParagraphListFormatOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("/ParagraphGetListFormat.doc", isDirectory: false))!, index: 0, nodePath: "");
_ = try api.getParagraphListFormatOnline(request: request);