let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let requestDocument = InputStream(url: URL(string: "Sample.docx"))!;
let requestStyleUpdate = StyleUpdate()
  .setName(name: "My Style");
let updateRequest = UpdateStyleOnlineRequest(document: requestDocument, styleName: "Heading 1", styleUpdate: requestStyleUpdate);
_ = try api.updateStyleOnline(request: updateRequest);