let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let requestCustomXmlPart = CustomXmlPartInsert()
  .setData(data: "<data>Hello world</data>")
  .setId(id: "hello");
let insertRequest = InsertCustomXmlPartRequest(name: "Sample.docx", customXmlPart: requestCustomXmlPart as! CustomXmlPartInsert);
_ = try api.insertCustomXmlPart(request: insertRequest);