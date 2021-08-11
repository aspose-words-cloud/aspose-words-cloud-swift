let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let request = GetFootnotesRequest(name: "Sample.docx");
_ = try api.getFootnotes(request: request);