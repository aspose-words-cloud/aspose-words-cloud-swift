let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let renderRequest = RenderTableRequest(name: "Sample.docx", format: "png", index: 0);
_ = try api.renderTable(request: renderRequest);