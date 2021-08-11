let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let remoteFileName = "Sample.docx";

let deleteRequest = DeleteCustomXmlPartsRequest(name: remoteFileName, destFileName: remoteFileName);
_ = try api.deleteCustomXmlParts(request: deleteRequest);