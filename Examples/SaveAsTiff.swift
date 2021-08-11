let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let requestSaveOptions = TiffSaveOptionsData();
requestSaveOptions.setSaveFormat(saveFormat: "tiff");
requestSaveOptions.setFileName(fileName: "/abc.tiff");
let saveRequest = SaveAsTiffRequest(name: "Sample.docx", saveOptions: requestSaveOptions);
_ = try api.saveAsTiff(request: saveRequest);