let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let requestRow = TableRowInsert()
  .setColumnsCount(columnsCount: 5);
let insertRequest = InsertTableRowRequest(name: "Sample.docx", tablePath: "sections/0/tables/2", row: requestRow);
_ = try api.insertTableRow(request: insertRequest);