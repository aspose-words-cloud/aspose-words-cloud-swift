let currentDir = ...
let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let requestParagraph = ParagraphInsert();
requestParagraph.setText(text: "This is a new paragraph for your document");
let insertRequest = InsertParagraphOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!, paragraph: requestParagraph, nodePath: "sections/0");
_ = try api.insertParagraphOnline(request: insertRequest);