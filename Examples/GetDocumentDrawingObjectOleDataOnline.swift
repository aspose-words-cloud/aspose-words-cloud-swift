let currentDir = ...
let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let request = GetDocumentDrawingObjectOleDataOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!, index: 0, nodePath: "sections/0");
_ = try api.getDocumentDrawingObjectOleDataOnline(request: request);