let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let request = GetSectionPageSetupRequest(name: "Sample.docx", sectionIndex: 0);
_ = try api.getSectionPageSetup(request: request);