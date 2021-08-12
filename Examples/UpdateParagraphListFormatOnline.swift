let currentDir = ...
let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let requestListFormatDto = ListFormatUpdate();
requestListFormatDto.setListId(listId: 2);
let updateRequest = UpdateParagraphListFormatOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("Sample.doc", isDirectory: false))!, listFormatDto: requestListFormatDto, index: 0);
_ = try api.updateParagraphListFormatOnline(request: updateRequest);