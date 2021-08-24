let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let requestSaveOptions = TiffSaveOptionsData()
  .setFileName(fileName: "/abc.tiff")
  .setSaveFormat(saveFormat: "tiff");
let saveRequest = SaveAsTiffRequest(name: "Sample.docx", saveOptions: requestSaveOptions as! TiffSaveOptionsData);
_ = try api.saveAsTiff(request: saveRequest);