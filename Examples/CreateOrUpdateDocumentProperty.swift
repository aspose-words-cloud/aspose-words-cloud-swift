let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let remoteFileName = "Sample.docx";

let requestProperty = DocumentPropertyCreateOrUpdate();
requestProperty.setValue(value: "Imran Anwar");
let createRequest = CreateOrUpdateDocumentPropertyRequest(name: remoteFileName, propertyName: "AsposeAuthor", property: requestProperty, destFileName: remoteFileName);
_ = try api.createOrUpdateDocumentProperty(request: createRequest);