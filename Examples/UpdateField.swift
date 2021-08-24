let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let requestField = FieldUpdate()
  .setFieldCode(fieldCode: "{ NUMPAGES }");
let updateRequest = UpdateFieldRequest(name: "Sample.docx", index: 0, field: requestField as! FieldUpdate, nodePath: "sections/0/paragraphs/0");
_ = try api.updateField(request: updateRequest);