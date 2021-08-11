let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let request = GetSectionRequest(name: "Sample.docx", sectionIndex: 0);
_ = try api.getSection(request: request);