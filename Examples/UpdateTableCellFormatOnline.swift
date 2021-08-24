let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let requestDocument = InputStream(url: URL(string: "Sample.docx"))!;
let requestFormat = TableCellFormat()
  .setBottomPadding(bottomPadding: 5)
  .setFitText(fitText: true)
  .setHorizontalMerge(horizontalMerge: TableCellFormat.HorizontalMerge.first)
  .setWrapText(wrapText: true);
let updateRequest = UpdateTableCellFormatOnlineRequest(document: requestDocument, tableRowPath: "sections/0/tables/2/rows/0", format: requestFormat, index: 0);
_ = try api.updateTableCellFormatOnline(request: updateRequest);