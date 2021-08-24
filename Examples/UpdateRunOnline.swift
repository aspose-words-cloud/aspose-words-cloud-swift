let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let requestDocument = InputStream(url: URL(string: "Sample.doc"))!;
let requestRun = RunUpdate()
  .setText(text: "run with text");
let updateRequest = UpdateRunOnlineRequest(document: requestDocument, paragraphPath: "paragraphs/1", run: requestRun as! RunUpdate, index: 0);
_ = try api.updateRunOnline(request: updateRequest);