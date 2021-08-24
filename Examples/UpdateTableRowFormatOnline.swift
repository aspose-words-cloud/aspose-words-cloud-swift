let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let requestDocument = InputStream(url: URL(string: "Sample.docx"))!;
let requestFormat = TableRowFormat()
  .setAllowBreakAcrossPages(allowBreakAcrossPages: true)
  .setHeadingFormat(headingFormat: true)
  .setHeight(height: 10)
  .setHeightRule(heightRule: TableRowFormat.HeightRule.auto);
let updateRequest = UpdateTableRowFormatOnlineRequest(document: requestDocument, tablePath: "sections/0/tables/2", format: requestFormat, index: 0);
_ = try api.updateTableRowFormatOnline(request: updateRequest);