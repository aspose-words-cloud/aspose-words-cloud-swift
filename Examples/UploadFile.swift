let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let requestFileContent = InputStream(url: URL(string: "Sample.docx"))!;
let uploadRequest = UploadFileRequest(fileContent: requestFileContent, path: "Sample.docx");
_ = try api.uploadFile(request: uploadRequest);