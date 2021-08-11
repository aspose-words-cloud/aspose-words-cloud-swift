let currentDir = ...
let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let requestListUpdate = ListUpdate();
requestListUpdate.setIsRestartAtEachSection(isRestartAtEachSection: true);
let updateRequest = UpdateListOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("DocumentElements/Lists/ListsGet.doc", isDirectory: false))!, listId: 1, listUpdate: requestListUpdate);
_ = try api.updateListOnline(request: updateRequest);