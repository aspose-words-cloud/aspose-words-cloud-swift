let currentDir = ...
let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let request = GetRangeTextOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("DocumentElements/Range/RangeGet.doc", isDirectory: false))!, rangeStartIdentifier: "id0.0.0", rangeEndIdentifier: "id0.0.1");
_ = try api.getRangeTextOnline(request: request);