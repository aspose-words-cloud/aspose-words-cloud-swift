let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let requestListInsert = ListInsert()
  .setTemplate(template: ListInsert.Template.outlineLegal);
let insertRequest = InsertListRequest(name: "TestGetLists.doc", listInsert: requestListInsert);
_ = try api.insertList(request: insertRequest);