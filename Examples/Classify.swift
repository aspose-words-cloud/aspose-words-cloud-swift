let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let classifyRequest = ClassifyRequest(text: "Try text classification", bestClassesCount: "3");
_ = try api.classify(request: classifyRequest);