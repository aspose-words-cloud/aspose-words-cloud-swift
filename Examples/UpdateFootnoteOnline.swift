let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let requestDocument = InputStream(url: URL(string: "Sample.doc"))!;
let requestFootnoteDto = FootnoteUpdate()
  .setText(text: "new text is here");
let updateRequest = UpdateFootnoteOnlineRequest(document: requestDocument, footnoteDto: requestFootnoteDto as! FootnoteUpdate, index: 0);
_ = try api.updateFootnoteOnline(request: updateRequest);