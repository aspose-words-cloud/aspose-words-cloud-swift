let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let requestDocument = InputStream(url: URL(string: "Sample.docx"))!;
let convertRequest = ConvertDocumentRequest(document: requestDocument, format: "pdf");
_ = try api.convertDocument(request: convertRequest);