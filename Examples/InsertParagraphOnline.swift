let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let requestDocument = InputStream(url: URL(string: "Sample.docx"))!;
let requestParagraph = ParagraphInsert()
  .setText(text: "This is a new paragraph for your document");
let insertRequest = InsertParagraphOnlineRequest(document: requestDocument, paragraph: requestParagraph, nodePath: "sections/0");
_ = try api.insertParagraphOnline(request: insertRequest);