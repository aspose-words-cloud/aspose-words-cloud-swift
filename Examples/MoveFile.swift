let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let moveRequest = MoveFileRequest(destPath: "/TestMoveFileDest_Sample.docx", srcPath: "Sample.docx");
_ = try api.moveFile(request: moveRequest);