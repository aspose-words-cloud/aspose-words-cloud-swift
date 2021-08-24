let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let requestListUpdate = ListUpdate()
  .setIsRestartAtEachSection(isRestartAtEachSection: true);
let updateRequest = UpdateListRequest(name: "TestGetLists.doc", listId: 1, listUpdate: requestListUpdate);
_ = try api.updateList(request: updateRequest);