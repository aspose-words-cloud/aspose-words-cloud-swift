let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let requestParagraphFormatDto = ParagraphFormatUpdate();
requestParagraphFormatDto.setAlignment(alignment: ParagraphFormatUpdate.Alignment._right);
let updateRequest = UpdateParagraphFormatRequest(name: "Sample.docx", index: 0, paragraphFormatDto: requestParagraphFormatDto);
_ = try api.updateParagraphFormat(request: updateRequest);