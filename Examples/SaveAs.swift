let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let requestSaveOptionsData = SaveOptionsData();
requestSaveOptionsData.setSaveFormat(saveFormat: "docx");
requestSaveOptionsData.setFileName(fileName: "/TestSaveAsFromPdfToDoc.docx");
let saveRequest = SaveAsRequest(name: "Sample.docx", saveOptionsData: requestSaveOptionsData);
_ = try api.saveAs(request: saveRequest);