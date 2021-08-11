let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let deleteRequest = DeleteSectionRequest(name: "Sample.docx", sectionIndex: 0);
_ = try api.deleteSection(request: deleteRequest);