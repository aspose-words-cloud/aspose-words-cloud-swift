let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let copyRequest = CopyFileRequest(destPath: "/TestCopyFileDest.docx", srcPath: "Sample.docx");
_ = try api.copyFile(request: copyRequest);