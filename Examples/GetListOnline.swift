let currentDir = ...
let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let request = GetListOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("DocumentElements/Lists/ListsGet.doc", isDirectory: false))!, listId: 1);
_ = try api.getListOnline(request: request);