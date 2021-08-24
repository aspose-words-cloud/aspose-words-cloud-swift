let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let requestListFormatDto = ListFormatUpdate()
  .setListId(listId: 2);
let updateRequest = UpdateParagraphListFormatRequest(name: "Sample.docx", index: 0, listFormatDto: requestListFormatDto);
_ = try api.updateParagraphListFormat(request: updateRequest);