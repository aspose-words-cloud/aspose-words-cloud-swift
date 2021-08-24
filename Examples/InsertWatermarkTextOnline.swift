let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let requestDocument = InputStream(url: URL(string: "Sample.docx"))!;
let requestWatermarkText = WatermarkText()
  .setRotationAngle(rotationAngle: 90)
  .setText(text: "This is the text");
let insertRequest = InsertWatermarkTextOnlineRequest(document: requestDocument, watermarkText: requestWatermarkText);
_ = try api.insertWatermarkTextOnline(request: insertRequest);