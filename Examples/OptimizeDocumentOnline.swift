let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let requestDocument = InputStream(url: URL(string: "Sample.docx"))!;
let requestOptions = OptimizationOptions()
  .setMsWordVersion(msWordVersion: OptimizationOptions.MsWordVersion.word2002);
let optimizeRequest = OptimizeDocumentOnlineRequest(document: requestDocument, options: requestOptions);
_ = try api.optimizeDocumentOnline(request: optimizeRequest);