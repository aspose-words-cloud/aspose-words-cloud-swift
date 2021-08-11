let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let requestCustomXmlPart = CustomXmlPartUpdate();
requestCustomXmlPart.setData(data: "<data>Hello world</data>");
let updateRequest = UpdateCustomXmlPartRequest(name: "Sample.docx", customXmlPartIndex: 0, customXmlPart: requestCustomXmlPart);
_ = try api.updateCustomXmlPart(request: updateRequest);