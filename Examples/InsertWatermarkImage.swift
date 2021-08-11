let currentDir = ...
let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let remoteFileName = "Sample.docx";

let insertRequest = InsertWatermarkImageRequest(name: remoteFileName, imageFile: nil, destFileName: remoteFileName, image: "Sample.png");
_ = try api.insertWatermarkImage(request: insertRequest);