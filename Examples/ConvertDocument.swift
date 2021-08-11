let currentDir = ...
let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let convertRequest = ConvertDocumentRequest(document: InputStream(url: currentDir!.appendingPathComponent("/test_uploadfile.docx", isDirectory: false))!, format: "pdf");
_ = try api.convertDocument(request: convertRequest);