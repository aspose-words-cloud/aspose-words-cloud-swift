let currentDir = ...
let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let request = GetParagraphTabStopsOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("/ParagraphTabStops.docx", isDirectory: false))!, index: 0, nodePath: "");
_ = try api.getParagraphTabStopsOnline(request: request);