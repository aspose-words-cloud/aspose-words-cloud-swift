let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let requestRun = RunUpdate();
requestRun.setText(text: "run with text");
let updateRequest = UpdateRunRequest(name: "Sample.docx", paragraphPath: "paragraphs/1", index: 0, run: requestRun);
_ = try api.updateRun(request: updateRequest);