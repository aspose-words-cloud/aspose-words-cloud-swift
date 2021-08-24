let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let requestDocument = InputStream(url: URL(string: "Sample.docx"))!;
let deleteRequest = DeleteSectionOnlineRequest(document: requestDocument, sectionIndex: 0);
_ = try api.deleteSectionOnline(request: deleteRequest);