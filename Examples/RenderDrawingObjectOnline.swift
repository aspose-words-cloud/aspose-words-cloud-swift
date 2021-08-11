let currentDir = ...
let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let renderRequest = RenderDrawingObjectOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!, format: "png", index: 0, nodePath: "sections/0");
_ = try api.renderDrawingObjectOnline(request: renderRequest);