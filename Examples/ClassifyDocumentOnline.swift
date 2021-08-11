let currentDir = ...
let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let classifyRequest = ClassifyDocumentOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!, bestClassesCount: "3");
_ = try api.classifyDocumentOnline(request: classifyRequest);