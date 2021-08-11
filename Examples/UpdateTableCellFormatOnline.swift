let currentDir = ...
let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let requestFormat = TableCellFormat();
requestFormat.setBottomPadding(bottomPadding: 5);
requestFormat.setFitText(fitText: true);
requestFormat.setHorizontalMerge(horizontalMerge: TableCellFormat.HorizontalMerge.first);
requestFormat.setWrapText(wrapText: true);
let updateRequest = UpdateTableCellFormatOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!, tableRowPath: "sections/0/tables/2/rows/0", format: requestFormat, index: 0);
_ = try api.updateTableCellFormatOnline(request: updateRequest);