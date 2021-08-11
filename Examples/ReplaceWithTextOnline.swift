let currentDir = ...
let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let requestRangeText = ReplaceRange();
requestRangeText.setText(text: "Replaced header");
let replaceRequest = ReplaceWithTextOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("DocumentElements/Range/RangeGet.doc", isDirectory: false))!, rangeStartIdentifier: "id0.0.0", rangeText: requestRangeText, rangeEndIdentifier: "id0.0.1");
_ = try api.replaceWithTextOnline(request: replaceRequest);