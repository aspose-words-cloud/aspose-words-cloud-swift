let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let requestRun = RunInsert()
  .setText(text: "run with text");
let insertRequest = InsertRunRequest(name: "Sample.docx", paragraphPath: "paragraphs/1", run: requestRun as! RunInsert);
_ = try api.insertRun(request: insertRequest);