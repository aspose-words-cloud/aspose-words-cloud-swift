let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let mailMergeRequest = ExecuteMailMergeRequest(name: "Sample.docx", data: "TestExecuteTemplateData.txt");
_ = try api.executeMailMerge(request: mailMergeRequest);