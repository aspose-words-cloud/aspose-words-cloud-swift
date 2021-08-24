let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let requestWatermarkText = WatermarkText()
  .setRotationAngle(rotationAngle: 90.0)
  .setText(text: "This is the text");
let insertRequest = InsertWatermarkTextRequest(name: "Sample.docx", watermarkText: requestWatermarkText);
_ = try api.insertWatermarkText(request: insertRequest);