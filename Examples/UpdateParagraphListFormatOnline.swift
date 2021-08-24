let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let requestDocument = InputStream(url: URL(string: "Sample.doc"))!;
let requestListFormatDto = ListFormatUpdate()
  .setListId(listId: 2);
let updateRequest = UpdateParagraphListFormatOnlineRequest(document: requestDocument, listFormatDto: requestListFormatDto, index: 0);
_ = try api.updateParagraphListFormatOnline(request: updateRequest);