let currentDir = ...
let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let requestProperties = TableProperties();
requestProperties.setAlignment(alignment: TableProperties.Alignment._right);
requestProperties.setAllowAutoFit(allowAutoFit: false);
requestProperties.setBidi(bidi: true);
requestProperties.setBottomPadding(bottomPadding: 1);
requestProperties.setCellSpacing(cellSpacing: 2);
requestProperties.setStyleOptions(styleOptions: TableProperties.StyleOptions.columnBands);
let updateRequest = UpdateTablePropertiesOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!, properties: requestProperties, index: 1, nodePath: "");
_ = try api.updateTablePropertiesOnline(request: updateRequest);