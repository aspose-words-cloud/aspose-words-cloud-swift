let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let deleteRequest = DeleteCustomXmlPartRequest(name: "Sample.docx", customXmlPartIndex: 0);
_ = try api.deleteCustomXmlPart(request: deleteRequest);