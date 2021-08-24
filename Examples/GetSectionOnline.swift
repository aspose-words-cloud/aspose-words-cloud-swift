let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let requestDocument = InputStream(url: URL(string: "Sample.docx"))!;
let request = GetSectionOnlineRequest(document: requestDocument, sectionIndex: 0);
_ = try api.getSectionOnline(request: request);