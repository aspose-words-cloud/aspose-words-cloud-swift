let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let request = GetAvailableFontsRequest();
_ = try api.getAvailableFonts(request: request);