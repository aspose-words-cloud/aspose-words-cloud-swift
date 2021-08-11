let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let remoteFileName = "Sample.docx";

let deleteRequest = DeleteFormFieldRequest(name: remoteFileName, index: 0, destFileName: remoteFileName);
_ = try api.deleteFormField(request: deleteRequest);