let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let requestBorderPropertiesColor = XmlColor()
  .setWeb(web: "#AABBCC");
let requestBorderProperties = Border()
  .setBorderType(borderType: Border.BorderType._left)
  .setColor(color: requestBorderPropertiesColor)
  .setDistanceFromText(distanceFromText: 6.0)
  .setLineStyle(lineStyle: Border.LineStyle.dashDotStroker)
  .setLineWidth(lineWidth: 2.0)
  .setShadow(shadow: true);
let updateRequest = UpdateBorderRequest(name: "Sample.docx", borderType: "left", borderProperties: requestBorderProperties, nodePath: "tables/1/rows/0/cells/0");
_ = try api.updateBorder(request: updateRequest);