let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let requestFontDto = Font()
  .setBold(bold: true);
let updateRequest = UpdateRunFontRequest(name: "Sample.docx", paragraphPath: "paragraphs/0", index: 0, fontDto: requestFontDto);
_ = try api.updateRunFont(request: updateRequest);