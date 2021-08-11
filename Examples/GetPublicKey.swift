let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let request = GetPublicKeyRequest();
_ = try api.getPublicKey(request: request);