let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let requestFormat = TableCellFormat()
  .setBottomPadding(bottomPadding: 5.0)
  .setFitText(fitText: true)
  .setHorizontalMerge(horizontalMerge: TableCellFormat.HorizontalMerge.first)
  .setWrapText(wrapText: true);
let updateRequest = UpdateTableCellFormatRequest(name: "Sample.docx", tableRowPath: "sections/0/tables/2/rows/0", index: 0, format: requestFormat);
_ = try api.updateTableCellFormat(request: updateRequest);