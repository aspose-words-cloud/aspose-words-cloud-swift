let currentDir = ...
let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let requestOptions = OptimizationOptions();
requestOptions.setMsWordVersion(msWordVersion: OptimizationOptions.MsWordVersion.word2002);
let optimizeRequest = OptimizeDocumentOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!, options: requestOptions);
_ = try api.optimizeDocumentOnline(request: optimizeRequest);