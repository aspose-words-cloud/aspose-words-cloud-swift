let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let remoteFileName = "Sample.docx";

let mailMergeRequest = ExecuteMailMergeRequest(name: remoteFileName, data: "TestExecuteTemplateData.txt", destFileName: remoteFileName);
_ = try api.executeMailMerge(request: mailMergeRequest);