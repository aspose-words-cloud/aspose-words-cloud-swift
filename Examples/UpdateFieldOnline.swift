let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let requestDocument = InputStream(url: URL(string: "Sample.docx"))!;
let requestField = FieldUpdate()
  .setFieldCode(fieldCode: "{ NUMPAGES }");
let updateRequest = UpdateFieldOnlineRequest(document: requestDocument, field: requestField as! FieldUpdate, index: 0, nodePath: "sections/0/paragraphs/0");
_ = try api.updateFieldOnline(request: updateRequest);