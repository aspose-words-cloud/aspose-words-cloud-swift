let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let requestDocument = InputStream(url: URL(string: "Sample.docx"))!;
let renderRequest = RenderParagraphOnlineRequest(document: requestDocument, format: "png", index: 0);
_ = try api.renderParagraphOnline(request: renderRequest);