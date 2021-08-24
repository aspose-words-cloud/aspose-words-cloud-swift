let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let requestFootnoteDto = FootnoteInsert()
  .setFootnoteType(footnoteType: FootnoteInsert.FootnoteType.endnote)
  .setText(text: "test endnote");
let insertRequest = InsertFootnoteRequest(name: "Sample.docx", footnoteDto: requestFootnoteDto as! FootnoteInsert);
_ = try api.insertFootnote(request: insertRequest);