let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let requestDocument = InputStream(url: URL(string: "Common/test_multi_pages.docx"))!;
let requestSaveOptionsData = SaveOptionsData()
  .setFileName(fileName: "/TestSaveAs.pdf")
  .setSaveFormat(saveFormat: "pdf");
let saveRequest = SaveAsOnlineRequest(document: requestDocument, saveOptionsData: requestSaveOptionsData);
_ = try api.saveAsOnline(request: saveRequest);