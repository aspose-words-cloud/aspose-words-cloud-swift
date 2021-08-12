let currentDir = ...
let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let deleteRequest = DeleteFootnoteOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("Sample.doc", isDirectory: false))!, index: 0);
_ = try api.deleteFootnoteOnline(request: deleteRequest);