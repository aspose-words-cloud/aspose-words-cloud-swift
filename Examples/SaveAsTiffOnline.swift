let currentDir = ...
let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let requestSaveOptions = TiffSaveOptionsData();
requestSaveOptions.setSaveFormat(saveFormat: "tiff");
requestSaveOptions.setFileName(fileName: "/abc.tiff");
let saveRequest = SaveAsTiffOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("Common/test_multi_pages.docx", isDirectory: false))!, saveOptions: requestSaveOptions);
_ = try api.saveAsTiffOnline(request: saveRequest);