let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let requestTemplate = InputStream(url: URL(string: "TestExecuteTemplate.doc"))!;
let requestData = InputStream(url: URL(string: "TestExecuteTemplateData.txt"))!;
let mailMergeRequest = ExecuteMailMergeOnlineRequest(template: requestTemplate, data: requestData);
_ = try api.executeMailMergeOnline(request: mailMergeRequest);