let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let requestDataSaveOptions = SaveOptionsData()
  .setDmlEffectsRenderingMode(dmlEffectsRenderingMode: "1")
  .setDmlRenderingMode(dmlRenderingMode: "1")
  .setFileName(fileName: "google.doc")
  .setSaveFormat(saveFormat: "doc")
  .setUpdateSdtContent(updateSdtContent: false)
  .setZipOutput(zipOutput: false);
let requestData = LoadWebDocumentData()
  .setLoadingDocumentUrl(loadingDocumentUrl: "http://google.com")
  .setSaveOptions(saveOptions: requestDataSaveOptions);
let loadRequest = LoadWebDocumentRequest(data: requestData);
_ = try api.loadWebDocument(request: loadRequest);