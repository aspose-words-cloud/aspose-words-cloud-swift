let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let deleteRequest = DeleteTableCellRequest(name: "Sample.docx", tableRowPath: "sections/0/tables/2/rows/0", index: 0);
_ = try api.deleteTableCell(request: deleteRequest);