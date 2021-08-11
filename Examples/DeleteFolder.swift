let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let deleteRequest = DeleteFolderRequest(path: "");
_ = try api.deleteFolder(request: deleteRequest);