let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let request = GetCustomXmlPartRequest(name: "Sample.docx", customXmlPartIndex: 0);
_ = try api.getCustomXmlPart(request: request);