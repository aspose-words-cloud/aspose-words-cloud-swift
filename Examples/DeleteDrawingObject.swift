let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let deleteRequest = DeleteDrawingObjectRequest(name: "Sample.docx", index: 0);
_ = try api.deleteDrawingObject(request: deleteRequest);