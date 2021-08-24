let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let requestDocument = InputStream(url: URL(string: "Sample.docx"))!;
let request = GetTableCellOnlineRequest(document: requestDocument, tableRowPath: "sections/0/tables/2/rows/0", index: 0);
_ = try api.getTableCellOnline(request: request);