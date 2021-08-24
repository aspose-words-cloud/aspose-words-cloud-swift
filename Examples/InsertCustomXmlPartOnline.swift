let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let requestDocument = InputStream(url: URL(string: "Sample.docx"))!;
let requestCustomXmlPart = CustomXmlPartInsert()
  .setData(data: "<data>Hello world</data>")
  .setId(id: "hello");
let insertRequest = InsertCustomXmlPartOnlineRequest(document: requestDocument, customXmlPart: requestCustomXmlPart as! CustomXmlPartInsert);
_ = try api.insertCustomXmlPartOnline(request: insertRequest);