let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let requestDocument = InputStream(url: URL(string: "Sample.docx"))!;
let requestProperties = TableProperties()
  .setAlignment(alignment: TableProperties.Alignment._right)
  .setAllowAutoFit(allowAutoFit: false)
  .setBidi(bidi: true)
  .setBottomPadding(bottomPadding: 1)
  .setCellSpacing(cellSpacing: 2)
  .setStyleOptions(styleOptions: TableProperties.StyleOptions.columnBands);
let updateRequest = UpdateTablePropertiesOnlineRequest(document: requestDocument, properties: requestProperties, index: 1);
_ = try api.updateTablePropertiesOnline(request: updateRequest);