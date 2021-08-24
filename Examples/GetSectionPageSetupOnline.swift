let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let requestDocument = InputStream(url: URL(string: "Sample.docx"))!;
let request = GetSectionPageSetupOnlineRequest(document: requestDocument, sectionIndex: 0);
_ = try api.getSectionPageSetupOnline(request: request);