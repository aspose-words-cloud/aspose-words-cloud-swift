let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let remoteFileName = "Sample.docx";

let requestProtectionRequest = ProtectionRequest();
requestProtectionRequest.setPassword(password: "123");
requestProtectionRequest.setProtectionType(protectionType: "ReadOnly");
let protectRequest = ProtectDocumentRequest(name: remoteFileName, protectionRequest: requestProtectionRequest, destFileName: remoteFileName);
_ = try api.protectDocument(request: protectRequest);