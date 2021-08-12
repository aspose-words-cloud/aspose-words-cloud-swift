let currentDir = ...
let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let requestRun = RunUpdate();
requestRun.setText(text: "run with text");
let updateRequest = UpdateRunOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("Sample.doc", isDirectory: false))!, paragraphPath: "paragraphs/1", run: requestRun, index: 0);
_ = try api.updateRunOnline(request: updateRequest);