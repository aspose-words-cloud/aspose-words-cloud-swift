let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let request = GetListsRequest(name: "TestGetLists.doc");
_ = try api.getLists(request: request);