let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let requestOptions = OptimizationOptions();
requestOptions.setMsWordVersion(msWordVersion: OptimizationOptions.MsWordVersion.word2002);
let optimizeRequest = OptimizeDocumentRequest(name: "Sample.docx", options: requestOptions);
_ = try api.optimizeDocument(request: optimizeRequest);