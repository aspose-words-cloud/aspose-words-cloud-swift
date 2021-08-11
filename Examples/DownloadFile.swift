let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let downloadRequest = DownloadFileRequest(path: "Sample.docx");
_ = try api.downloadFile(request: downloadRequest);