let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let deleteRequest = DeleteWatermarkRequest(name: "Sample.docx");
_ = try api.deleteWatermark(request: deleteRequest);