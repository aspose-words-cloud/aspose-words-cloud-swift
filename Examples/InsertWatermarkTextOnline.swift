let currentDir = ...
let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let requestWatermarkText = WatermarkText();
requestWatermarkText.setText(text: "This is the text");
requestWatermarkText.setRotationAngle(rotationAngle: 90);
let insertRequest = InsertWatermarkTextOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!, watermarkText: requestWatermarkText);
_ = try api.insertWatermarkTextOnline(request: insertRequest);