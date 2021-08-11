let currentDir = ...
let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let request = GetFormFieldOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("/FormFilled.docx", isDirectory: false))!, index: 0, nodePath: "sections/0");
_ = try api.getFormFieldOnline(request: request);