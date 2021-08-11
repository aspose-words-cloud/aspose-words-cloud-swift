let currentDir = ...
let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let deleteRequest = DeleteFootnoteOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("/Footnote.doc", isDirectory: false))!, index: 0, nodePath: "");
_ = try api.deleteFootnoteOnline(request: deleteRequest);