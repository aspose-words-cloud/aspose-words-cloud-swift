let currentDir = ...
let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let requestParagraphFormatDto = ParagraphFormatUpdate();
requestParagraphFormatDto.setAlignment(alignment: ParagraphFormatUpdate.Alignment._right);
let updateRequest = UpdateParagraphFormatOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!, paragraphFormatDto: requestParagraphFormatDto, index: 0, nodePath: "");
_ = try api.updateParagraphFormatOnline(request: updateRequest);