let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let moveRequest = MoveFolderRequest(destPath: "/TestMoveFolderDest_Sample", srcPath: "/TestMoveFolderSrc");
_ = try api.moveFolder(request: moveRequest);