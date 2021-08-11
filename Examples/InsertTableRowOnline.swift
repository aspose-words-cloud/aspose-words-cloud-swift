let currentDir = ...
let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let requestRow = TableRowInsert();
requestRow.setColumnsCount(columnsCount: 5);
let insertRequest = InsertTableRowOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!, tablePath: "sections/0/tables/2", row: requestRow);
_ = try api.insertTableRowOnline(request: insertRequest);