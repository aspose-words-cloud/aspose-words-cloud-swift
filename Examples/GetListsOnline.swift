let currentDir = ...
let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let request = GetListsOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("DocumentElements/Lists/ListsGet.doc", isDirectory: false))!);
_ = try api.getListsOnline(request: request);