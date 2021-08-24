let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let requestDocument = InputStream(url: URL(string: "Sample.docx"))!;
let renderRequest = RenderDrawingObjectOnlineRequest(document: requestDocument, format: "png", index: 0, nodePath: "sections/0");
_ = try api.renderDrawingObjectOnline(request: renderRequest);