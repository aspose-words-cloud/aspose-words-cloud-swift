let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let requestStyleUpdate = StyleUpdate()
  .setName(name: "My Style");
let updateRequest = UpdateStyleRequest(name: "Sample.docx", styleName: "Heading 1", styleUpdate: requestStyleUpdate);
_ = try api.updateStyle(request: updateRequest);