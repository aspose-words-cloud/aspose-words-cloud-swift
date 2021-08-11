let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let request = GetHeaderFooterOfSectionRequest(name: "Sample.docx", headerFooterIndex: 0, sectionIndex: 0);
_ = try api.getHeaderFooterOfSection(request: request);