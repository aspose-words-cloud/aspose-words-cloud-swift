let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let requestDocument = InputStream(url: URL(string: "Sample.docx"))!;
let requestCell = TableCellInsert();
let insertRequest = InsertTableCellOnlineRequest(document: requestDocument, tableRowPath: "sections/0/tables/2/rows/0", cell: requestCell);
_ = try api.insertTableCellOnline(request: insertRequest);