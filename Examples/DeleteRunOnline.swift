let currentDir = ...
let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let deleteRequest = DeleteRunOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("DocumentElements/Runs/Run.doc", isDirectory: false))!, paragraphPath: "paragraphs/1", index: 0);
_ = try api.deleteRunOnline(request: deleteRequest);