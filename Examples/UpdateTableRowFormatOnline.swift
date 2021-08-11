let currentDir = ...
let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let requestFormat = TableRowFormat();
requestFormat.setAllowBreakAcrossPages(allowBreakAcrossPages: true);
requestFormat.setHeadingFormat(headingFormat: true);
requestFormat.setHeight(height: 10);
requestFormat.setHeightRule(heightRule: TableRowFormat.HeightRule.auto);
let updateRequest = UpdateTableRowFormatOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!, tablePath: "sections/0/tables/2", format: requestFormat, index: 0);
_ = try api.updateTableRowFormatOnline(request: updateRequest);