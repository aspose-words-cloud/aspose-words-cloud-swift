let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let requestDocument = InputStream(url: URL(string: "Sample.doc"))!;
let requestListUpdate = ListLevelUpdate()
  .setAlignment(alignment: ListLevelUpdate.Alignment._right);
let updateRequest = UpdateListLevelOnlineRequest(document: requestDocument, listId: 1, listUpdate: requestListUpdate, listLevel: 1);
_ = try api.updateListLevelOnline(request: updateRequest);