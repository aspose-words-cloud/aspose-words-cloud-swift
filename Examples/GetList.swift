let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let request = GetListRequest(name: "TestGetLists.doc", listId: 1);
_ = try api.getList(request: request);