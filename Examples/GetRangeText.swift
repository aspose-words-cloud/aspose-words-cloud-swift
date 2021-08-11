let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let request = GetRangeTextRequest(name: "Sample.docx", rangeStartIdentifier: "id0.0.0", rangeEndIdentifier: "id0.0.1");
_ = try api.getRangeText(request: request);