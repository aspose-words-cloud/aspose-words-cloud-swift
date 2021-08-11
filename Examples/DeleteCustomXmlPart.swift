let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let remoteFileName = "Sample.docx";

let deleteRequest = DeleteCustomXmlPartRequest(name: remoteFileName, customXmlPartIndex: 0, destFileName: remoteFileName);
_ = try api.deleteCustomXmlPart(request: deleteRequest);