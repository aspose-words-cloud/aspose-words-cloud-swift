let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let requestField = FieldInsert();
requestField.setFieldCode(fieldCode: "{ NUMPAGES }");
let insertRequest = InsertFieldRequest(name: "Sample.docx", field: requestField);
_ = try api.insertField(request: insertRequest);