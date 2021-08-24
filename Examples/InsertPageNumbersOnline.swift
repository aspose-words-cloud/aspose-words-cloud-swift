let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let requestDocument = InputStream(url: URL(string: "Common/Sample.docx"))!;
let requestPageNumber = PageNumber()
  .setAlignment(alignment: "center")
  .setFormat(format: "{PAGE} of {NUMPAGES}");
let insertRequest = InsertPageNumbersOnlineRequest(document: requestDocument, pageNumber: requestPageNumber);
_ = try api.insertPageNumbersOnline(request: insertRequest);