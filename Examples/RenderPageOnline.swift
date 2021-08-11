let currentDir = ...
let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let renderRequest = RenderPageOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("DocumentElements/Text/SampleWordDocument.docx", isDirectory: false))!, pageIndex: 1, format: "bmp");
_ = try api.renderPageOnline(request: renderRequest);