let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let deleteRequest = DeleteTableRowRequest(name: "Sample.docx", tablePath: "tables/1", index: 0);
_ = try api.deleteTableRow(request: deleteRequest);