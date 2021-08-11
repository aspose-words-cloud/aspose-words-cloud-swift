let currentDir = ...
let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let request = GetFormFieldsOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("/FormFilled.docx", isDirectory: false))!, nodePath: "sections/0");
_ = try api.getFormFieldsOnline(request: request);