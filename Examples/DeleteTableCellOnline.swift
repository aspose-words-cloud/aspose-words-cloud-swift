let currentDir = ...
let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let deleteRequest = DeleteTableCellOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!, tableRowPath: "sections/0/tables/2/rows/0", index: 0);
_ = try api.deleteTableCellOnline(request: deleteRequest);