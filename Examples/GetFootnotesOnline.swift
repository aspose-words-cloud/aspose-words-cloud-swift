let currentDir = ...
let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let request = GetFootnotesOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("/Footnote.doc", isDirectory: false))!, nodePath: "");
_ = try api.getFootnotesOnline(request: request);