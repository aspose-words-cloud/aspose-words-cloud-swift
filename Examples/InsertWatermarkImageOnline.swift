let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let requestDocument = InputStream(url: URL(string: "Sample.docx"))!;
let requestImageFile = InputStream(url: URL(string: "Common/aspose-cloud.png"))!;
let insertRequest = InsertWatermarkImageOnlineRequest(document: requestDocument, imageFile: requestImageFile);
_ = try api.insertWatermarkImageOnline(request: insertRequest);