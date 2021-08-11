let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let resetRequest = ResetCacheRequest();
_ = try api.resetCache(request: resetRequest);