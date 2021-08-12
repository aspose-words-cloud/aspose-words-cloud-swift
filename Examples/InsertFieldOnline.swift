let currentDir = ...
let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let requestField = FieldInsert();
requestField.setFieldCode(fieldCode: "{ NUMPAGES }");
let insertRequest = InsertFieldOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!, field: requestField, nodePath: "sections/0/paragraphs/0");
_ = try api.insertFieldOnline(request: insertRequest);