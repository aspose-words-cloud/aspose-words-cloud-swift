let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let requestRangeText = ReplaceRange()
  .setText(text: "Replaced header");
let replaceRequest = ReplaceWithTextRequest(name: "Sample.docx", rangeStartIdentifier: "id0.0.0", rangeText: requestRangeText, rangeEndIdentifier: "id0.0.1");
_ = try api.replaceWithText(request: replaceRequest);