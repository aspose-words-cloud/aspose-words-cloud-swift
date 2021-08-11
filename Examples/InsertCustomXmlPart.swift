let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let requestCustomXmlPart = CustomXmlPartInsert();
requestCustomXmlPart.setId(id: "hello");
requestCustomXmlPart.setData(data: "<data>Hello world</data>");
let insertRequest = InsertCustomXmlPartRequest(name: "Sample.docx", customXmlPart: requestCustomXmlPart);
_ = try api.insertCustomXmlPart(request: insertRequest);