let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let remoteFileName = "Sample.docx";

let deleteRequest = DeleteDocumentPropertyRequest(name: remoteFileName, propertyName: "testProp", destFileName: remoteFileName);
_ = try api.deleteDocumentProperty(request: deleteRequest);