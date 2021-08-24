let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let requestDocument = InputStream(url: URL(string: "Sample.doc"))!;
let requestRangeText = ReplaceRange()
  .setText(text: "Replaced header");
let replaceRequest = ReplaceWithTextOnlineRequest(document: requestDocument, rangeStartIdentifier: "id0.0.0", rangeText: requestRangeText, rangeEndIdentifier: "id0.0.1");
_ = try api.replaceWithTextOnline(request: replaceRequest);