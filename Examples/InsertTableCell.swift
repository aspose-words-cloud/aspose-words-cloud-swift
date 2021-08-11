let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let requestCell = TableCellInsert();

let insertRequest = InsertTableCellRequest(name: "Sample.docx", tableRowPath: "sections/0/tables/2/rows/0", cell: requestCell);
_ = try api.insertTableCell(request: insertRequest);