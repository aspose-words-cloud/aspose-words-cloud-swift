let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let requestDocument = InputStream(url: URL(string: "Sample.doc"))!;
let requestRun = RunInsert()
  .setText(text: "run with text");
let insertRequest = InsertRunOnlineRequest(document: requestDocument, paragraphPath: "paragraphs/1", run: requestRun as! RunInsert);
_ = try api.insertRunOnline(request: insertRequest);