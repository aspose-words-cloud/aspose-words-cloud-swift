let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let requestFormat = TableRowFormat();
requestFormat.setAllowBreakAcrossPages(allowBreakAcrossPages: true);
requestFormat.setHeadingFormat(headingFormat: true);
requestFormat.setHeight(height: 10.0);
requestFormat.setHeightRule(heightRule: TableRowFormat.HeightRule.exactly);
let updateRequest = UpdateTableRowFormatRequest(name: "Sample.docx", tablePath: "sections/0/tables/2", index: 0, format: requestFormat);
_ = try api.updateTableRowFormat(request: updateRequest);