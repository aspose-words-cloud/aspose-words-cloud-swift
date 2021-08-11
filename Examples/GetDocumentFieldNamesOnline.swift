let currentDir = ...
let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let request = GetDocumentFieldNamesOnlineRequest(template: InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!, useNonMergeFields: true);
_ = try api.getDocumentFieldNamesOnline(request: request);