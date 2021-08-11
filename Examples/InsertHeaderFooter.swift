let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let insertRequest = InsertHeaderFooterRequest(name: "Sample.docx", sectionPath: "", headerFooterType: "FooterEven");
_ = try api.insertHeaderFooter(request: insertRequest);