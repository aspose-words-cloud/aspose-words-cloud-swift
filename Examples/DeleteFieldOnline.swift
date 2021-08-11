let currentDir = ...
let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let deleteRequest = DeleteFieldOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("/GetField.docx", isDirectory: false))!, index: 0, nodePath: "sections/0/paragraphs/0");
_ = try api.deleteFieldOnline(request: deleteRequest);