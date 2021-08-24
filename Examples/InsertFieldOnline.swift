let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let requestDocument = InputStream(url: URL(string: "Sample.docx"))!;
let requestField = FieldInsert()
  .setFieldCode(fieldCode: "{ NUMPAGES }");
let insertRequest = InsertFieldOnlineRequest(document: requestDocument, field: requestField as! FieldInsert, nodePath: "sections/0/paragraphs/0");
_ = try api.insertFieldOnline(request: insertRequest);