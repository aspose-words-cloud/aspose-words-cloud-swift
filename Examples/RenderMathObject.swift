let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let renderRequest = RenderMathObjectRequest(name: "Sample.docx", format: "png", index: 0);
_ = try api.renderMathObject(request: renderRequest);