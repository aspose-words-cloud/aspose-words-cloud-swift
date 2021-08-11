let currentDir = ...
let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let mailMergeRequest = ExecuteMailMergeOnlineRequest(template: InputStream(url: currentDir!.appendingPathComponent("TestExecuteTemplate.doc", isDirectory: false))!, data: InputStream(url: currentDir!.appendingPathComponent("TestExecuteTemplateData.txt", isDirectory: false))!);
_ = try api.executeMailMergeOnline(request: mailMergeRequest);