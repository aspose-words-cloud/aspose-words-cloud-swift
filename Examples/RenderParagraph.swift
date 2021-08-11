let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let renderRequest = RenderParagraphRequest(name: "Sample.docx", format: "png", index: 0);
_ = try api.renderParagraph(request: renderRequest);