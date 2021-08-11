let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let remoteFileName = "Sample.docx";

let requestWatermarkText = WatermarkText();
requestWatermarkText.setText(text: "This is the text");
requestWatermarkText.setRotationAngle(rotationAngle: 90.0);
let insertRequest = InsertWatermarkTextRequest(name: remoteFileName, watermarkText: requestWatermarkText, destFileName: remoteFileName);
_ = try api.insertWatermarkText(request: insertRequest);