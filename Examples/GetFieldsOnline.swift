let currentDir = ...
let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let request = GetFieldsOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!, nodePath: "sections/0");
_ = try api.getFieldsOnline(request: request);