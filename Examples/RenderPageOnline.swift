let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let requestDocument = InputStream(url: URL(string: "Sample.docx"))!;
let renderRequest = RenderPageOnlineRequest(document: requestDocument, pageIndex: 1, format: "bmp");
_ = try api.renderPageOnline(request: renderRequest);