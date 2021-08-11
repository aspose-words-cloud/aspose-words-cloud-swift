let currentDir = ...
let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let uploadRequest = UploadFileRequest(fileContent: InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!, path: "Sample.docx");
_ = try api.uploadFile(request: uploadRequest);