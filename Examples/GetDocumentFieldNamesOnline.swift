let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let requestTemplate = InputStream(url: URL(string: "Sample.docx"))!;
let request = GetDocumentFieldNamesOnlineRequest(template: requestTemplate, useNonMergeFields: true);
_ = try api.getDocumentFieldNamesOnline(request: request);