let currentDir = ...
let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let requestCustomXmlPart = CustomXmlPartInsert();
requestCustomXmlPart.setId(id: "hello");
requestCustomXmlPart.setData(data: "<data>Hello world</data>");
let insertRequest = InsertCustomXmlPartOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!, customXmlPart: requestCustomXmlPart);
_ = try api.insertCustomXmlPartOnline(request: insertRequest);