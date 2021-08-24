let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let requestListUpdate = ListLevelUpdate()
  .setAlignment(alignment: ListLevelUpdate.Alignment._right);
let updateRequest = UpdateListLevelRequest(name: "TestGetLists.doc", listId: 1, listLevel: 1, listUpdate: requestListUpdate);
_ = try api.updateListLevel(request: updateRequest);