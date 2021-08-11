let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let requestTable = TableInsert();
requestTable.setColumnsCount(columnsCount: 5);
requestTable.setRowsCount(rowsCount: 4);
let insertRequest = InsertTableRequest(name: "Sample.docx", table: requestTable);
_ = try api.insertTable(request: insertRequest);