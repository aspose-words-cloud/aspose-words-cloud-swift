let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let deleteRequest = DeleteCustomXmlPartsRequest(name: "Sample.docx");
_ = try api.deleteCustomXmlParts(request: deleteRequest);