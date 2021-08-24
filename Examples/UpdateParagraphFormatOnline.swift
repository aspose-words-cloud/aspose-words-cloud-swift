let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let requestDocument = InputStream(url: URL(string: "Sample.docx"))!;
let requestParagraphFormatDto = ParagraphFormatUpdate()
  .setAlignment(alignment: ParagraphFormatUpdate.Alignment._right);
let updateRequest = UpdateParagraphFormatOnlineRequest(document: requestDocument, paragraphFormatDto: requestParagraphFormatDto as! ParagraphFormatUpdate, index: 0);
_ = try api.updateParagraphFormatOnline(request: updateRequest);