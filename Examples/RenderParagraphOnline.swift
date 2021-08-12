let currentDir = ...
let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let renderRequest = RenderParagraphOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!, format: "png", index: 0);
_ = try api.renderParagraphOnline(request: renderRequest);