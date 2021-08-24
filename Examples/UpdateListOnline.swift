let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let requestDocument = InputStream(url: URL(string: "Sample.doc"))!;
let requestListUpdate = ListUpdate()
  .setIsRestartAtEachSection(isRestartAtEachSection: true);
let updateRequest = UpdateListOnlineRequest(document: requestDocument, listId: 1, listUpdate: requestListUpdate);
_ = try api.updateListOnline(request: updateRequest);