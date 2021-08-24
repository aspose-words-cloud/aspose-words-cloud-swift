let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let requestDocument = InputStream(url: URL(string: "Sample.docx"))!;
let requestCustomXmlPart = CustomXmlPartUpdate()
  .setData(data: "<data>Hello world</data>");
let updateRequest = UpdateCustomXmlPartOnlineRequest(document: requestDocument, customXmlPartIndex: 0, customXmlPart: requestCustomXmlPart as! CustomXmlPartUpdate);
_ = try api.updateCustomXmlPartOnline(request: updateRequest);