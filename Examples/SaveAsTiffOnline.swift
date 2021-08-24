let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let requestDocument = InputStream(url: URL(string: "Common/test_multi_pages.docx"))!;
let requestSaveOptions = TiffSaveOptionsData()
  .setFileName(fileName: "/abc.tiff")
  .setSaveFormat(saveFormat: "tiff");
let saveRequest = SaveAsTiffOnlineRequest(document: requestDocument, saveOptions: requestSaveOptions as! TiffSaveOptionsData);
_ = try api.saveAsTiffOnline(request: saveRequest);