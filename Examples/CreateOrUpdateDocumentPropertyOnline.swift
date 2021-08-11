let currentDir = ...
let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let requestProperty = DocumentPropertyCreateOrUpdate();
requestProperty.setValue(value: "Imran Anwar");
let createRequest = CreateOrUpdateDocumentPropertyOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!, propertyName: "AsposeAuthor", property: requestProperty);
_ = try api.createOrUpdateDocumentPropertyOnline(request: createRequest);