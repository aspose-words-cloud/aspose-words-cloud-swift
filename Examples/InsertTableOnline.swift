let currentDir = ...
let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let requestTable = TableInsert();
requestTable.setColumnsCount(columnsCount: 5);
requestTable.setRowsCount(rowsCount: 4);
let insertRequest = InsertTableOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!, table: requestTable, nodePath: "");
_ = try api.insertTableOnline(request: insertRequest);