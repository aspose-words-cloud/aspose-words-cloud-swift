let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let removeRequest = RemoveRangeRequest(name: "Sample.docx", rangeStartIdentifier: "id0.0.0", rangeEndIdentifier: "id0.0.1");
_ = try api.removeRange(request: removeRequest);