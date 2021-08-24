let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let requestDocument = InputStream(url: URL(string: "Sample.docx"))!;
let requestFontDto = Font()
  .setBold(bold: true);
let updateRequest = UpdateRunFontOnlineRequest(document: requestDocument, paragraphPath: "paragraphs/0", fontDto: requestFontDto, index: 0);
_ = try api.updateRunFontOnline(request: updateRequest);