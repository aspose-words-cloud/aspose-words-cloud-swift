let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let classifyRequest = ClassifyDocumentRequest(name: "Sample.docx", bestClassesCount: "3");
_ = try api.classifyDocument(request: classifyRequest);