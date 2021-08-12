let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let deleteRequest = DeleteDocumentPropertyRequest(name: "Sample.docx", propertyName: "testProp");
_ = try api.deleteDocumentProperty(request: deleteRequest);