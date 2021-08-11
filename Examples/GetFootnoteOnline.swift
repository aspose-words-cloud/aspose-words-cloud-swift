let currentDir = ...
let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let request = GetFootnoteOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("/Footnote.doc", isDirectory: false))!, index: 0, nodePath: "");
_ = try api.getFootnoteOnline(request: request);