let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let requestDocument = InputStream(url: URL(string: "Sample.docx"))!;
let requestBorderPropertiesColor = XmlColor()
  .setWeb(web: "#AABBCC");
let requestBorderProperties = Border()
  .setBorderType(borderType: Border.BorderType._left)
  .setColor(color: requestBorderPropertiesColor)
  .setDistanceFromText(distanceFromText: 6)
  .setLineStyle(lineStyle: Border.LineStyle.dashDotStroker)
  .setLineWidth(lineWidth: 2)
  .setShadow(shadow: true);
let updateRequest = UpdateBorderOnlineRequest(document: requestDocument, borderProperties: requestBorderProperties, borderType: "left", nodePath: "tables/1/rows/0/cells/0");
_ = try api.updateBorderOnline(request: updateRequest);