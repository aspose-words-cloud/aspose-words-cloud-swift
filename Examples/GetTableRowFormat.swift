let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let request = GetTableRowFormatRequest(name: "Sample.docx", tablePath: "sections/0/tables/2", index: 0);
_ = try api.getTableRowFormat(request: request);