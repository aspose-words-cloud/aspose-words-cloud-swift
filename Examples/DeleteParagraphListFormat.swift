let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let deleteRequest = DeleteParagraphListFormatRequest(name: "Sample.docx", index: 0);
_ = try api.deleteParagraphListFormat(request: deleteRequest);