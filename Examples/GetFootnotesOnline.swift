let currentDir = ...
let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let request = GetFootnotesOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("Sample.doc", isDirectory: false))!);
_ = try api.getFootnotesOnline(request: request);