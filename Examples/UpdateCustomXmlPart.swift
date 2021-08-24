let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let requestCustomXmlPart = CustomXmlPartUpdate()
  .setData(data: "<data>Hello world</data>");
let updateRequest = UpdateCustomXmlPartRequest(name: "Sample.docx", customXmlPartIndex: 0, customXmlPart: requestCustomXmlPart as! CustomXmlPartUpdate);
_ = try api.updateCustomXmlPart(request: updateRequest);