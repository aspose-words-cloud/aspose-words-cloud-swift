let currentDir = ...
let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let request = GetDocumentDrawingObjectsOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!, nodePath: "sections/0");
_ = try api.getDocumentDrawingObjectsOnline(request: request);