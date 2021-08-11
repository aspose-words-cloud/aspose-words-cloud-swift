let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let renderRequest = RenderPageRequest(name: "Sample.docx", pageIndex: 1, format: "bmp");
_ = try api.renderPage(request: renderRequest);