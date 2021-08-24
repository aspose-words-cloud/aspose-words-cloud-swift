let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let requestDocument = InputStream(url: URL(string: "Sample.docx"))!;
let requestRow = TableRowInsert()
  .setColumnsCount(columnsCount: 5);
let insertRequest = InsertTableRowOnlineRequest(document: requestDocument, tablePath: "sections/0/tables/2", row: requestRow);
_ = try api.insertTableRowOnline(request: insertRequest);