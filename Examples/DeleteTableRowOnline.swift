let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let requestDocument = InputStream(url: URL(string: "Sample.docx"))!;
let deleteRequest = DeleteTableRowOnlineRequest(document: requestDocument, tablePath: "tables/1", index: 0);
_ = try api.deleteTableRowOnline(request: deleteRequest);