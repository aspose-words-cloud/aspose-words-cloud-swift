let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let deleteRequest = DeleteFileRequest(path: "Sample.docx");
_ = try api.deleteFile(request: deleteRequest);