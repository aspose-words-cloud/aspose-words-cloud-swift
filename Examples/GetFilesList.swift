let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let request = GetFilesListRequest(path: "");
_ = try api.getFilesList(request: request);