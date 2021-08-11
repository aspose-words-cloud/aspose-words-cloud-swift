let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let request = GetTableCellFormatRequest(name: "Sample.docx", tableRowPath: "sections/0/tables/2/rows/0", index: 0);
_ = try api.getTableCellFormat(request: request);