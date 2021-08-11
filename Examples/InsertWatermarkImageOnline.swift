let currentDir = ...
let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let insertRequest = InsertWatermarkImageOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!, imageFile: InputStream(url: currentDir!.appendingPathComponent("Common/aspose-cloud.png", isDirectory: false))!);
_ = try api.insertWatermarkImageOnline(request: insertRequest);