let currentDir = ...
let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let requestListInsert = ListInsert();
requestListInsert.setTemplate(template: ListInsert.Template.outlineLegal);
let insertRequest = InsertListOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("DocumentElements/Lists/ListsGet.doc", isDirectory: false))!, listInsert: requestListInsert);
_ = try api.insertListOnline(request: insertRequest);