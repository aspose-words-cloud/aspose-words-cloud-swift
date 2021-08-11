let currentDir = ...
let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let deleteRequest = DeleteBorderOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!, borderType: "left", nodePath: "tables/1/rows/0/cells/0");
_ = try api.deleteBorderOnline(request: deleteRequest);