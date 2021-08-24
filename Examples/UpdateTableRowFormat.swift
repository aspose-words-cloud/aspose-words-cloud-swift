let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let requestFormat = TableRowFormat()
  .setAllowBreakAcrossPages(allowBreakAcrossPages: true)
  .setHeadingFormat(headingFormat: true)
  .setHeight(height: 10.0)
  .setHeightRule(heightRule: TableRowFormat.HeightRule.exactly);
let updateRequest = UpdateTableRowFormatRequest(name: "Sample.docx", tablePath: "sections/0/tables/2", index: 0, format: requestFormat);
_ = try api.updateTableRowFormat(request: updateRequest);