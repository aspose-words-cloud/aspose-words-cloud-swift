let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let requestTable = TableInsert()
  .setColumnsCount(columnsCount: 5)
  .setRowsCount(rowsCount: 4);
let insertRequest = InsertTableRequest(name: "Sample.docx", table: requestTable);
_ = try api.insertTable(request: insertRequest);