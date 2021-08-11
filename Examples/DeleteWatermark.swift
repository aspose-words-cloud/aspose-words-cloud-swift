let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let remoteFileName = "Sample.docx";

let deleteRequest = DeleteWatermarkRequest(name: remoteFileName, destFileName: remoteFileName);
_ = try api.deleteWatermark(request: deleteRequest);