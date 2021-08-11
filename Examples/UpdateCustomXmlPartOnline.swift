let currentDir = ...
let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let requestCustomXmlPart = CustomXmlPartUpdate();
requestCustomXmlPart.setData(data: "<data>Hello world</data>");
let updateRequest = UpdateCustomXmlPartOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!, customXmlPartIndex: 0, customXmlPart: requestCustomXmlPart);
_ = try api.updateCustomXmlPartOnline(request: updateRequest);