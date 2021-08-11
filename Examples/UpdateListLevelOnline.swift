let currentDir = ...
let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let requestListUpdate = ListLevelUpdate();
requestListUpdate.setAlignment(alignment: ListLevelUpdate.Alignment._right);
let updateRequest = UpdateListLevelOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("DocumentElements/Lists/ListsGet.doc", isDirectory: false))!, listId: 1, listUpdate: requestListUpdate, listLevel: 1);
_ = try api.updateListLevelOnline(request: updateRequest);