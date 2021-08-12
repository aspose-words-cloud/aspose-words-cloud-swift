let currentDir = ...
let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let requestRun = RunInsert();
requestRun.setText(text: "run with text");
let insertRequest = InsertRunOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("Sample.doc", isDirectory: false))!, paragraphPath: "paragraphs/1", run: requestRun);
_ = try api.insertRunOnline(request: insertRequest);