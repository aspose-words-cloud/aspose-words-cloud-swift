let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let requestDocument = InputStream(url: URL(string: "Sample.docx"))!;
let renderRequest = RenderTableOnlineRequest(document: requestDocument, format: "png", index: 0);
_ = try api.renderTableOnline(request: renderRequest);