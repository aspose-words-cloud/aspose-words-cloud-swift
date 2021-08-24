let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let requestDocument = InputStream(url: URL(string: "Sample.docx"))!;
let requestTable = TableInsert()
  .setColumnsCount(columnsCount: 5)
  .setRowsCount(rowsCount: 4);
let insertRequest = InsertTableOnlineRequest(document: requestDocument, table: requestTable);
_ = try api.insertTableOnline(request: insertRequest);