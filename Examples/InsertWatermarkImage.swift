let currentDir = ...
let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let insertRequest = InsertWatermarkImageRequest(name: "Sample.docx", imageFile: nil, image: "Sample.png");
_ = try api.insertWatermarkImage(request: insertRequest);