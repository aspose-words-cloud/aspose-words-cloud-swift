let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let requestProperties = TableProperties()
  .setAlignment(alignment: TableProperties.Alignment._right)
  .setAllowAutoFit(allowAutoFit: false)
  .setBidi(bidi: true)
  .setBottomPadding(bottomPadding: 1.0)
  .setCellSpacing(cellSpacing: 2.0)
  .setStyleOptions(styleOptions: TableProperties.StyleOptions.columnBands);
let updateRequest = UpdateTablePropertiesRequest(name: "Sample.docx", index: 1, properties: requestProperties);
_ = try api.updateTableProperties(request: updateRequest);