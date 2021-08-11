let currentDir = ...
let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let requestSaveOptionsData = SaveOptionsData();
requestSaveOptionsData.setSaveFormat(saveFormat: "pdf");
requestSaveOptionsData.setFileName(fileName: "/TestSaveAs.pdf");
let saveRequest = SaveAsOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("Common/test_multi_pages.docx", isDirectory: false))!, saveOptionsData: requestSaveOptionsData);
_ = try api.saveAsOnline(request: saveRequest);