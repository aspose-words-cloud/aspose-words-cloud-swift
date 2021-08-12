let currentDir = ...
let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let request = GetFootnoteOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("Sample.doc", isDirectory: false))!, index: 0);
_ = try api.getFootnoteOnline(request: request);