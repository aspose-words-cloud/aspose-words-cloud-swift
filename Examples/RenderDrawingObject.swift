let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let renderRequest = RenderDrawingObjectRequest(name: "Sample.docx", format: "png", index: 0);
_ = try api.renderDrawingObject(request: renderRequest);