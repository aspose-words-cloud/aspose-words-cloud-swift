let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let requestRun = RunInsert();
requestRun.setText(text: "run with text");
let insertRequest = InsertRunRequest(name: "Sample.docx", paragraphPath: "paragraphs/1", run: requestRun);
_ = try api.insertRun(request: insertRequest);