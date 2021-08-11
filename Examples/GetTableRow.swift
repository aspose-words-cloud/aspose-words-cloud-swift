let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let request = GetTableRowRequest(name: "Sample.docx", tablePath: "tables/1", index: 0);
_ = try api.getTableRow(request: request);