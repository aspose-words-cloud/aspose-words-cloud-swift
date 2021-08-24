let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let requestDocument = InputStream(url: URL(string: "Sample.docx"))!;
let request = GetTableRowFormatOnlineRequest(document: requestDocument, tablePath: "sections/0/tables/2", index: 0);
_ = try api.getTableRowFormatOnline(request: request);