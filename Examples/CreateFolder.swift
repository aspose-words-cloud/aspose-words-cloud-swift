let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let createRequest = CreateFolderRequest(path: "/TestCreateFolder");
_ = try api.createFolder(request: createRequest);