let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let request = GetCustomXmlPartsRequest(name: "Sample.docx");
_ = try api.getCustomXmlParts(request: request);