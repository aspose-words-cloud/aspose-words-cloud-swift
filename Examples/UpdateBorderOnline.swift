let currentDir = ...
let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let requestBorderPropertiesColor = XmlColor();
requestBorderPropertiesColor.setWeb(web: "#AABBCC");
let requestBorderProperties = Border();
requestBorderProperties.setBorderType(borderType: Border.BorderType._left);
requestBorderProperties.setColor(color: requestBorderPropertiesColor);
requestBorderProperties.setDistanceFromText(distanceFromText: 6);
requestBorderProperties.setLineStyle(lineStyle: Border.LineStyle.dashDotStroker);
requestBorderProperties.setLineWidth(lineWidth: 2);
requestBorderProperties.setShadow(shadow: true);
let updateRequest = UpdateBorderOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!, borderProperties: requestBorderProperties, borderType: "left", nodePath: "tables/1/rows/0/cells/0");
_ = try api.updateBorderOnline(request: updateRequest);