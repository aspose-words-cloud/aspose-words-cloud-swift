let currentDir = ...
let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let requestField = FieldUpdate();
requestField.setFieldCode(fieldCode: "{ NUMPAGES }");
let updateRequest = UpdateFieldOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("/GetField.docx", isDirectory: false))!, field: requestField, index: 0, nodePath: "sections/0/paragraphs/0");
_ = try api.updateFieldOnline(request: updateRequest);