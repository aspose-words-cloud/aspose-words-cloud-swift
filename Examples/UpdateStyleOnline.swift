let currentDir = ...
let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let requestStyleUpdate = StyleUpdate();
requestStyleUpdate.setName(name: "My Style");
let updateRequest = UpdateStyleOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!, styleName: "Heading 1", styleUpdate: requestStyleUpdate);
_ = try api.updateStyleOnline(request: updateRequest);