let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let requestWatermarkText = WatermarkText();
requestWatermarkText.setText(text: "This is the text");
requestWatermarkText.setRotationAngle(rotationAngle: 90.0);
let insertRequest = InsertWatermarkTextRequest(name: "Sample.docx", watermarkText: requestWatermarkText);
_ = try api.insertWatermarkText(request: insertRequest);