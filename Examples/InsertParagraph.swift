let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let requestParagraph = ParagraphInsert();
requestParagraph.setText(text: "This is a new paragraph for your document");
let insertRequest = InsertParagraphRequest(name: "Sample.docx", paragraph: requestParagraph);
_ = try api.insertParagraph(request: insertRequest);