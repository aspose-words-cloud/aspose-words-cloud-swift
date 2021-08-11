let currentDir = ...
let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let requestStyleInsert = StyleInsert();
requestStyleInsert.setStyleName(styleName: "My Style");
requestStyleInsert.setStyleType(styleType: StyleInsert.StyleType.paragraph);
let insertRequest = InsertStyleOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!, styleInsert: requestStyleInsert);
_ = try api.insertStyleOnline(request: insertRequest);