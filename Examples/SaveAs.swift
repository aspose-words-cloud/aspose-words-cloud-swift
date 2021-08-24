let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let requestSaveOptionsData = SaveOptionsData()
  .setFileName(fileName: "/TestSaveAsFromPdfToDoc.docx")
  .setSaveFormat(saveFormat: "docx");
let saveRequest = SaveAsRequest(name: "Sample.docx", saveOptionsData: requestSaveOptionsData);
_ = try api.saveAs(request: saveRequest);