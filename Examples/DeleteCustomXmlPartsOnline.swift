let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let requestDocument = InputStream(url: URL(string: "Sample.docx"))!;
let deleteRequest = DeleteCustomXmlPartsOnlineRequest(document: requestDocument);
_ = try api.deleteCustomXmlPartsOnline(request: deleteRequest);