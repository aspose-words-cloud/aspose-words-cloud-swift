let currentDir = ...
let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let request = GetTablePropertiesOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!, index: 1);
_ = try api.getTablePropertiesOnline(request: request);