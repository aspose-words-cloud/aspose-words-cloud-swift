let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let requestField = FieldInsert()
  .setFieldCode(fieldCode: "{ NUMPAGES }");
let insertRequest = InsertFieldRequest(name: "Sample.docx", field: requestField as! FieldInsert);
_ = try api.insertField(request: insertRequest);