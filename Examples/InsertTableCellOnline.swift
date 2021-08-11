let currentDir = ...
let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let requestCell = TableCellInsert();

let insertRequest = InsertTableCellOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!, tableRowPath: "sections/0/tables/2/rows/0", cell: requestCell);
_ = try api.insertTableCellOnline(request: insertRequest);