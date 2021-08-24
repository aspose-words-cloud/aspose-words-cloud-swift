let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let requestDocument = InputStream(url: URL(string: "Sample.doc"))!;
let requestFootnoteDto = FootnoteInsert()
  .setFootnoteType(footnoteType: FootnoteInsert.FootnoteType.endnote)
  .setText(text: "test endnote");
let insertRequest = InsertFootnoteOnlineRequest(document: requestDocument, footnoteDto: requestFootnoteDto as! FootnoteInsert);
_ = try api.insertFootnoteOnline(request: insertRequest);