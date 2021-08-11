let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let requestFormat = TableCellFormat();
requestFormat.setBottomPadding(bottomPadding: 5.0);
requestFormat.setFitText(fitText: true);
requestFormat.setHorizontalMerge(horizontalMerge: TableCellFormat.HorizontalMerge.first);
requestFormat.setWrapText(wrapText: true);
let updateRequest = UpdateTableCellFormatRequest(name: "Sample.docx", tableRowPath: "sections/0/tables/2/rows/0", index: 0, format: requestFormat);
_ = try api.updateTableCellFormat(request: updateRequest);